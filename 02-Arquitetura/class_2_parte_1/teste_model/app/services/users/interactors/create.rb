module Users
  module Interactors
    class Create
      include Interactor
      def call
        user = User.new(context.params)
        context.user = user if user.save!
      end
    end
  end
end