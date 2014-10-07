class Musician < ActiveRecord::Base
  belongs_to :instrument 

  validates_presence_of :firstname
  validates :lastname, presence: true
  validates :link, presence: true, uniqueness: true
  validates :birthdate, presence: true
  validates :specialized_on, presence: true
end
