class CreateHistories < ActiveRecord::Migration[6.1]
  def change
    create_table :histories do |t|
      t.string :init_currency
      t.string :wanted_currency
      t.float :rate
      t.float :amount

      t.timestamps
    end
  end
end
