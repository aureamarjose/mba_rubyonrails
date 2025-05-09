module Users
  module Interactors
    class Notify
      include Interactor

      def call
        # Aqui você pode adicionar a lógica para enviar notificações
        # Por exemplo, enviar um e-mail ou uma mensagem para o usuário
        # context.user é o usuário que foi criado ou atualizado
        MbaOnRails.zeitwerk_test
        ActiveSupport::Notifications.instrument("something.notified", user: context.user)
      end
    end
  end
end