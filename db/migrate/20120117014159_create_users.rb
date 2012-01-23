class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string   :first_name
      t.string   :last_name
      t.string   :email
      t.string   :salt
      t.string   :user_type
      t.boolean  :first_log_on

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
