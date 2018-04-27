class Site < ApplicationRecord

  validates :name, :latitude, :longitude, :url, presence: true

end
