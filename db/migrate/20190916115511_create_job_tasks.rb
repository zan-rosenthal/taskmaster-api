class CreateJobTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :job_tasks do |t|
      t.belongs_to :task
      t.bigint :container_id, null: false
      t.string :container_type, null: false
    end
  end
end
