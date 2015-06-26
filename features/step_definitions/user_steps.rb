module UserSH
  class TUser
    attr_reader :attributes

    def method_missing(sym, *args, &block)
      self.send(:attributes)[sym] || super
    end

    def initialize(attrs)
      @attributes = TUser.make_user.merge(attrs)
    end

    def self.make_user
      {
        first_name: FFaker::Name.first_name,
        last_name: FFaker::Name.last_name,
        email: valid_email,
        password: valid_password,
        confirmation: valid_password
      }
    end

    def self.valid_email
      "#{SecureRandom.uuid}@example.com"
    end

    def self.valid_password
      "ABCD1abcdefg"
    end

  end

  def create_new_user(attrs={})
    TUser.new(attrs)
  end
end
World UserSH


Given 'I am a new user' do
  @i = create_new_user
end
