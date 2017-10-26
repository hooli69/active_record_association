class CreateSubcomments < ActiveRecord::Migration[5.1]
  def change
    create_table :subcomments do |t|
      t.text :comment
      t.integer :user_id
      t.integer :comment_id

      t.timestamps
    end
  end
end
