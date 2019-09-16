class Job < ApplicationRecord
  has_many :job_tasks, as: :container
  validates_presence_of :name
end
