class AlterTodos < ActiveRecord::Migration[6.1]
  def change
    
    # t.boolean :status
    change_column :todos, :date_task, :date

    add_column :todos,:status, :boolean, :default=> false
    
  end
end
