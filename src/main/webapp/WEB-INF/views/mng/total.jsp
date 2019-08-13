<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../common/setting.jsp" %>
<%@ include file="../common/headerAdmin.jsp" %> 
<!DOCTYPE html>
<html>
<meta charset="UTF-8">
<title>Insert title here</title>
<body>
<div style="height:100px;"></div>
<div class="card-deck d-block d-lg-flex card-lg-gutters-3">
          <!-- Stats -->
          <div class="card mb-7 mb-lg-0" style="text-align: center;
    margin-left: 450px ">
            <div class="card-body pt-4 pb-5 px-5 mb-3 mb-md-0" style="width: 300px;">
              <!-- Title & Settings -->
              <div class="d-flex justify-content-between align-items-center">
                <h4 class="h6 mb-0">차량 대수 통계</h4>
	
                <!-- Settings Dropdown -->
                <div class="position-relative">
                  <a id="depositSettingsDropdownInvoker" class="btn btn-sm btn-icon btn-soft-secondary btn-bg-transparent" href="javascript:;" role="button" aria-controls="depositSettingsDropdown" aria-haspopup="true" aria-expanded="false" data-unfold-event="click" data-unfold-target="#depositSettingsDropdown" data-unfold-type="css-animation" data-unfold-duration="300" data-unfold-delay="300" data-unfold-hide-on-scroll="true" data-unfold-animation-in="slideInUp" data-unfold-animation-out="fadeOut">
                    <span class="fas fa-ellipsis-h btn-icon__inner"></span>
                  </a>

                  <div id="depositSettingsDropdown" class="dropdown-menu dropdown-unfold dropdown-menu-right u-unfold--css-animation u-unfold--hidden fadeOut" aria-labelledby="depositSettingsDropdownInvoker" style="min-width: 190px; animation-duration: 300ms; right: 0px;">
                    <a class="dropdown-item" href="#">
                      <small class="fas fa-cogs dropdown-item-icon"></small>
                      Settings
                    </a>
                    <a class="dropdown-item" href="#">
                      <small class="fas fa-cloud-download-alt dropdown-item-icon"></small>
                      Download
                    </a>
                    <a class="dropdown-item" href="#">
                      <small class="fas fa-archive dropdown-item-icon"></small>
                      Archive
                    </a>
                  </div>
                </div>
                <!-- End Settings Dropdown -->
              </div>
              <!-- End Title & Settings -->

              <hr class="mt-3 mb-4">

              <!-- Deposit Info -->
              <div class="row mb-5">
                <div class="col-sm-6 mb-4 mb-sm-0">
                  <span class="align-top">$</span>
                  <span class="font-size-3 font-weight-medium text-lh-sm">50,102</span>
                  <div class="mb-1">
                    <span class="text-secondary font-size-1">Deposit:</span>
                    <span class="font-weight-medium font-size-1">$1,050</span>
                  </div>
                  <div>
                    <span class="text-primary font-weight-medium text-lh-sm">
                      <span class="fas fa-arrow-up text-success small"></span>
                      +2.1% ($122)
                    </span>
                  </div>
                </div>

                <div class="col-sm-6 align-self-end">
                  <!-- Pie Circle -->
                  <div class="js-pie text-center" data-circles-text-class="content-centered-y" data-circles-value="54" data-circles-max-value="100" data-circles-bg-color="rgba(0, 201, 167, 0.1)" data-circles-fg-color="#00c9a7" data-circles-radius="50" data-circles-stroke-width="4" data-circles-additional-text="%" data-circles-duration="2000" data-circles-scroll-animate="true" data-circles-color="#00c9a7" data-circles-font-size="24" id="hs-pie-1"><div class="u-circles-wrap" style="position: relative; display: inline-block;"><svg xmlns="http://www.w3.org/2000/svg" width="100" height="100"><path fill="transparent" stroke="rgba(0, 201, 167, 0.1)" stroke-width="4" d="M 49.990223686222635 2.000000995586582 A 48 48 0 1 1 49.93332896297256 2.0000463023887676 Z" class="u-circles-maxValueStroke"></path><path fill="transparent" stroke="#00c9a7" stroke-width="4" d="M 49.990223686222635 2.000000995586582 A 48 48 0 1 1 38.11513781023752 96.5053765787393 " class="u-circles-valueStroke"></path></svg><div class="content-centered-y" style="position: absolute; text-align: center; width: 100%; font-size: 24px; height: auto; line-height: normal; color: rgb(0, 201, 167);">54%</div></div></div>
                  <!-- End Pie Circle -->
                </div>
              </div>

              <button type="button" class="btn btn-block btn-sm btn-primary transition-3d-hover">Add Funds</button>
              <!-- End Deposit Info -->
            </div>

            <div class="card-footer p-5">
              <!-- Progress Info -->
              <div class="row align-items-center">
                <div class="col-6 u-ver-divider">
                  <label class="small text-muted">Goal:</label>
                  <small class="font-weight-medium">$100k</small>
                  <div class="js-hr-progress progress" style="height: 4px;">
                    <div class="js-hr-progress-bar progress-bar" role="progressbar" style="width: 75%;" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100"></div>
                  </div>
                </div>

                <div class="col-6">
                  <label class="small text-muted">Duration:</label>
                  <small class="font-weight-medium">6 months</small>
                  <div class="js-hr-progress progress" style="height: 4px;">
                    <div class="js-hr-progress-bar progress-bar bg-success" role="progressbar" style="width: 40%;" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100"></div>
                  </div>
                </div>
              </div>
              <!-- End Progress Info -->
            </div>
          </div>
          <!-- End Stats -->

          <!-- Stats -->
          <div class="card mb-7 mb-lg-0">
            <div class="card-body pt-4 pb-5 px-5 mb-3 mb-md-0"  style="width: 300px;">
              <!-- Title & Settings -->
              <div class="d-flex justify-content-between align-items-center">
                <h4 class="h6 mb-0">매출통계</h4>

                <!-- Settings Dropdown -->
                <div class="position-relative">
                  <a id="balanceSettingsDropdownInvoker" class="btn btn-sm btn-icon btn-soft-secondary btn-bg-transparent" href="javascript:;" role="button" aria-controls="balanceSettingsDropdown" aria-haspopup="true" aria-expanded="false" data-unfold-event="click" data-unfold-target="#balanceSettingsDropdown" data-unfold-type="css-animation" data-unfold-duration="300" data-unfold-delay="300" data-unfold-hide-on-scroll="true" data-unfold-animation-in="slideInUp" data-unfold-animation-out="fadeOut">
                    <span class="fas fa-ellipsis-h btn-icon__inner"></span>
                  </a>

                  <div id="balanceSettingsDropdown" class="dropdown-menu dropdown-unfold dropdown-menu-right u-unfold--css-animation u-unfold--hidden fadeOut" aria-labelledby="balanceSettingsDropdownInvoker" style="min-width: 190px; animation-duration: 300ms; right: 0px;">
                    <a class="dropdown-item" href="#">
                      <small class="fas fa-cogs dropdown-item-icon"></small>
                      Settings
                    </a>
                    <a class="dropdown-item" href="#">
                      <small class="fas fa-cloud-download-alt dropdown-item-icon"></small>
                      Download
                    </a>
                    <a class="dropdown-item" href="#">
                      <small class="fas fa-archive dropdown-item-icon"></small>
                      Archive
                    </a>
                  </div>
                </div>
                <!-- End Settings Dropdown -->
              </div>
              <!-- End Title & Settings -->

              <hr class="mt-3 mb-4">

              <!-- Balance Info -->
              <div class="row align-items-center mb-4">
                <div class="col-6 u-ver-divider">
                  <label class="d-block small text-muted mb-0">Available:</label>
                  <span class="font-weight-medium">$45.99</span>
                </div>

                <div class="col-6">
                  <label class="d-block small text-muted mb-0">Pending:</label>
                  <span class="font-weight-medium">$0.00</span>
                </div>
              </div>

              <div class="row">
                <div class="col-3">
                  <div class="js-vr-progress progress-vertical rounded mb-2">
                    <div class="js-vr-progress-bar bg-primary rounded-bottom" role="progressbar" style="height: 45%;" aria-valuenow="45" aria-valuemin="0" aria-valuemax="100"></div>
                  </div>
                  <div class="text-center">
                    <h4 class="small mb-0">May</h4>
                  </div>
                </div>
                <div class="col-3">
                  <div class="js-vr-progress progress-vertical rounded mb-2">
                    <div class="js-vr-progress-bar bg-primary rounded-bottom" role="progressbar" style="height: 80%;" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100"></div>
                  </div>
                  <div class="text-center">
                    <h4 class="small mb-0">Jun</h4>
                  </div>
                </div>
                <div class="col-3">
                  <div class="js-vr-progress progress-vertical rounded mb-2">
                    <div class="js-vr-progress-bar bg-primary rounded-bottom" role="progressbar" style="height: 23%;" aria-valuenow="23" aria-valuemin="0" aria-valuemax="100"></div>
                  </div>
                  <div class="text-center">
                    <h4 class="small mb-0">Jul</h4>
                  </div>
                </div>
                <div class="col-3">
                  <div class="js-vr-progress progress-vertical rounded mb-2">
                    <div class="js-vr-progress-bar bg-primary rounded-bottom" role="progressbar" style="height: 39%;" aria-valuenow="39" aria-valuemin="0" aria-valuemax="100"></div>
                  </div>
                  <div class="text-center">
                    <h4 class="small mb-0">Aug</h4>
                  </div>
                </div>
              </div>
              <!-- End Balance Info -->
            </div>
          </div>
          <!-- End Stats -->

          <!-- Indicator -->
          <div class="card">
            <div class="card-body pt-4 pb-5 px-5 mb-3 mb-md-0"  style="width: 300px;">
              <!-- Title & Settings -->
              <div class="d-flex justify-content-between align-items-center">
                <h4 class="h6 mb-0">Activity</h4>

                <!-- Settings Dropdown -->
                <div class="position-relative">
                  <a id="activitySettingsDropdownInvoker" class="btn btn-sm btn-icon btn-soft-secondary btn-bg-transparent" href="javascript:;" role="button" aria-controls="activitySettingsDropdown" aria-haspopup="true" aria-expanded="false" data-unfold-event="click" data-unfold-target="#activitySettingsDropdown" data-unfold-type="css-animation" data-unfold-duration="300" data-unfold-delay="300" data-unfold-hide-on-scroll="true" data-unfold-animation-in="slideInUp" data-unfold-animation-out="fadeOut">
                    <span class="fas fa-ellipsis-h btn-icon__inner"></span>
                  </a>

                  <div id="activitySettingsDropdown" class="dropdown-menu dropdown-unfold dropdown-menu-right u-unfold--css-animation u-unfold--hidden fadeOut" aria-labelledby="activitySettingsDropdownInvoker" style="min-width: 190px; animation-duration: 300ms; right: 0px;">
                    <a class="dropdown-item" href="#">
                      <small class="fas fa-eye dropdown-item-icon"></small>
                      Mark as read
                    </a>
                    <a class="dropdown-item" href="#">
                      <small class="fas fa-eye-slash dropdown-item-icon"></small>
                      Mark as unread
                    </a>
                    <a class="dropdown-item" href="#">
                      <small class="fas fa-archive dropdown-item-icon"></small>
                      Archive
                    </a>
                  </div>
                </div>
                <!-- End Settings Dropdown -->
              </div>
              <!-- End Title & Settings -->

              <hr class="mt-3 mb-4">

              <div class="overflow-hidden">
                <div class="js-scrollbar pr-3 mCustomScrollbar _mCS_1 mCS-autoHide" style="max-height: 300px; position: relative; overflow: visible;"><div id="mCSB_1" class="mCustomScrollBox mCS-minimal-dark mCSB_vertical mCSB_outside" style="max-height: 300px;" tabindex="0"><div id="mCSB_1_container" class="mCSB_container" style="position: relative; top: 0px; left: 0px;" dir="ltr">
                  <!-- Activity Feed -->
                  <ul class="list-unstyled u-indicator-vertical-dashed">
                    <li class="media u-indicator-vertical-dashed-item">
                      <span class="btn btn-xs btn-icon btn-primary rounded-circle mr-3">
                        <span class="btn-icon__inner">A</span>
                      </span>
                      <div class="media-body">
                        <h5 class="font-size-1 mb-1">Amanta Owens</h5>
                        <p class="small mb-1">Added new task: <span class="font-weight-medium">Slack home page redesign</span></p>
                        <small class="d-block text-muted">30 min ago</small>
                      </div>
                    </li>

                    <li class="media u-indicator-vertical-dashed-item">
                      <span class="btn btn-xs btn-icon btn-success rounded-circle mr-3">
                        <span class="btn-icon__inner">S</span>
                      </span>
                      <div class="media-body">
                        <h5 class="font-size-1 mb-1">Sebastian Diaz</h5>
                        <p class="small mb-1">Added new task: <span class="font-weight-medium">Mapbox logo redesign</span></p>
                        <small class="d-block text-muted">44 min ago</small>
                      </div>
                    </li>

                    <li class="media u-indicator-vertical-dashed-item">
                      <span class="btn btn-xs btn-icon btn-warning rounded-circle mr-3">
                        <span class="btn-icon__inner text-white">F</span>
                      </span>
                      <div class="media-body">
                        <h5 class="font-size-1 mb-1">Eliza Donovan</h5>
                        <p class="small mb-1">Added new task: <span class="font-weight-medium">Spotify branding</span></p>
                        <small class="d-block text-muted">1 hour ago</small>
                      </div>
                    </li>

                    <li class="media u-indicator-vertical-dashed-item">
                      <span class="btn btn-xs btn-icon btn-primary rounded-circle mr-3">
                        <span class="btn-icon__inner">C</span>
                      </span>
                      <div class="media-body">
                        <h5 class="font-size-1 mb-1">Cler Lockhart</h5>
                        <p class="small mb-1">Added new task: <span class="font-weight-medium">Dropbox home page redesign</span></p>
                        <small class="d-block text-muted">15 hours ago</small>
                      </div>
                    </li>

                    <li class="media u-indicator-vertical-dashed-item">
                      <span class="btn btn-xs btn-icon btn-danger rounded-circle mr-3">
                        <span class="btn-icon__inner">J</span>
                      </span>
                      <div class="media-body">
                        <h5 class="font-size-1 mb-1">James Collins</h5>
                        <p class="small mb-1">Added new task: <span class="font-weight-medium">InVison branding</span></p>
                        <small class="d-block text-muted">1 day ago</small>
                      </div>
                    </li>
                  </ul>
                  <!-- End Activity Feed -->
                </div></div><div id="mCSB_1_scrollbar_vertical" class="mCSB_scrollTools mCSB_1_scrollbar mCS-minimal-dark mCSB_scrollTools_vertical" style="display: block;"><div class="mCSB_draggerContainer"><div id="mCSB_1_dragger_vertical" class="mCSB_dragger" style="position: absolute; min-height: 50px; display: block; height: 170px; max-height: 266px; top: 0px;"><div class="mCSB_dragger_bar" style="line-height: 50px;"></div></div><div class="mCSB_draggerRail"></div></div></div></div>
              </div>
            </div>
          </div>
          <!-- End Indicator -->
        </div>
<div style="height:100px;"></div>
 <%@ include file="../common/footer.jsp" %>                 
</body>
</html>