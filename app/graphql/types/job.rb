module Types
  class Job < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :job_tasks, [Types::JobTask], null: false
  end
end
