class CreateTodos < ActiveRecord::Migration[6.1]
  def change
    create_table :todos do |t|
      
      t.string :task
      t.integer :date_task

      t.timestamps
    end
  end
end
