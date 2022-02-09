# frozen_string_literal: true

class Trip < ApplicationRecord
  belongs_to :origin, class_name: "Location", optional: true
  belongs_to :destination, class_name: "Location", optional: true

  has_many :lists, dependent: :destroy

  validates :starts_on, presence: true
end
