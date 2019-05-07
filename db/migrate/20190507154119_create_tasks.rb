class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :description
      t.boolean :complete
      t.integer :user_id
      t.integer :project_id
      t.timestamps
    end
  end
end
