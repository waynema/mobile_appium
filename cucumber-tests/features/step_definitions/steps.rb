When(/^I debug$/) do
  require 'pry'
  binding.pry
end

Then(/^I sleep (\d+)$/) do |second|
  sleep second.to_i
end

When(/^I tap button (\d+)$/) do |number|
  wait { button(number.to_i) }.click
end

Then(/^I tap button "(.*?)"$/) do |name|
  wait { button_exact(name) }.click
end

When(/^I tap text (\d+)$/) do |number|
  wait { text_exact(number.to_i) }.click
end

Then(/^I tap text "(.*?)"$/) do |name|
  wait { text_exact(name) }.click
end

Then(/^I should not see "(.*?)"$/) do |data|
  expect(exists(8) { find(data) }).to be false
end

Then(/^I should see "(.*?)"$/) do |data|
  found_text = wait(60) { find(data) }
  expect(found_text.enabled? || found_text.displayed?).to be true
end

When(/^I fill in "(.*?)" with "(.*?)"$/) do |editbox, data|
  driver.find_element(:name, editbox).send_keys data
end

When(/^I fill in searchbox "(.*?)" with "(.*?)"$/) do |searchbox, data|
  driver.find_element(:class_name, searchbox).send_keys data
end

When(/^I fill in textfield "(.*?)" with "(.*?)"$/) do |editbox, data|
  textfield_exact(editbox).send_keys data
end

When(/^I fill in textfield (\d+) with "(.*?)"$/) do |editbox, data|
  textfield_exact(editbox.to_i).send_keys data
end

When(/^I fill in xpath "(.*?)" with "(.*?)"$/) do |editbox, data|
  driver.find_element(:xpath, editbox).send_keys data
end

When(/^I clear and fill in "(.*?)" with "(.*?)"$/) do |editbox, data|
  edit_box = driver.find_element(:name, editbox)
  edit_box.clear
  edit_box.send_keys data
end

When(/^I clear and fill in searchbox "(.*?)" with "(.*?)"$/) do |sbox, data|
  search_box = driver.find_element(:class_name, sbox)
  search_box.clear
  search_box.send_keys data
  search_box.send_keys :return
end

Then(/^I should see message$/) do
  expect(text(@msg).enabled?).to be true
end

When(/^I enter "(.*?)"$/) do |texts|
  driver.action.send_keys(texts).perform
end
