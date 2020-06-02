class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.text :name
      t.integer :task_id


      t.timestamps
    end
  end
end
