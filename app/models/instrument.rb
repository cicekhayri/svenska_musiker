class Instrument < ActiveRecord::Base
  has_many :musicians
  validates :instrument_name, presence: true, uniqueness: true
end
