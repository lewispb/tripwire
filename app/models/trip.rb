# frozen_string_literal: true

class Trip < ApplicationRecord
  belongs_to :origin, class_name: "Location"
  belongs_to :destination, class_name: "Location"
end
