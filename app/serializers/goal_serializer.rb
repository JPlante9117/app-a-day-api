class GoalSerializer < ActiveModel::Serializer
    attributes :id, :title, :description, :due_date, :completed

end