class AddPersonalInfoToMusician < ActiveRecord::Migration
  def change
    add_column :musicians, :firstname, :string
    add_column :musicians, :lastname, :string
    add_column :musicians, :link, :string
    add_column :musicians, :birthdate, :date
  end
end
