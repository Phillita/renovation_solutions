class CreateTasks < ActiveRecord::Migration
  def self.up
    create_table :tasks do |t|
      t.integer :job_id
      t.string :task_name
      t.string :task_description
      t.date :task_completed

      t.timestamps
    end
  end

  def self.down
    drop_table :tasks
  end
end
