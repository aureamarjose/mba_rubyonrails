class User < ApplicationRecord
  # callbacks
  before_validation :downcase_email
  after_commit :show_message, on: :create

  validates :email, presence: true
  validates :email, uniqueness: true

  private

  def downcase_email
    self.email = email.downcase if email.present?
  end

  def show_message
    puts "User with email: #{email} was created"
  end
end
