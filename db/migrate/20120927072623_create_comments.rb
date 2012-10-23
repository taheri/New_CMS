class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :name
      t.string :email
      t.text :body
      t.references :page

      t.timestamps
    end
    add_index :comments, :page_id
  end
end
