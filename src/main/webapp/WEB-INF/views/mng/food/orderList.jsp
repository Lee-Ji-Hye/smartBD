<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../common/setting.jsp" %>
<%@ include file="../../common/header.jsp" %> 

<!-- Bill start -->
	<div class="row justify-content-md-between mb-7">
	     <div class="col-md-5 col-lg-4">
	       <h3 class="h5">Bill to:</h3>
	       <span class="d-block">Sara Williams</span>
	       <address class="text-secondary mb-0">
	         280 Suzanne Throughway, Breannabury, OR 45801, United States
	       </address>
	     </div>
	
	     <div class="col-md-5 col-lg-4 mt-6">
	       <dl class="row mb-0">
	         <dt class="col-5 col-md-6 font-weight-normal text-secondary">Invoice date:</dt>
	         <dd class="col-7 col-md-6 font-weight-medium">03/10/2018</dd>
	       </dl>
	       <dl class="row mb-0">
	         <dt class="col-5 col-md-6 font-weight-normal text-secondary">Due date:</dt>
	         <dd class="col-7 col-md-6 font-weight-medium">03/11/2018</dd>
	       </dl>
	     </div>
	 </div>
<!-- Bill End -->
<!-- Table start -->
	<table class="table table-heighlighted font-size-1 mb-9">
		  <thead>
		    <tr class="text-uppercase text-secondary">
		      <th scope="col" class="font-weight-medium">Description</th>
		      <th scope="col" class="font-weight-medium">Hour</th>
		      <th scope="col" class="font-weight-medium">Quantity</th>
		      <th scope="col" class="font-weight-medium text-right">Price</th>
		    </tr>
		  </thead>
		  <tbody>
		    <tr>
		      <th scope="row" class="font-weight-normal">Design UX and UI</th>
		      <td>5</td>
		      <td>1</td>
		      <td class="text-right">$500</td>
		    </tr>
		    <tr>
		      <th scope="row" class="font-weight-normal">Web project</th>
		      <td>24</td>
		      <td>1</td>
		      <td class="text-right">$1250</td>
		    </tr>
		    <tr>
		      <th scope="row" class="font-weight-normal">SEO</th>
		      <td>6</td>
		      <td>1</td>
		      <td class="text-right">$2000</td>
		    </tr>
		  </tbody>
		  <tfoot>
		    <tr class="h6">
		      <td scope="row">Total</td>
		      <td colspan="3" class="text-right">$3,750</td>
		    </tr>
		  </tfoot>
	</table>
<!-- Table End -->
<!-- Contants start -->
	<div class="row justify-content-lg-between">
      <div class="col-md-8 col-lg-7 order-md-2 mb-5 mb-md-0">
        <h4 class="h6">Thank you!</h4>
        <p class="font-size-1">If you have any questions concerning this invoice, use the following contact information:</p>

        <span class="d-block">
          <small class="font-weight-medium">email:</small>
          <small class="text-muted">support@htmlstream.com</small>
        </span>
        <small class="font-weight-medium">telephone:</small>
        <small class="text-muted">+1 (062) 109-9222</small>
      </div>

      <div class="col-md-4 col-lg-3 order-md-1 align-self-end">
        <p class="small text-muted mb-0">© 2019 Htmlstream.</p>
      </div>
    </div>
<!-- Contants End -->
	<div class="text-right mt-5">
       <button type="button" class="btn btn-primary btn-sm-wide transition-3d-hover" onclick="window.print();return false;">
         <span class="fas fa-print mr-2"></span>
         Print
       </button>
     </div>