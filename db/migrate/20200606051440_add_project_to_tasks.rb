class AddProjectToTasks < ActiveRecord::Migration[6.0]
  def change
    add_column :tasks, :project, :text
  end
end
