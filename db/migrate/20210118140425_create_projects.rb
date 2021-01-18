class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.text :description
      t.date :starting_date
      t.date :do_date
      t.string :state, default: "propuesta"

      t.timestamps
    end
  end
end
