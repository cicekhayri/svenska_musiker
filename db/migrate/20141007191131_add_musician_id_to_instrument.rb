class AddMusicianIdToInstrument < ActiveRecord::Migration
  def change
    add_reference :instruments, :musician_id, index: true
  end
end
