class Mood < ActiveRecord::Base

  def self.happiness
    where(mood_type: true).count
  end

  def self.sadness
    where(mood_type: false).count
  end

end
