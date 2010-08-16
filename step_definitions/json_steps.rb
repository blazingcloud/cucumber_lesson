require 'json'

When %r{^I request: ([^\s]+)$} do |url|
  visit url
end

Then /^I get a (\d+) \(([\s\w]+)\) status result$/ do |code, description|
  response.response_code.should == code.to_i
end


Then /^the response header Content-Type matches ([\/\w]+)$/ do |content_type|
  response.headers['Content-Type'].should match(%r{#{content_type}})
end


Then /^the response should match json:$/ do |expected_as_text|
  expected_json = JSON.parse expected_as_text
  response_json = JSON.parse response.body
  p "---------- expected:"
  p expected_json
  p "---------- response:"
  p response_json
  response_json.should == expected_json
end

