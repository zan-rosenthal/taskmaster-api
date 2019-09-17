module Types
  class JobTaskContainer < Types::BaseUnion
    possible_types Types::JobTask, Types::Job

    def self.resolve_type(object, _context)
      "Types::#{object.class}".constantize
    end
  end
end
