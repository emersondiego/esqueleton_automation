# encoding: utf-8
#!/usr/bin/env ruby


Given(/^I access the shopping site$/) do
  home.load_page
end

When(/^I access the link My Orders$/) do
  home.click_my_orders
end

Then(/^I valid access the login screen$/) do
  expect(home.validade_access_orders).to eq('Identificação')
end


