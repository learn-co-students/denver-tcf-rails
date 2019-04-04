class Department < ApplicationRecord
  belongs_to :manager, foreign_key: :manager_id, class_name: "Employee"
end
