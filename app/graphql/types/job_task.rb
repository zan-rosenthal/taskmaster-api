module Types
  class JobTask < Types::BaseObject
    description "A specific instance of task related to a job"

    field :id, ID, null: false
    field :task, Types::Task, null: false
    field :title, String, null: false
    field :container, Types::JobTaskContainer, null: false
    field :steps, [Types::JobTask], null: true
    field :data, Types::Task::Data, null: true
  end
end
