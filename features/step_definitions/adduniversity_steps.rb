Given(/^User is logged in$/) do |login|
  User.login
end

And(/^Unsiversity does not exist$/) do |university_table|
  University.create!
end

Then(/^University had been added$/) do |university_table|
  University.create!
end