Given(/^I have searched and found a Title that I want to buy$/) do
  insert_title_with_owners
  visit_title_confirmation_page(@title[:title_number])
end

Given(/^I have not checked the terms and conditions box$/) do
  # Nothing is done here
end

When(/^I have selected to pay for the summary$/) do
  find(".button", :text => "Buy title summary").click
end

Then(/^I am prevented from going any further$/) do
  expect(content).to include("Confirm your order")
end

Then(/^an error message is displayed$/) do
  expect(content).to include("You need to agree to receive the summary straight away and that you’ll lose your right to cancel")
end

Given(/^I have searched for a title$/) do
  insert_title_with_owners
end

Given(/^I select the title information that I wish to purchase$/) do
  visit_title_confirmation_page(@title[:title_number])
end

When(/^I choose to buy the Summary$/) do
  find(".button", :text => "Buy title summary").click
end

When(/^I have paid for the Summary$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I am shown the title summary page$/) do
  pending # express the regexp above with the code you wish you had
end

When(/^I have bought and viewed a summary$/) do
  pending # express the regexp above with the code you wish you had
end

When(/^I choose to view it again$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I am prevented from doing so$/) do
  pending # express the regexp above with the code you wish you had
end

When(/^I choose to buy the summary$/) do
  find(".button", :text => "Buy title summary").click
end

Then(/^I am redirected to the summary$/) do
  expect(content).to include("Summary of title")
end

Then(/^I have not been charged$/) do
  pending # express the regexp above with the code you wish you had
end
