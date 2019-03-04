class AddPriceToSeals < ActiveRecord::Migration[5.2]
  def change
    add_monetize :seals, :price, currency: { present: false }
  end
end
