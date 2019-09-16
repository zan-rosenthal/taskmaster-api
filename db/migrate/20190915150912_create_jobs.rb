class CreateJobs < ActiveRecord::Migration[6.0]
  def change
    create_table :jobs do |t|
      t.string :name, null: false
      t.timestamps
    end

    create_table :job_tasks do |t|
      t.belongs_to :task
      t.references :container
    end
  end
end
