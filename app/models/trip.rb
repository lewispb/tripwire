# frozen_string_literal: true

class Trip < ApplicationRecord
  belongs_to :origin, class_name: "Location", optional: true
  belongs_to :destination, class_name: "Location", optional: true

  validates :starts_on, presence: true

  has_many :lists
end
