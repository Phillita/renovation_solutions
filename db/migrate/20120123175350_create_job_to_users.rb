class CreateJobToUsers < ActiveRecord::Migration
  def self.up
    create_table :job_to_users do |t|
      t.integer :job_id
      t.integer :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :job_to_users
  end
end
