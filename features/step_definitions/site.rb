# encoding: utf-8
#!/usr/bin/env ruby


Given(/^Is the shopping site$/) do
  home.load_page
end

When(/^I access my orders$/) do
  home.click_my_orders
  expect(home.validade_access_orders).to eq('Identificação')
end




