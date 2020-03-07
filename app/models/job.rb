class Job < ApplicationRecord
    has_many :job_labels
    has_many :labels, through: :job_labels, autosave: true

    # validates :title, presence: true
    # validates :description, presence: true
    # validates :status, presence: true

    accepts_nested_attributes_for :labels

    before_save :find_or_create_label

    def find_or_create_label
        self.labels = self.labels.map do |label|
            Label.find_or_create_by(title: label.title)
        end
    end
end
