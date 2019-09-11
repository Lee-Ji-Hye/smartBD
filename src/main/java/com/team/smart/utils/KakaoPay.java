package com.team.smart.utils;

import java.net.URI;
import java.net.URISyntaxException;
import java.util.Map;


import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.client.RestClientException;
import org.springframework.web.client.RestTemplate;

import com.team.smart.vo.KakaoCancleRequestVO;
import com.team.smart.vo.KakaoPayCancleResponseVO;

import lombok.extern.java.Log;

/**
 *
 * @author jihye
 *
 */
@Log
public class KakaoPay {
   
   private final String KAKAO_URL = "https://kapi.kakao.com";
   private final String ADMIN_KEY = "88a3b5fe88dd9bb524787db04e79159c";
   private final String CID = "TC0ONETIME";
   
   //통신 환경 설정
   private RestTemplate network;
   private HttpHeaders headers;
   
   public KakaoPay() {
      //통신 객체 생성
      network = new RestTemplate();
      
   }
   
   private void headerSetting() {
      if(headers == null) {
         headers = new HttpHeaders();
         headers.add("Authorization", "KakaoAK " + ADMIN_KEY); //우리가 추가로
           headers.add("Accept", MediaType.APPLICATION_JSON_UTF8_VALUE);
           headers.add("Content-Type", MediaType.APPLICATION_FORM_URLENCODED_VALUE + ";charset=UTF-8");
      }
   }
   

  

    public KakaoPayCancleResponseVO kakaoPayRefund(KakaoCancleRequestVO order) {

        // 서버로 요청할 Header
        headerSetting();

        // 서버로 요청할 Body
        MultiValueMap<String, String> params = new LinkedMultiValueMap<String, String>();
        params.add("cid", CID);
        params.add("cid_secret", order.getCid_secret());
        params.add("tid", order.getTid());
        params.add("cancel_amount", String.valueOf(order.getCancel_amount()));
        params.add("cancel_tax_free_amount", String.valueOf(order.getCancel_tax_free_amount()));
        params.add("cancel_vat_amount", String.valueOf(order.getCancel_vat_amount()));
        params.add("cancel_available_amount", String.valueOf(order.getCancel_available_amount()));
        params.add("payload", order.getPayload());

        System.out.println("kakaoPayRefund : " + params);

        HttpEntity<MultiValueMap<String, String>> body = new HttpEntity<MultiValueMap<String, String>>(params, headers);

        try {

            KakaoPayCancleResponseVO vo= network.postForObject(new URI(KAKAO_URL + "/v1/payment/cancel"), body, KakaoPayCancleResponseVO.class);
            log.info("sssss~~~~~~~~~~~~~" + vo);

            return vo;

        } catch (RestClientException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (URISyntaxException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        return null;
    }

}