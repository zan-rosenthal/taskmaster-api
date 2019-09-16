class Job < ApplicationRecord
  # has_many :job_tasks, dependent: destroy

  validates_presence_of :name
end
