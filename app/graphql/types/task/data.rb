class Types::Task::Data < Types::BaseObject
  # TODO add stable ids to json - maybe pass in task id
  field :options, [Types::Task::MultiselectOption], null: true
end
