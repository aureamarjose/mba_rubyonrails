class User < ApplicationRecord
  # callbacks
  before_validation :downcase_email
  after_commit :show_message, on: :create

  after_create :notify_user_created

  validates :email, presence: true
  validates :email, uniqueness: true

  private

  def downcase_email
    self.email = email.downcase if email.present?
  end

  def show_message
    puts "User with email: #{email} was created"
  end

  def notify_user_created
    ActiveSupport::Notifications.instrument("something.notified", user: self)
  end

  def self.say_hello_zeitwerk
    MbaOnRails.zeitwerk_test
  end
end





