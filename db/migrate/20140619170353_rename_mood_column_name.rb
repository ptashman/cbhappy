class RenameMoodColumnName < ActiveRecord::Migration
  def change
    rename_column :moods, :mood, :mood_type
  end
end
