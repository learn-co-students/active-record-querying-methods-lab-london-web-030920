class Show < ActiveRecord::Base

def self.highest_rating
    self.maximum(:rating)
end

def self.most_popular_show
    most_pop = self.highest_rating
     Show.find_by(rating: most_pop)
end

def self.lowest_rating
    self.minimum(:rating)
end

def self.least_popular_show
    least_pop = self.lowest_rating
    Show.find_by(rating: least_pop)
end

def self.ratings_sum
    self.sum(:rating)
end

def self.popular_shows
    self.where("rating > ?", 5)
end

def self.shows_by_alphabetical_order
    self.order("name ASC")
end


end