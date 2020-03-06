class Job < ApplicationRecord
    has_many :job_labels
    has_many :labels, through: :job_labels
end
