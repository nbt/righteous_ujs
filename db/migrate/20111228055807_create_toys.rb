class CreateToys < ActiveRecord::Migration
  def change
    create_table :toys do |t|
      t.string :sku
      t.string :description

      t.timestamps
    end
  end
end
