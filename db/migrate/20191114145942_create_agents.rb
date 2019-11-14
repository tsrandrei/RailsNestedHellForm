class CreateAgents < ActiveRecord::Migration[5.2]
  def change
    create_table :agents do |t|
      t.string :title
      t.string :managment
      t.references :user, index: true, foreign_key: true

      t.timestamps
    end
  end
end
