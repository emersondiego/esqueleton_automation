# encoding: utf-8
#!/usr/bin/env ruby


Given(/^I access the shopping site$/) do
  home.load_page
end

And(/^I close the email signup popup$/) do
  home.close_popup
end

And(/^I access the link Login to the site$/) do
  home.click_login_site
end

Then(/^I valid access the login screen$/) do
  expect(home.validade_access_screen_login).to eq('identificação')
end


