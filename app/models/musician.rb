class Musician < ActiveRecord::Base
  validates_presence_of :firstname
  validates :lastname, presence: true
  validates :link, presence: true, uniqueness: true
  validates :birthdate, presence: true
end
