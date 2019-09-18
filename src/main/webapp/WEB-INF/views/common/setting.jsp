<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 

<!-- resources PATH-->
<c:set var="resource"     value="/smart/resources"/>
<c:set var="resourceBoot" value="/smart/resources/bootstrap"/> <!-- bootstrap resource 파일 경로 -->
<c:set var="resourceImg"  value="/smart/resources/images"/>    <!-- 이미지 경로 -->

<!-- URI PATH -->
<c:set var="path"   value="/smart"/>       <!-- root url -->
<c:set var="path_a" value="/smart/admin"/> <!-- 관리자 url -->
<c:set var="path_r_mng" value="/smart/bd_office"/>   <!-- 매니저 임대 url -->

<!-- jQuery 스크립트  -->
<script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.min.js"></script> 
