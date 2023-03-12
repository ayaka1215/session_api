class Part < ApplicationRecord
  has_many :user_part_relations, dependent: :delete_all
  has_many :users, through: :user_part_relations
end
