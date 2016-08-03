class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.text :description
      t.integer :portfolio_id
      
      t.timestamps null: false
    end
  end
end