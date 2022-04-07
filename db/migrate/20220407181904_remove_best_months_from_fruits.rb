class RemoveBestMonthsFromFruits < ActiveRecord::Migration[7.0]
  def change
    remove_column :fruits, :best_months
  end
end
