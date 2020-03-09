class Job < ApplicationRecord
    has_many :job_labels
    has_many :labels, through: :job_labels, autosave: true

    validates :title, presence: true
    validates :description, presence: true
    validates :status, presence: true

    accepts_nested_attributes_for :labels

    def labels_attributes=(label_attr)
        self.labels.clear
        label_attr.each do |label_item|
            label = Label.find_or_create_by(title: label_item[:title])
            self.labels << label
        end
    end
end
