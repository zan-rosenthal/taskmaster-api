class Types::Task < Types::BaseObject
  description "A task"
  field :id, ID, null: false
  field :title, String, null: false
  field :prompt, String, null: false
  field :container, Types::Task, null: true
  field :steps, [Types::Task], null: true
  field :data, Types::Task::Data, null: true
end