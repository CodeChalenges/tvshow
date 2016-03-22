require 'uri'

class Show < ApplicationRecord
  belongs_to :user

  validates :name, presence: true
  validates :schedule, presence: true
  validates :user, presence: true
  validates :site, format: { with: /([a-zA-Z0-9-]+\.)*[a-zA-Z0-9-]+\.[a-zA-Z0-9-]+(\/?[a-zA-Z0-9-])*/ }
end
