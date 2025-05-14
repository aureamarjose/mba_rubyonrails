class UserDecorator
  def initialize(user)
    puts "---- UserDecorator initialized with user: #{user.inspect}"
    @user = user
  end

  def name
    @user.name.upcase
  end

  def email
    @user.email.upcase
  end
end