class CreateMeritBadges < ActiveRecord::Migration[5.2]
  def change
    create_table :merit_badges do |t|
      t.string :badges_name
      t.boolean :badges_is_earned
      t.boolean :badges_is_eagle
      t.integer :scouts_id
    end
  end
end
