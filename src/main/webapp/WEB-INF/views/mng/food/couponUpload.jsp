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
              Current password
            </label>

            <div class="form-group">
              <input type="password" class="form-control" name="currentPassword" placeholder="Enter your current password" aria-label="Enter your current password" required="" data-msg="Password does not match." data-error-class="u-has-error" data-success-class="u-has-success">
            </div>
          </div>
          <!-- End Input -->

          <!-- Input -->
          <div class="mb-6">
            <div class="js-form-message">
              <label class="form-label">
                New password
              </label>

              <div class="form-group">
                <input id="newPassword" type="password" class="form-control" name="newPassword" placeholder="Enter your password" aria-label="Enter your password" required="" data-msg="Please enter your password." data-error-class="u-has-error" data-success-class="u-has-success" data-pwstrength-container="#changePasswordForm" data-pwstrength-progress="#passwordStrengthProgress" data-pwstrength-verdict="#passwordStrengthVerdict" data-pwstrength-progress-extra-classes="bg-white height-4">
              </div>
            </div>
          </div>
          <!-- End Input -->

          <!-- Input -->
          <div class="js-form-message mb-6">
            <label class="form-label">
              Confirm password
            </label>

            <div class="form-group">
              <input type="password" class="form-control" name="confirmNewPassword" placeholder="Confirm your password" aria-label="Confirm your password" required="" data-msg="Password does not match the confirm password." data-error-class="u-has-error" data-success-class="u-has-success">
            </div>
          </div>
          <!-- End Input -->

          <div class="w-lg-50">
            <!-- Password Strength -->
            <div class="mb-6">
              <div class="d-flex justify-content-between mb-2">
                <h3 class="h6">Password strength:</h3>
                <span id="passwordStrengthVerdict"><span class="password-verdict"></span></span>
              </div>

              <div id="passwordStrengthProgress" class="mb-2"><div class="progress bg-white height-4"><div class="progress-bar bg-danger" style="width: 1%;"></div></div></div>

              <p class="small">New password must be 8-20 characters long. Tip: Make it hard to guess (wrong: password123).</p>
            </div>
            <!-- End Password Strength -->

            <!-- Buttons -->
            <button type="submit" class="btn btn-sm btn-primary transition-3d-hover mr-1">Save Password</button>
            <button type="submit" class="btn btn-sm btn-soft-secondary transition-3d-hover">Cancel</button>
            <!-- End Buttons -->
          </div>
        </form>
      </div>
    </div>
</body>
</html>