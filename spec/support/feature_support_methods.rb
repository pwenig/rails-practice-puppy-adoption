def login
  visit '/'
  fill_in "user[email]", with: "user@example.com"
  fill_in "user[password]", with: "password"
  click_on "Login"
end