class CreateCourseRegistrations < ActiveRecord::Migration
  def change
    create_table :course_registrations do |t|
      t.integer :course_id
      t.string :first_name
      t.string :last_name
      t.string :city
      t.string :country
      t.text :reason
      t.text :bio
      t.string :email

      t.timestamps null: false
    end
  end
end
