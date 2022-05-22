class CreateUnits < ActiveRecord::Migration[7.0]
  def change
    create_table :units do |t|
      t.string :name
      t.integer :position
      t.text :body
      
      t.timestamps
    end
  end
end
