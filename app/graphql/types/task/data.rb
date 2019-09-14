
class Types::Task::Data < Types::BaseObject
  field :id, String, null: false
  field :options, [Types::Task::MultiselectOption], null: true

  # TODO add stable ids to json - maybe pass in task id
  def id
    object
  end
end
