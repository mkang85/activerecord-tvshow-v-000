class Show < ActiveRecord::Base
  def self.highest_rating
    Show.maximum(:rating)
  end

  def self.most_popular_show
    x = self.highest_rating
    Show.find_by(rating: x)
  end

  def self.lowest_rating
    Show.minimum(:rating)
  end

  def self.least_popular_show
    x = self.lowest_rating
    Show.find_by(rating: x)
  end

  def self.ratings_sum
    Show.sum(:rating)
  end
end
