class Task < ApplicationRecord
  has_many :steps, class_name: "Task", foreign_key: "container_id"
  validates :task_type, :presence => true, :inclusion => { :in => ['Container', 'Multiselect', 'TextInput', 'Instructions']}

  # TODO Make data driven to allow for novel types
  # TASK_TYPES = ['Container', 'Multiselect', 'TextInput', 'Instructions'].freeze
  
end
