class Goal < ApplicationRecord
    validates :title, presence: true
    validates :due_date, presence: true
    validates :description, presence: true
end
