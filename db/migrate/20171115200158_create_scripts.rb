class CreateScripts < ActiveRecord::Migration[5.1]
  def change
    create_table :scripts do |t|
      t.string :name
      t.text :body
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
