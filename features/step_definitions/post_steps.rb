Given /^the following posts:$/ do |posts|
  Post.create!(posts.hashes)
end

Then /^I should see the following posts:$/ do |expected_posts_table|
  expected_posts_table.diff!(tableish('table tr', 'td,th'))
end
