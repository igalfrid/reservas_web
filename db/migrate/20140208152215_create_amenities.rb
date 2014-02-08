class CreateAmenities < ActiveRecord::Migration
  def change
    create_table :amenities do |t|
      t.string :name
      t.integer :capacity
      t.text :description

      t.timestamps
    end
  end
end
