class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :lead
      t.text :content
      t.string :image
      t.string :slug
      t.boolean :publish
      t.date :published_date
      t.references :author, index: true

      t.timestamps null: false
    end
    add_foreign_key :posts, :authors
  end
end
