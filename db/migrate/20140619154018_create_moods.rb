class CreateMoods < ActiveRecord::Migration
  def change
    create_table :moods do |t|
      t.boolean :mood
      t.timestamps
    end
  end
end
