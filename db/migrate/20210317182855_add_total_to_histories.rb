class AddTotalToHistories < ActiveRecord::Migration[6.1]
  def change
    add_column :histories, :total, :float
  end
end
