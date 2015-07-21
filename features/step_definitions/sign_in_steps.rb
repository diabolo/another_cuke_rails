module SignInSH
  def sign_in_as(user)
    visit new_user_session_path
    fill_in 'user_email', with: user.email
    fill_in 'user_password', with: user.password
    submit_form
  end

  def should_be_signed_in(user)
    expect(page).to have_css('.notice', text: /Signed in success/)
  end
end
World SignInSH

Given "I am registered" do
  @i = create_registered_user
end

When "I sign in" do
  sign_in_as @i
end

Then "I should be signed in" do
  should_be_signed_in @i
end
