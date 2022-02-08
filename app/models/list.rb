class List < ApplicationRecord
  belongs_to :trip

  has_many :items, class_name: "ListItem", dependent: :destroy
end
