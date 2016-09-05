# Migration responsible for creating a table with activities
class CreateTransactionLogs < ActiveRecord::Migration
  # Create table
  def self.up
    create_table :transaction_logs do |t|
      t.text :request
      t.text :parameters
      t.string :reference_no

      t.timestamps null: false
    end

    add_index :transaction_logs, [:reference_no]
  end
  # Drop table
  def self.down
    drop_table :transaction_logs
  end
end
