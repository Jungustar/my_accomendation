class CreateAccomendations < ActiveRecord::Migration[5.2]
  def change
    create_table :accomendations do |t|
      t.string :title
      t.string :description
      t.integer :rent

      t.timestamps
    end
  end
end
