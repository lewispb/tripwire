class ListItem < ApplicationRecord
  belongs_to :list

  delegate :trip, to: :list
end
