class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.references :container
      t.string :task_type, null: false
      t.jsonb :data
      t.string :title, null: false
      t.string :prompt
      t.timestamps
    end
  end
end
