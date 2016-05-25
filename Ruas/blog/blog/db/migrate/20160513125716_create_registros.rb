class CreateRegistros < ActiveRecord::Migration
  def change
    create_table :registros do |t|
      t.string :nome
      t.text :msg

      t.timestamps null: false
    end
  end
end
