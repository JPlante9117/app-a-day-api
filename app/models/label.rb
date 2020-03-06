class Label < ApplicationRecord
    has_many :job_labels,
    has_many :jobs, through: :job_labels
end
