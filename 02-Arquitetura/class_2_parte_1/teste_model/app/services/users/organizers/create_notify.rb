module Users
  module Organizers
    class CreateNotify
      include Interactor::Organizer
      # parametros iniciais
      before do
        context.params
      end

      #organize Users::Interactors::Create, Users::Interactors::Notify
      organize(
        Interactors::Create,
        Interactors::Notify
      )
    end
  end
end