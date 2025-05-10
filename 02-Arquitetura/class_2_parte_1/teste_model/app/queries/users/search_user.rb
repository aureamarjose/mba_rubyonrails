module Users
  class SearchUser
    def self.call(name:)
      User.where("name LIKE ?", "%#{name}%")
    end
  end
end