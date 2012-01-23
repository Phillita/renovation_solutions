class CreatePhones < ActiveRecord::Migration
  def self.up
    create_table :phones do |t|
      t.integer :profile_id
      t.integer :phone_number
      t.integer :phone_type

      t.timestamps
    end
  end

  def self.down
    drop_table :phones
  end
end
