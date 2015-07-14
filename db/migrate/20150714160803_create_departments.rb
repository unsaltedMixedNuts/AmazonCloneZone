class CreateDepartments < ActiveRecord::Migration
  def change
    create_table :departments do |t|
      t.string :name, null: false
      t.integer :parent_dept_id

      t.timestamps
    end
  end
end
