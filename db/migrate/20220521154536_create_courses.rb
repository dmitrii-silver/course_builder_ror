class CreateCourses < ActiveRecord::Migration[7.0]
  def change
    create_table :courses do |t|
      t.string :name
      t.string :volume
      t.string :annotation
      t.text :description_text

      t.timestamps
    end
  end
end
