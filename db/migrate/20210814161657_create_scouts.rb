class CreateScouts < ActiveRecord::Migration[5.2]
  def change
    create_table :scouts do |t|
      t.string :scouts_f_name
      t.string :scouts_l_name
      t.integer :scouts_troop
  end
end
