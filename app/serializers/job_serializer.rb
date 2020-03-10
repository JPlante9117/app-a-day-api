class JobSerializer < ActiveModel::Serializer
    has_many :labels, through: :job_labels

    attributes :id, :title, :description, :status, :link, :updated_at, :labels
end