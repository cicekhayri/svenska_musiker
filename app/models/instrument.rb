class Instrument < ActiveRecord::Base
  validates :instrument_name, presence: true
end
