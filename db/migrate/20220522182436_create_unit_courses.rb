class CreateUnitCourses < ActiveRecord::Migration[7.0]
  def change
    create_table :unit_courses do |t|
      t.references :unit, null: false, foreign_key: true
      t.references :course, null: false, foreign_key: true

      t.timestamps
    end
  end
end
