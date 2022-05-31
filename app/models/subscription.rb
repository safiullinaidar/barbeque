class Subscription < ApplicationRecord
  belongs_to :event
  belongs_to :user, optional: true

  with_options if: -> { user.present? } do
    validates :user, uniqueness: { scope: :event_id }
    validate :avoid_subscription_to_own_event
  end

  with_options unless: -> { user.present? } do
    validates :user_name, presence: true
    validates :user_email, presence: true, format: /\A[a-zA-Z0-9\-_.]+@[a-zA-Z0-9\-_.]+\z/,
              uniqueness: { scope: :event_id }
  end

  def user_name
    user&.name || super
  end

  def user_email
    user&.email || super
  end

  private

  def avoid_subscription_to_own_event
    errors.add(:user_email, :own_event) if user == event.user
  end
end
