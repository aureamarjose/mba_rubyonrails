ActiveSupport::Notifications.subscribe("something.notified") do |event_name, started, finished, unique_id, payload|
  Rails.logger.info "Ihulll! Alguma coisa foi criada!!! #{payload}"
end