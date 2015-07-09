module SignUpSH

  # TODO move to FormSH
  def submit_form
    find('input[type="submit"]').click
  end

  def sign_up_path
    # route devize makes
    new_user_registration_path
  end

  def sign_up_as(user)
    visit sign_up_path
    fill_in 'user_email', with: user.email
    fill_in 'user_password', with: user.password
    fill_in 'user_password_confirmation', with: user.password
    submit_form
  end

  def should_be_signed_up(user)
    expect(page).to have_css('.notice', text: /signed.*success/)
  end
end
World SignUpSH


When "I sign up" do
  sign_up_as @i
end


Then "I should be signed up" do
  # delegating to a method because how we detect this will change as we develop the app
  should_be_signed_up @i
end

