module SignUpSH

  def sign_up_as(user)
    visit sign_up_path
    byebug
    1
  end
end
World SignUpSH


When "I sign up" do
  sign_up_as @i
end

