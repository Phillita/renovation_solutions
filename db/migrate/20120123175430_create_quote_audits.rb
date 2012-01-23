class CreateQuoteAudits < ActiveRecord::Migration
  def self.up
    create_table :quote_audits do |t|
      t.integer :job_id
      t.decimal :old_quote
      t.decimal :new_quote

      t.timestamps
    end
  end

  def self.down
    drop_table :quote_audits
  end
end
