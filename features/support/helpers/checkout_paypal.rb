# paypal check out helper
module CheckoutPaypal
  def paypal_login_sandbox
    within_frame 'injectedUl' do
      fill_in 'email', :with => 'apiman@mayflower.de'
      fill_in 'password', :with => 'Majkhjj!'
      click_button'Einloggen'
    end
  end

  def paypal_execute_payment
    expect(page).to have_content("test facilitator's Test Store")

    click_button'Jetzt zahlen'
  # visit 'https://apiman:seiWeer9eeno@api.kochsauber.de/'
    # https://api.bla.de/customer/capture?payum_token=ly2RwYM3AtgVN&token=EC-0E36044P&PayerID=XXKPS2
  end
end
World(CheckoutPaypal)
