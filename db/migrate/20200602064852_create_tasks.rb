class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.text :title
      t.text :content
      t.datetime :deadline

      t.timestamps
    end
  end
end
