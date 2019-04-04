class Department < ApplicationRecord
  belongs_to :manager, foreign_key: :manager_id, class_name: "Employee"
  has_many :employees

  validates :head_count, numericality: { only_integer: true }
  validates :name, uniqueness: true
  validates :name, presence: true
end
