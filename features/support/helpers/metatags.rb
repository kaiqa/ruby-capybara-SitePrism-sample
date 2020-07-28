require 'rubygems'
require 'open-uri'
require 'mechanize'
require 'nokogiri'
# find meta tags and scripts for marketing
module Metatags
# The metag module lets you call the check_metatags function from inside the cucumber test
# in order to verify that the tag are present

 def check_meta_tags(domain, subdomain)
  puts "----------------------------------#{subdomain}------------------------------------------------"
  # store the start recording time
   start = Time.now

  # authenticate nokogiri for staging invironment
  # doc = Nokogiri::HTML(open("http://www-staging.apiman.de" + urlsubdomain, http_basic_authentication: ["apiman", "hzhjkkE"] ) )

   # execute on production no authentiation needed
 doc = Nokogiri::HTML(open("#{domain}" + subdomain ) )

  # search for all the mata properties
  contents = doc.search("meta[name='description'], meta[name='keywords'], meta[property='og:title'], meta[property='og:description'], meta[property='og:type'], meta[property='og:url'], meta[property='og:image'], meta[property='og:site_name'], meta[property='fb:app_id'], meta[property='fb:admins']").map { |n| n['content']
}
  # print the tags found to console
  puts "tags found:"
  puts contents
  # print the iframe found to console
  puts "GMT tag found in iframe:"
  puts doc.css('iframe')

  # shows all the scrips found
  # puts "scripts found:"
  # puts doc.css('script')

  # initialize mechanize
  agent = Mechanize.new

  page = agent.get("#{domain}" + subdomain)
  # print all the links and text found to the console
  puts "links found:"
  page.links.each do |link|
  puts link.text
  puts link.uri
   end

  puts "script found with GMT tag"
  match = page.search("script").text.scan(/^*GTM-54PPS2/)
  puts match
 end
end
World(Metatags)
