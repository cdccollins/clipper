class CreateTransactions < ActiveRecord::Migration[5.1]
  def change
    create_table :transactions do |t|
      t.references :user, foreign_key: true
      t.references :video, foreign_key: true
      t.float :cost

      t.timestamps
    end
  end
end
