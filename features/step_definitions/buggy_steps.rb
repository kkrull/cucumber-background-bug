Given(/^I do some initialization in ([^"]+)$/) do |location|
  @initialization_steps ||= []
  @initialization_steps << location.to_s
end

Then(/^the completed initialization steps should be ([^"]+) and ([^"]+)$/) do |first_location, second_location|
  expect(@initialization_steps).to eql([first_location.to_s, second_location.to_s])
end
