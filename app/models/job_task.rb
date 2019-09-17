# frozen_string_literal: true

class JobTask < ApplicationRecord
  belongs_to :task
  belongs_to :container, polymorphic: true
  has_many :steps, as: :container

  validates_presence_of :container
  validates_presence_of :task

  delegate :title, to: :task
  delegate :date, to: :task

  def create_dependent_job_tasks!
    if valid?
      ActiveRecord::Base.transaction do
        recursively_create_dependent_job_tasks
      end
    else
      raise ActiveRecord::RecordInvalid
    end
    # rescue ActiveRecord::RecordInvalid => error
    # TODO: return error to graphql for some
    # helpful messaging
    # Send to a monitoring service
  end

  def recursively_create_dependent_job_tasks
    if task.steps?
      task.steps.map do |step|
        job_task = step.job_tasks.create(container_id: id, container_type: 'JobTask')
        job_task.recursively_create_dependent_job_tasks
      end
    end
  end
end
