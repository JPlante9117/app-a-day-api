class JobLabel < ApplicationRecord
    belongs_to :job
    belongs_to :label 
end
