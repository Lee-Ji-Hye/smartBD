<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../common/setting.jsp" %>
<%@ include file="../../common/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="bg-light">
      <div class="container space-2">
        <form id="changePasswordForm" class="js-validate" novalidate="novalidate">
          <!-- Input -->
          <div class="js-form-message mb-6">
            <label class="form-label">
              	메뉴명
            </label>

            <div class="form-group">
              <input type="text" class="form-control" name="currentPassword" placeholder="Enter your current password" aria-label="Enter your current password" required="" data-msg="Password does not match." data-error-class="u-has-error" data-success-class="u-has-success">
            </div>
          </div>
          <!-- End Input -->

          <!-- Input -->
          <div class="mb-6">
            <div class="js-form-message">
              <label class="form-label">
                	카테고리
              </label>

              <div class="form-group">
                <input id="newPassword" type="text" class="form-control" name="newPassword" placeholder="Enter your password" aria-label="Enter your password" required="" data-msg="Please enter your password." data-error-class="u-has-error" data-success-class="u-has-success" data-pwstrength-container="#changePasswordForm" data-pwstrength-progress="#passwordStrengthProgress" data-pwstrength-verdict="#passwordStrengthVerdict" data-pwstrength-progress-extra-classes="bg-white height-4">
              </div>
            </div>
          </div>
          <!-- End Input -->

          <!-- Input -->
          <div class="js-form-message mb-6">
            <label class="form-label">
             	 메뉴 분류
            </label>

            <div class="form-group">
              <input type="text" class="form-control" name="confirmNewPassword" placeholder="Confirm your password" aria-label="Confirm your password" required="" data-msg="Password does not match the confirm password." data-error-class="u-has-error" data-success-class="u-has-success">
            </div>
          </div>
          <!-- End Input -->
          
          <!-- Input -->
          <div class="js-form-message mb-6">
            <label class="form-label">
             	 가격
            </label>

            <div class="form-group">
              <input type="text" class="form-control" name="confirmNewPassword" placeholder="Confirm your password" aria-label="Confirm your password" required="" data-msg="Password does not match the confirm password." data-error-class="u-has-error" data-success-class="u-has-success">
            </div>
          </div>
          <!-- End Input -->
          
          <!-- Input -->
          <div class="js-form-message mb-6">
            <label class="form-label">
             	 메뉴설명
            </label>

            <div class="form-group">
              <div class="form-control" name="confirmNewPassword"  aria-label="Confirm your password" data-msg="Password does not match the confirm password." data-error-class="u-has-error" data-success-class="u-has-success">
           		<textarea rows="50" cols="100">
           		</textarea>
			</div>
          </div>
          <!-- End Input -->

        
            <!-- Buttons -->
            <button type="submit" class="btn btn-sm btn-primary transition-3d-hover mr-1">등록</button>
            <button type="submit" class="btn btn-sm btn-soft-secondary transition-3d-hover">수정</button>
            <!-- End Buttons -->
          </div>
        </form>
      </div>
    </div>
</body>
</html>