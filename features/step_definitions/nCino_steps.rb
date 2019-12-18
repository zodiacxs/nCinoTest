Given(/^I launch todoMVC$/) do
  @Homepage = Homepage.new(@browser)
  @Homepage.visit
end

When(/^I click on Polymer$/) do
  @Homepage.click_polymer
end

Then(/^I should be on polymer page$/) do
  expect(@browser.url == "http://todomvc.com/examples/polymer/index.html").to be true
end

When(/^I add the first todo item$/) do
  sleep 3
  @Homepage.add_a_todo_item
  sleep 1
end

And(/^I add the second todo item$/) do
  @Homepage.add_a_todo_item
  sleep 1
end

Then(/^I should see two todo items$/) do
  expect(@Homepage.second_todo_item).to exist
  sleep 3
end

When(/^I double click on the second todo item$/) do
  @Homepage.second_todo_item.double_click
end

And(/^I edit the content of the second todo item$/) do
  @Homepage.second_todo_item.input(:id, "edit").send_keys " updated"
  @Homepage.second_todo_item.input(:id, "edit").send_keys :enter
end

Then(/^I should see the updated second todo item$/) do
  expect(@Homepage.second_todo_item.label.text == "todo item updated").to be true
end