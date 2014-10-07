class AddInstrumentNameToInstrument < ActiveRecord::Migration
  def change
    add_column :instruments, :instrument_name, :string
  end
end
