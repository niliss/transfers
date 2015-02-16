class CreateTransfers < ActiveRecord::Migration
  def change
    create_table :transfers do |t|
      t.references :sender, index: true
      t.references :receiver, index: true
      t.integer :amount

      t.timestamps null: false
    end
    add_foreign_key :transfers, :senders
    add_foreign_key :transfers, :receivers
  end
end
