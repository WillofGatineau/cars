class CreateBrands < ActiveRecord::Migration
  def change
    create_table :brands, :id => false do |t|
      t.string :make
      t.string :model

      t.timestamps
    end
  end
end
