class CreateFastTrackApplications < ActiveRecord::Migration
  def change
    create_table :fast_track_applications do |t|
      t.string :first_name
      t.string :last_name
      t.string :city
      t.string :country
      t.string :email
      t.integer :age
      t.string :gender
      t.string :one_line
      t.text :reason
      t.text :info
      t.text :passion
      t.text :experience
      t.text :challenge
      t.text :special
      t.text :links
      t.string :referral
      t.boolean :visa
      t.string :programme_choice

      t.timestamps null: false
    end
  end
end
