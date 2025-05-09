module Users
  class CreateAndNotify
    def self.call(user_params) #quando estiver trabalhando com services sempre usa o call
      user = User.new(user_params)
      user.save
    end
  end
end