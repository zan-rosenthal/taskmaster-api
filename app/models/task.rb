class Task < ApplicationRecord
  belongs_to :container, class_name: 'Task', optional: true
  has_many :steps, class_name: 'Task', foreign_key: 'container_id'
  has_many :job_tasks

  validates :task_type, presence: true, inclusion: { in: ['Container', 'MultiSelect', 'TextInput', 'Instructions']}

  # TODO Make data driven to allow for novel types
  # TASK_TYPES = ['Container', 'Multiselect', 'TextInput', 'Instructions'].freeze

  def steps?
    steps.count.positive?
  end
end
