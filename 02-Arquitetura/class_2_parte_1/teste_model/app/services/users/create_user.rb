module Users
  class CreateUser
    include Interactor
    def call
      user = User.new(context.params)
      context.user = user if user.save!
    end
  end
end