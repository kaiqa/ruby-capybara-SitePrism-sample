# paypal check out helper
module CleanSetup
  def remove_all_cookies
  # page.driver.browser.manage.delete_all_cookies
  # page.execute_script('sessionStorage.clear()')
    browser = Capybara.current_session.driver.browser
  if browser.respond_to?(:clear_cookies)
    browser.clear_cookies
  elsif browser.respond_to?(:manage) && browser.manage.respond_to?(:delete_all_cookies)
    browser.manage.delete_all_cookies
  else
    raise "Don't know how to clear cookies. driver?"
  end
  end
end
World(CleanSetup)
