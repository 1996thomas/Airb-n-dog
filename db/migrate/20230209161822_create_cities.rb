class CreateCities < ActiveRecord::Migration[7.0]
  def change
    create_table :cities do |t|
      t.string :city_name
      t.timestamps
      # t.belongs_to :dog, index: true
      # t.belongs_to :dogsitter, index: true
    end
  end
end
