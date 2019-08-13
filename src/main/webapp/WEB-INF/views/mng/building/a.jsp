<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../common/setting.jsp" %>
<%@ include file="../../common/header.jsp"%>



  <!-- ========== MAIN CONTENT ========== -->
  <main id="content" role="main">
    <!-- Upload Form Section -->
    <div class="container space-2">
      <div class="w-lg-75 mx-lg-auto">
        <!-- Title -->
        <div class="text-center mb-9">
          <h1 class="h2 font-weight-medium">Real estate listing upload form</h1>
          <p class="mb-0">Please proofread your submission carefully before submitting.</p>
          <p>Submissions which exceed maximum word counts will be edited.</p>
        </div>
        <!-- End Title -->

        <form id="uploadForm" class="js-validate svg-preloader">
          <!-- Listing Agent Information -->
          <div class="mb-7">
            <!-- Title -->
            <div class="border-bottom pb-3 mb-5">
              <h2 class="h6 text-secondary mb-0">Listing agent information</h2>
            </div>
            <!-- End Title -->

            <div class="row">
              <div class="col-md-6 mb-3">
                <!-- Input -->
                <div class="form-group">
                  <div class="js-form-message js-focus-state">
                    <label class="form-label" for="listingAgentAgentName">Listing agent name</label>
                    <div class="input-group">
                      <div class="input-group-prepend">
                        <span class="input-group-text" id="listingAgentAgentNameLabel">
                          <span class="fas fa-user"></span>
                        </span>
                      </div>
                      <input type="text" class="form-control" name="agentName" id="listingAgentAgentName" placeholder="ListingAgent agent name" aria-label="ListingAgent agent name" aria-describedby="listingAgentAgentNameLabel" required
                             data-msg="Please enter a listing agent name."
                             data-error-class="u-has-error"
                             data-success-class="u-has-success">
                    </div>
                  </div>
                </div>
                <!-- End Input -->
              </div>

              <div class="col-md-6 mb-3">
                <!-- Input -->
                <div class="form-group">
                  <div class="js-form-message js-focus-state">
                    <label class="form-label" for="listingAgentPhoneNumber">Phone number</label>
                    <div class="input-group">
                      <div class="input-group-prepend">
                        <span class="input-group-text" id="listingAgentPhoneNumberLabel">
                          <span class="fas fa-phone"></span>
                        </span>
                      </div>
                      <input type="tel" class="form-control" name="phoneNumber" id="listingAgentPhoneNumber" placeholder="Phone number" aria-label="Phone number" aria-describedby="listingAgentPhoneNumberLabel" required
                             data-msg="Please enter a phone number."
                             data-error-class="u-has-error"
                             data-success-class="u-has-success">
                    </div>
                  </div>
                </div>
                <!-- End Input -->
              </div>
            </div>

            <div class="row">
              <div class="col-lg-6 mb-3">
                <!-- Input -->
                <div class="form-group">
                  <div class="js-focus-state">
                    <label class="form-label" for="listingAgentRealEstateAgency">Real estate agency</label>
                    <div class="input-group">
                      <div class="input-group-prepend">
                        <span class="input-group-text" id="listingAgentRealEstateAgencyLabel">
                          <span class="fas fa-briefcase"></span>
                        </span>
                      </div>
                      <input type="text" class="form-control" name="RealEstateAgency" id="listingAgentRealEstateAgency" placeholder="Real estate agency" aria-label="Real estate agency" aria-describedby="listingAgentRealEstateAgencyLabel">
                    </div>
                  </div>
                </div>
              </div>
              <!-- End Input -->

              <div class="col-lg-6 mb-3">
                <!-- Input -->
                <div class="form-group">
                  <div class="js-focus-state">
                    <label class="form-label" for="listingAgentWebsiteAddress">Website address</label>
                    <div class="input-group">
                      <div class="input-group-prepend">
                        <span class="input-group-text" id="listingAgentWebsiteAddressLabel">
                          <span class="fas fa-globe"></span>
                        </span>
                      </div>
                      <input type="text" class="form-control" name="websiteAddress" id="listingAgentWebsiteAddress" placeholder="Website address" aria-label="Website address" aria-describedby="listingAgentWebsiteAddressLabel">
                    </div>
                  </div>
                </div>
                <!-- End Input -->
              </div>
            </div>
          </div>
          <!-- End Listing Agent Information -->

          <!-- Type of Listing -->
          <div class="mb-10">
            <!-- Title -->
            <div class="border-bottom pb-3 mb-5">
              <h2 class="h6 text-secondary mb-0">Type of listing</h2>
            </div>
            <!-- End Title -->

            <!-- Radio Checkbox Group -->
            <div class="row mx-gutters-2">
              <div class="col-6 col-md-3 mb-3 mb-md-0">
                <div class="custom-control custom-radio custom-control-inline checkbox-outline text-center">
                  <input type="radio" id="typeOfListingRadio1" name="typeOfListingRadio1" class="custom-control-input checkbox-outline__input">
                  <label class="checkbox-outline__label rounded py-3 px-1 mb-0" for="typeOfListingRadio1">
                    <img class="js-svg-injector w-50 mb-3" src="../../assets/svg/flat-icons/small-house.svg" alt="SVG"
                         data-parent="#uploadForm">
                    <span class="d-block">House</span>
                  </label>
                </div>
              </div>
              <div class="col-6 col-md-3 mb-3 mb-md-0">
                <div class="custom-control custom-radio custom-control-inline checkbox-outline text-center">
                  <input type="radio" id="typeOfListingRadio2" name="typeOfListingRadio1" class="custom-control-input checkbox-outline__input" checked>
                  <label class="checkbox-outline__label rounded py-3 px-1 mb-0" for="typeOfListingRadio2">
                    <img class="js-svg-injector w-50 mb-3" src="../../assets/svg/flat-icons/flat-house.svg" alt="SVG"
                         data-parent="#uploadForm">
                    <span class="d-block">Flat</span>
                  </label>
                </div>
              </div>
              <div class="col-6 col-md-3">
                <div class="custom-control custom-radio custom-control-inline checkbox-outline text-center">
                  <input type="radio" id="typeOfListingRadio3" name="typeOfListingRadio1" class="custom-control-input checkbox-outline__input">
                  <label class="checkbox-outline__label rounded py-3 px-1 mb-0" for="typeOfListingRadio3">
                    <img class="js-svg-injector w-50 mb-3" src="../../assets/svg/flat-icons/multi-family-house.svg" alt="SVG"
                         data-parent="#uploadForm">
                    <span class="d-block">Multi-family</span>
                  </label>
                </div>
              </div>
              <div class="col-6 col-md-3">
                <div class="custom-control custom-radio custom-control-inline checkbox-outline text-center">
                  <input type="radio" id="typeOfListingRadio4" name="typeOfListingRadio1" class="custom-control-input checkbox-outline__input">
                  <label class="checkbox-outline__label rounded py-3 px-1 mb-0" for="typeOfListingRadio4">
                    <img class="js-svg-injector w-50 mb-3" src="../../assets/svg/flat-icons/farm-land.svg" alt="SVG"
                         data-parent="#uploadForm">
                    <span class="d-block">Farms/land</span>
                  </label>
                </div>
              </div>
            </div>
            <!-- End Radio Checkbox Group -->
          </div>
          <!-- End Type of Listing -->

          <!-- Listing Information -->
          <div class="mb-7">
            <!-- Title -->
            <div class="border-bottom pb-3 mb-5">
              <h2 class="h6 text-secondary mb-0">Listing information</h2>
            </div>
            <!-- End Title -->

            <!-- Input -->
            <div class="form-group mb-5">
              <div class="js-focus-state">
                <label class="form-label" for="listingPrice">Price</label>
                <div class="input-group">
                  <div class="input-group-prepend">
                    <span class="input-group-text" id="listingPriceLabel">
                      <span class="fas fa-dollar-sign"></span>
                    </span>
                  </div>
                  <input type="text" class="form-control" name="price" id="listingPrice" placeholder="Price" aria-label="Price" aria-describedby="listingPriceLabel">
                </div>
              </div>
            </div>
            <!-- End Input -->

            <div class="row">
              <div class="col-lg-6 mb-3">
                <!-- Input -->
                <div class="form-group">
                  <div class="js-focus-state">
                    <label class="form-label" for="listingAddress">Address</label>
                    <div class="input-group">
                      <div class="input-group-prepend">
                        <span class="input-group-text" id="listingAddressLabel">
                          <span class="fas fa-map-marker-alt"></span>
                        </span>
                      </div>
                      <input type="text" class="form-control" name="address" id="listingAddress" placeholder="Address" aria-label="Address" aria-describedby="listingAddressLabel">
                    </div>
                  </div>
                </div>
                <!-- End Input -->
              </div>

              <div class="col-lg-6 mb-3">
                <!-- Input -->
                <div class="form-group">
                  <div class="js-focus-state">
                    <label class="form-label" for="listingCityProvince">City, Province</label>
                    <div class="input-group">
                      <div class="input-group-prepend">
                        <span class="input-group-text" id="listingCityProvinceLabel">
                          <span class="fas fa-city"></span>
                        </span>
                      </div>
                      <input type="text" class="form-control" name="cityProvince" id="listingCityProvince" placeholder="City, Province" aria-label="City, Province" aria-describedby="listingCityProvinceLabel">
                    </div>
                  </div>
                </div>
                <!-- End Input -->
              </div>
            </div>

            <div class="row">
              <div class="col-lg-6 mb-3">
                <!-- Input -->
                <div class="form-group">
                  <div class="js-focus-state">
                    <label class="form-label" for="listingLotSize">Lot size</label>
                    <div class="input-group">
                      <div class="input-group-prepend">
                        <span class="input-group-text" id="listingLotSizeLabel">
                          <span class="fas fa-ruler-combined"></span>
                        </span>
                      </div>
                      <input type="text" class="form-control" name="lotSize" id="listingLotSize" placeholder="Lot size" aria-label="Lot size" aria-describedby="listingLotSizeLabel">
                    </div>
                  </div>
                </div>
                <!-- End Input -->
              </div>

              <div class="col-lg-6 mb-3">
                <!-- Input -->
                <div class="form-group">
                  <div class="js-focus-state">
                    <label class="form-label" for="listingPostalCode">Postal code</label>
                    <div class="input-group">
                      <div class="input-group-prepend">
                        <span class="input-group-text" id="listingPostalCodeLabel">
                          <span class="fas fa-envelope-open"></span>
                        </span>
                      </div>
                      <input type="text" class="form-control" name="PostalCode" id="listingPostalCode" placeholder="Postal code" aria-label="Postal code" aria-describedby="listingPostalCodeLabel">
                    </div>
                  </div>
                </div>
                <!-- End Input -->
              </div>
            </div>

            <div class="row">
              <div class="col-lg-6 mb-3">
                <!-- Input -->
                <div class="form-group">
                  <div class="js-focus-state">
                    <label class="form-label" for="listingBedroom">Bedroom</label>
                    <div class="input-group">
                      <div class="input-group-prepend">
                        <span class="input-group-text" id="listingBedroomLabel">
                          <span class="fas fa-bed"></span>
                        </span>
                      </div>
                      <select class="custom-select" id="listingBedroom" aria-describedby="listingBedroomLabel">
                        <option selected>Choose amount</option>
                        <option value="parkingSpacesSelect1">1</option>
                        <option value="parkingSpacesSelect2">2</option>
                        <option value="parkingSpacesSelect3">3</option>
                        <option value="parkingSpacesSelect4">4</option>
                        <option value="parkingSpacesSelect5plus">5+</option>
                      </select>
                    </div>
                  </div>
                </div>
                <!-- End Input -->
              </div>

              <div class="col-lg-6 mb-3">
                <!-- Input -->
                <div class="form-group">
                  <div class="js-focus-state">
                    <label class="form-label" for="listingBathrooms">Bathrooms</label>
                    <div class="input-group">
                      <div class="input-group-prepend">
                        <span class="input-group-text" id="listingBathroomsLabel">
                          <span class="fas fa-bath"></span>
                        </span>
                      </div>
                      <select class="custom-select" id="listingBathrooms" aria-describedby="listingBathroomsLabel">
                        <option selected>Choose amount</option>
                        <option value="bathroomsSelect1">1</option>
                        <option value="bathroomsSelect2">2</option>
                        <option value="bathroomsSelect3">3</option>
                        <option value="bathroomsSelect4">4</option>
                        <option value="bathroomsSelect5plus">5+</option>
                      </select>
                    </div>
                  </div>
                </div>
                <!-- End Input -->
              </div>
            </div>

            <div class="row">
              <div class="col-lg-6 mb-3">
                <!-- Input -->
                <div class="form-group">
                  <div class="js-focus-state">
                    <label class="form-label" for="listingKitchen">Kitchen</label>
                    <div class="input-group">
                      <div class="input-group-prepend">
                        <span class="input-group-text" id="listingKitchenLabel">
                          <span class="fas fa-utensils"></span>
                        </span>
                      </div>
                      <select class="custom-select" id="listingKitchen" aria-describedby="listingKitchenLabel">
                        <option selected>Choose amount</option>
                        <option value="kitchenSelect1">1</option>
                        <option value="kitchenSelect2">2</option>
                        <option value="kitchenSelect3">3</option>
                        <option value="kitchenSelect4">4</option>
                        <option value="kitchenSelect5plus">5+</option>
                      </select>
                    </div>
                  </div>
                </div>
                <!-- End Input -->
              </div>

              <div class="col-lg-6 mb-3">
                <!-- Input -->
                <div class="form-group">
                  <div class="js-focus-state">
                    <label class="form-label" for="listingYearBuilt">Year built</label>
                    <div class="input-group">
                      <div class="input-group-prepend">
                        <span class="input-group-text" id="listingYearBuiltLabel">
                          <span class="fas fa-calendar"></span>
                        </span>
                      </div>
                      <select class="custom-select" id="listingYearBuilt" aria-describedby="listingYearBuiltLabel">
                        <option selected>Choose year</option>
                        <option value="yearBuiltSelectOlder">Older</option>
                        <option value="yearBuiltSelect1985">1985</option>
                        <option value="yearBuiltSelect1986">1986</option>
                        <option value="yearBuiltSelect1987">1987</option>
                        <option value="yearBuiltSelect1988">1988</option>
                        <option value="yearBuiltSelect1989">1989</option>
                        <option value="yearBuiltSelect1990">1990</option>
                        <option value="yearBuiltSelect1991">1991</option>
                        <option value="yearBuiltSelect1992">1992</option>
                        <option value="yearBuiltSelect1993">1993</option>
                        <option value="yearBuiltSelect1994">1994</option>
                        <option value="yearBuiltSelect1995">1995</option>
                        <option value="yearBuiltSelect1996">1996</option>
                        <option value="yearBuiltSelect1997">1997</option>
                        <option value="yearBuiltSelect1998">1998</option>
                        <option value="yearBuiltSelect1999">1999</option>
                        <option value="yearBuiltSelect2000">2000</option>
                        <option value="yearBuiltSelect2001">2001</option>
                        <option value="yearBuiltSelect2002">2002</option>
                        <option value="yearBuiltSelect2003">2003</option>
                        <option value="yearBuiltSelect2004">2004</option>
                        <option value="yearBuiltSelect2005">2005</option>
                        <option value="yearBuiltSelect2006">2006</option>
                        <option value="yearBuiltSelect2007">2007</option>
                        <option value="yearBuiltSelect2008">2008</option>
                        <option value="yearBuiltSelect2009">2009</option>
                        <option value="yearBuiltSelect2010">2010</option>
                        <option value="yearBuiltSelect2011">2011</option>
                        <option value="yearBuiltSelect2012">2012</option>
                        <option value="yearBuiltSelect2013">2013</option>
                        <option value="yearBuiltSelect2014">2014</option>
                        <option value="yearBuiltSelect2015">2015</option>
                        <option value="yearBuiltSelect2016">2016</option>
                        <option value="yearBuiltSelect2017">2017</option>
                      </select>
                    </div>
                  </div>
                </div>
                <!-- End Input -->
              </div>
            </div>

            <div class="row">
              <div class="col-lg-7 mb-3">
                <!-- Input -->
                <div class="js-form-message mb-3">
                  <label class="form-label">
                    Listing description
                    <span class="text-danger">*</span>
                  </label>

                  <div class="input-group">
                    <textarea class="form-control" rows="6" name="text" placeholder="Listing description" aria-label="Listing description" required
                              data-msg="Please enter a property description."
                              data-error-class="u-has-error"
                              data-success-class="u-has-success"></textarea>
                  </div>
                </div>
                <!-- End Input -->
              </div>

              <div class="col-lg-5 mb-5">
                <label class="form-label">
                  Floorplan
                </label>

                <!-- File Attachment Input -->
                <div class="u-dropzone">
                  <div class="dz-message p-2">
                    <span class="d-block mb-2">Upload floorplan</span>
                    <small class="d-block text-muted">Maximum file size is 1MB</small>
                  </div>
                </div>
                <!-- End File Attachment Input -->
              </div>
            </div>
          </div>
          <!-- End Listing Information -->

          <!-- Utilities -->
          <div class="mb-7">
            <!-- Title -->
            <div class="border-bottom pb-3 mb-5">
              <h2 class="h6 text-secondary mb-0">Estimated running costs</h2>
            </div>
            <!-- End Title -->

            <div class="row">
              <div class="col-lg-6 mb-3">
                <!-- Input -->
                <div class="form-group">
                  <div class="js-focus-state">
                    <label class="form-label" for="utilitiesMortgage">Mortgage</label>
                    <div class="input-group">
                      <div class="input-group-prepend">
                        <span class="input-group-text" id="utilitiesMortgageLabel">
                          <span class="fas fa-hand-holding-usd"></span>
                        </span>
                      </div>
                      <input type="text" class="form-control" name="mortgage" id="utilitiesMortgage" placeholder="Mortgage" aria-label="Mortgage" aria-describedby="utilitiesMortgageLabel">
                    </div>
                  </div>
                </div>
                <!-- End Input -->
              </div>

              <div class="col-lg-6 mb-3">
                <!-- Input -->
                <div class="form-group">
                  <div class="js-focus-state">
                    <label class="form-label" for="utilitiesEnergy">Energy</label>
                    <div class="input-group">
                      <div class="input-group-prepend">
                        <span class="input-group-text" id="utilitiesEnergyLabel">
                          <span class="fas fa-burn"></span>
                        </span>
                      </div>
                      <input type="text" class="form-control" name="energy" id="utilitiesEnergy" placeholder="Energy" aria-label="Energy" aria-describedby="utilitiesEnergyLabel">
                    </div>
                  </div>
                </div>
                <!-- End Input -->
              </div>
            </div>

            <div class="row">
              <div class="col-lg-6 mb-3">
                <!-- Input -->
                <div class="form-group">
                  <div class="js-focus-state">
                    <label class="form-label" for="utilitiesWater">Water</label>
                    <div class="input-group">
                      <div class="input-group-prepend">
                        <span class="input-group-text" id="utilitiesWaterLabel">
                          <span class="fas fa-tint"></span>
                        </span>
                      </div>
                      <input type="text" class="form-control" name="water" id="utilitiesWater" placeholder="Water" aria-label="Water" aria-describedby="utilitiesWaterLabel">
                    </div>
                  </div>
                </div>
                <!-- End Input -->
              </div>

              <div class="col-lg-6 mb-3">
                <!-- Input -->
                <div class="form-group">
                  <div class="js-focus-state">
                    <label class="form-label" for="utilitiesHomeInsurance">Home insurance</label>
                    <div class="input-group">
                      <div class="input-group-prepend">
                        <span class="input-group-text" id="utilitiesHomeInsuranceLabel">
                          <span class="fas fa-shield-alt"></span>
                        </span>
                      </div>
                      <input type="text" class="form-control" name="HomeInsurance" id="utilitiesHomeInsurance" placeholder="Home insurance" aria-label="Home insurance" aria-describedby="utilitiesHomeInsuranceLabel">
                    </div>
                  </div>
                </div>
                <!-- End Input -->
              </div>
            </div>
          </div>
          <!-- End Utilities -->

          <!-- Upload Images -->
          <div class="mb-7">
            <!-- Title -->
            <div class="border-bottom pb-3 mb-5">
              <h2 class="h6 text-secondary mb-0">Upload images</h2>
            </div>
            <!-- End Title -->

            <!-- File Attachment Input -->
            <div class="u-dropzone">
              <div class="dz-message">
                <img class="js-svg-injector max-width-10 mb-3" src="../../assets/svg/illustrations/add-file.svg" alt="SVG"
                     data-parent="#uploadForm">
                <span class="d-block mb-2">Browse your device and upload images</span>
                <small class="d-block text-muted">Maximum file size is 2MB</small>
              </div>
            </div>
            <!-- End File Attachment Input -->
          </div>
          <!-- End Upload Images -->

          <button type="submit" class="btn btn-primary btn-block transition-3d-hover">Submit</button>
        </form>
      </div>
    </div>
    <!-- End Upload Form Section -->
  </main>
  <!-- ========== END MAIN CONTENT ========== -->

<%@ include file="../../common/footer.jsp"%>