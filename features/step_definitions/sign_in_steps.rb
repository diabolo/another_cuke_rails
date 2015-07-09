module SignInSH
  def sign_in_as(user)
    byebug
    1
  end

  def should_be_signed_in(user)
  end
end
World SignInSH

Given "I am registered" do
  @i = create_new_user
  sign_up_as @i
end

When "I sign in" do
  sign_in_as @i
end

Then "I should be signed in" do
  should_be_signed_in @i
end
