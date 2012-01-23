class CreateJobs < ActiveRecord::Migration
  def self.up
    create_table :jobs do |t|
      t.string :job_name
      t.string :description
      t.decimal :quote
      t.decimal :running_total

      t.timestamps
    end
  end

  def self.down
    drop_table :jobs
  end
end
