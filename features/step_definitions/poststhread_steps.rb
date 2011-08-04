Given /^the following poststhreads:$/ do |poststhreads|
  Poststhread.create!(poststhreads.hashes)
end

When /^I delete the (\d+)(?:st|nd|rd|th) poststhread$/ do |pos|
  visit poststhreads_path
  within("table tr:nth-child(#{pos.to_i+1})") do
    click_link "Destroy"
  end
end

Then /^I should see the following poststhreads:$/ do |expected_poststhreads_table|
  expected_poststhreads_table.diff!(tableish('table tr', 'td,th'))
end
