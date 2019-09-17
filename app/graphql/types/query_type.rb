# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject
    field :tasks, [Types::Task], null: false
    field :jobs, [Types::Job], null: false

    def tasks
      ::Task.all
    end

    def jobs
      ::Job.all
    end
  end
end
