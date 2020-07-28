# The footer section of product pages
class Footer < SitePrism::Section
  element :footer_links, ".footer__link"
  element :footer_copyright, ".footer__copyright"
  element :footer_logo, ".footer__logo" 
  element :footer_delivery_info, ".footer__delivery-info"
  element :footer_newsletter, "footer__newsletter-button"
  element :footer_payment_info, ".footer__payment-info"
  element :footer_rights_reserved, ".footer__rights-reserved"
  element :footer_trust_seals, ".footer__trust-seals"
  element :footer_trusted_shops, ".footer__trust-seal--trustedshops"
  element :footer_trusted_seal_bio, ".footer__trust-seal--bio"
  element :footer_trusted_seal_testsieger, ".footer__trust-seal--testsieger"
end
# The footer section payment information 
class FooterPaymentInfo < SitePrism::Section
  element :footer_payment_service_visa, ".footer__payment-service--visa"
  element :footer_payment_service_american, ".footer__payment-service--american" 
  element :footer_payment_service_klarna, ".footer__payment-service--klarna" 
  element :footer_payment_service_mastercard, ".footer__payment-service--mastercard" 
  element :footer_payment_service_paypal, ".footer__payment-service--paypal" 
  element :footer_payment_service_sepa, ".footer__payment-service--sepa" 
end
# The footer section delivery services we offer
class FooterDeliveryServices < SitePrism::Section
  element :footer_delivery_service_dhl, ".footer__delivery-service--dhl"
  element :footer_delivery_service_ups, ".footer__delivery-service--ups"
  element :footer_delivery_service_lockbox, ".footer__delivery-service--lockbox"
end
# The footer section navigation
class FooterProducts < SitePrism::Section
  element :footer_products, ".footer__nav-item"
end
# The social media section
class SocialMedia < SitePrism::Section
  element :social_media_headline, ".social-media__headline"
  element :facebook_icon, '.social-media__icon--facebook'
  element :instagram_icon, ".social-media__icon--instagram"
  element :pinterest_icon, ".social-media__icon--pinterest"
  element :gplus_icon, ".social-media__icon--gplus"
  element :blog_icon, ".social-media__icon--blog"
end
# The header section navigation links
class HeaderNavigation < SitePrism::Section
  # books url
  #  element :einsteigerbox, :xpath, "//*[@id='nav_main']/li[2]/a"
  #  element :gbox, :xpath, "//*[@id='nav_main']/li[3]/a"
  #  element :verschenken, :xpath, "//*[@id='nav_main']/li[4]/a"
  #  element :konzept, :xpath, "//*[@id='nav_main']/li[5]/a"
end
# The header main section lower part of the page headeheader_slider_container
class HeaderbarMain < SitePrism::Section
  # calling navigation links section
  # section :navigation, HeaderNavigation, '.nav_main'
  # header logo image apiman
  element :header_logo, '.logo'
  # header logo urli
  element :header_logo_link, '.logo__link'
end
# The header section top part of the page header
class HeaderbarTop < SitePrism::Section
  # Kostenlose Lieferung deutschlandweit
  # element :header_info_text, '.icon_list__icon--header_info'
  # phone number
  # element :header_phone, '.icon_list__icon--phone_small'
  # login button name
  # element :login_title, '.login_header__title'
end
# The header section complete
class Header < SitePrism::Section
  # section :header_top, HeaderbarTop, '.header__bar--gray'
  # section :header_buttom, HeaderbarButtom, '.header__bar'
  section :header_navigation, HeaderNavigation, '.header__main'
end

# The product form section details page
class DetailsPageProductForm < SitePrism::Section
  element :usps_product_form, ".usps--product-form"
  element :field_select_product_form, ".product-form__field--select"
  element :availability_product_form, ".product-form__availability"
  element :prices_product_form, ".product-form__prices"
  element :price_product_form, ".product-form__price"
  element :button_product_form, ".product-form__button"
end
#### pages ####
# the shopping card page
class DeliveryPage < SitePrism::Page
  element :checkout_details, ".checkout-details__inner"
  element :delivery_page_form_button, ".checkout-details__button"
end
# payment page
class PaymentPage < SitePrism::Page
  element :checkout_payment_form, ".checkout-payment"
  element :checkout_select_paypal, :xpath, ".//*[@id='checkout-payment_method_2']"
  element :checkout_select_creditcard, :xpath, ".//*[@id='checkout-payment_method_0']"
  
  element :checkout_payment_page__button, :xpath, "html/body/main/div/form/button"
end
# paypal page
class PaypalPage < SitePrism::Page
  element :paypal_test_store_merchant_name, ".merchantHeader .merchantName"
end
# register page
class Register < SitePrism::Page
#  element :registration_forms, ".checkout-main"
  element :registration_forms, ".address-form"
  element :registration_forms_billing_address, "#address-form_billingAddressId"
  element :register_form_button, ".checkout-step-one__button"
end
# shopping card page
class ShoppingCard < SitePrism::Page
  element :shopping_cart, ".cart__inner"
  element :shopping_cart_checkout_button, ".cart__button"
end
# confirmation page
class ConfirmationPage < SitePrism::Page
  element :checkout_confirmation_overview_page, ".checkout-overview"
  element :checkout_accept_conditions_tickbox, :xpath, ".//*[@id='checkout-overview_acceptTerms']"
  element :checkout_confirmation_overview_button, ".checkout-overview__button"
end
# the box overview page
class BoxOverview < SitePrism::Page
  target_site = $BASE_URL + $data['local_box_overview_page']
  set_url target_site
# header section
  section :header_top, HeaderbarTop, :xpath, "html/body/header/div[1]"
  section :header_main, HeaderbarMain, ".header__main"
  section :social_media, SocialMedia, ".social-media"
  section :footer, Footer, ".footer"
  section :footer_products, FooterProducts, ".footer__nav-item"
  section :footer_payment_info, FooterPaymentInfo, ".footer__payment-info"
  section :footer_delivery_services, FooterDeliveryServices, ".footer__delivery-services"
  # elements
   element :head_line_text, ".box-overview__headline"
   element :unique_selling_points, ".usps"
   element :box_o, ".box-overview__box--original"
   element :box_boxpage_h, ".box-overview__box--boxpage_h"
   element :box_ww, ".box-overview__box--weight_watchers"
   element :box_ww, :xpath, "html/body/main/div/a[3]"
end
# the box original details page
class BoxodetailsPage < SitePrism::Page
  target_site = $BASE_URL + $data['local_box_o_page']
  set_url target_site
  section :header_top, HeaderbarTop, :xpath, "html/body/header/div[1]"
  section :header_main, HeaderbarMain, ".header__main"
  section :social_media, SocialMedia, ".social-media"
  section :footer, Footer, ".footer"
  section :footer_products, FooterProducts, ".footer__nav-item"
  section :footer_payment_info, FooterPaymentInfo, ".footer__payment-info"
  section :footer_delivery_services, FooterDeliveryServices, ".footer__delivery-services"
  section :details_page_product_form, DetailsPageProductForm, ".product-form"
  element :recipe_intro_text, ".recipes__intro"
  element :recipe_slider, ".recipes__slider"
  element :navigation_recipe_slider, ".recipes__slider-nav"
  element :product_info_title, ".product-info__title"
  element :product_info_navigation_slider_arrow, ".product-info__slider-arrow"
  element :product_info_navigation_slider_arrow_next, ".product-info__slider-arrow--next"
  element :product_slider_info_text, ".product-info__text"
end

class BoxvDetailsPage < SitePrism::Page
  target_site = $BASE_URL + $data['local_boxpage_v_page']
  set_url target_site
  section :details_page_product_form, DetailsPageProductForm, ".product-form"
end

class BoxkhDetailsPage < SitePrism::Page
  target_site = $BASE_URL + $data['local_box_boxpage_h_page']
  set_url target_site
  section :details_page_product_form, DetailsPageProductForm, ".product-form"
end

class CustomerLoginPage < SitePrism::Page
  target_site = $BASE_URL + $data['local_customer_login_page']
  set_url target_site
end

class Imprint < SitePrism::Page
  target_site = $BASE_URL + $data['imprint_page']
  set_url target_site
end

class Gtcpage < SitePrism::Page
  target_site = $BASE_URL + $data['gtc_page']
  set_url target_site
end

# the home page
class Home < SitePrism::Page
  target_site = $BASE_URL + $data['site_root']
  set_url target_site
  # section :header_top, HeaderbarTop, '.header__bar--gray'

end
# here's the app class that represents our entire site:
class App
  def home
    Home.new
  end

  def box_overview_page
    BoxOverview.new
  end

  def box_o_details_page
    BoxodetailsPage.new
  end
 
  def boxpage_v_details_page
    BoxvDetailsPage.new
  end

  def box_boxpage_h_details_page
    BoxkhDetailsPage.new
  end

  def shopping_card_page
    ShoppingCard.new
  end

  def order_address_page
    # Orderaddress.new
  end

  def customer_register_page
    Register.new
  end

  def delivery_page
    DeliveryPage.new
  end

  def checkout_payment_page
    PaymentPage.new
  end

  def checkout_confirmation_overview_page
    ConfirmationPage.new
  end

  def paypal_test_store
    PaypalPage.new
  end

  def customer_login_page
    CustomerLoginPage.new
  end

  def imprint_page
    Imprint.new
  end

  def gtc_page
    Gtcpage.new
  end
end
