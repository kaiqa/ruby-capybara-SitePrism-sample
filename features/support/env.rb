require 'capybara/cucumber'
require 'bundler/setup'
require 'capybara-webkit'
require 'gmail'
require 'capybara/poltergeist'
require 'uri'
require 'mechanize'
require 'site_prism'
require 'yaml'
require 'pry'
require 'launchy'
require 'capybara-screenshot/cucumber'
require 'faker'
require 'slack-notifier'
require 'i18n'
############################
#  Load default test data   #
#############################
  I18n.load_path += Dir['./features/support/locale/*.yml', './*.rb']
# locale setting
 if ENV['de' ]
  I18n.locale = :de
 end

$data = YAML.load_file(File.expand_path(File.join(File.dirname(__FILE__), '..', '..', 'data', 'default_data.yml')))
# register slack
  notifier = Slack::Notifier.new "https://hooks.slack.com/services/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", channel: '#jenkins_london', username: 'myuser'

ENV['TEST_ENV'] ||= 'staging'
project_root = File.expand_path('../..', __FILE__)
$BASE_URL = YAML.load_file(project_root + "/config/config.yml")[ENV['TEST_ENV']][:url]


SitePrism.configure do |config|
  config.use_implicit_waits = true
end

 if ENV['chrome' ]
   Capybara.default_driver = :chrome
   Capybara.register_driver :chrome do |app|
  options = {
    :js_errors => false,
    :timeout => 666,
    :debug => false,
    :inspector => false,
    :window_size => [1024, 768],
    :screen_size => [1600, 1200]
        }
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end
#  elsif ENV['firefox']
# Capybara.default_driver = :firefox
# Capybara.register_driver :firefox do |app|
#     options = {
#     :js_errors => true,
#     :timeout => 360,
#     :debug => false,
#     :inspector => false,
#     }
#   Capybara::Selenium::Driver.new(app, :browser => :firefox)
#     end
 elsif ENV['safari']
    Capybara.default_driver = :safari
    Capybara.register_driver :safari do |app|
    options = {
    :js_errors => false,
    :timeout => 360,
    :debug => false,
    :inspector => false,
    :window_size => [1024, 768],
    :screen_size => [1600, 1200]

    }
    Capybara::Selenium::Driver.new(app, :browser => :safari)
  end

 elsif ENV['ipad']
    Capybara.register_driver :ipad do |app|
    options = {
    :device => "iPad Simulator",
    :browserName => 'iOS',
    :platform => 'Mac',
    :version => '6.1',
    :app => 'safari'
    }
    Capybara::Selenium::Driver.new(app, {:browser => :remote, :url => "http://localhost:4723/wd/hub/", :desired_capabilities => options} )
   end
Capybara.default_driver = :ipad

 elsif ENV['polter']

  Capybara.default_driver = :poltergeist
  Capybara.register_driver :poltergeist do |app|
    options = {
    :js_errors => false,
    :timeout => 666,
    :debug => false,
    :phantomjs_options => ['--load-images=no', '--disk-cache=false'],
    :inspector => false,
    :window_size => [1024, 768],
    :screen_size => [1600, 1200]
    }
  Capybara::Poltergeist::Driver.new(app, options)
  end
 end

  # Capybara.register_driver :select_poltergeist_debug do |app|
  # Capybara::Poltergeist::Driver.new(app, :inspector => true, :window_size => [1920,1080], js_errors: false, :phantomjs_options => ['--load-images=no'])
  # end
  # Capybara.javascript_driver = :select_poltergeist_debug
  # Capybara.default_max_wait_time = 15
  #

# Capybara.javascript_driver = :poltergeist


 
# Capybara.register_driver :select_firefox do |app|
#   Capybara::Selenium::Driver.new(app, :browser => :firefox)
# end
#
# Capybara.register_driver :select_webkit do |app|
#   Capybara::Selenium::Driver.new(app, :browser => :webkit)
# end

=begin

Capybara::Webkit.configure do |config|

  Capybara.javascript_driver = :webkit
  # Silently return an empty 200 response for any requests to unknown URLs.
  config.allow_url("https://www-staging.apiman.de/")
  config.block_unknown_urls
  # Timeout if requests take longer than 5 seconds
  config.timeout = 5
  # Don't load images
  config.skip_image_loading

end
=end

 Before  do
   # page.driver.browser.manage.window.resize_to(1920, 1080)
   # page.driver.browser.manage.window.maximize
   # page.driver.browser.manage.delete_all_cookies

notifier.ping "running", icon_url: 'http://11.11.111.111:9090/favicon_jenk.png'

 end

 Before do |scenario|
# The +scenario+ argument is optional, but if you use it, you can get the title, description, or name (title + description) of the scenario.
notifier.ping ":checkered_flag:"
notifier.ping "#{scenario.name}"
 end

After do |scenario|
 # page.driver.browser.manage.delete_all_cookies
  if scenario.failed?
     a_fail_note = {
                   fallback: "error",
                   text: "something went wrong",
                   color: "bad"
                   }
  notifier.ping ":robot_face: ", attachments: [a_fail_note]
  notifier.ping " #{scenario.exception.message}" 

  end
end
Capybara.configure do |config|
  config.match = :first
  config.exact_options = false
  config.ignore_hidden_elements = true
  config.visible_text_only = true
end

# Capybara.default_driver = :select_poltergeist_debug


