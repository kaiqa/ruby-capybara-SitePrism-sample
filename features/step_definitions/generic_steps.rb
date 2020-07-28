And(/^I visit all links found$/) do                    
  puts links_found = page.all('a').map { |a| a['href'] }
  links_found.length.times do |i| 
  puts links_found[i]
  visit links_found[i]
end
end
