class CreatePartners < ActiveRecord::Migration
  def change
    create_table :partners do |t|
      t.string :name
      t.string :company
      t.string :email
      t.string :phone
      t.text :message
      t.string :reason

      t.timestamps null: false
    end
  end
end
