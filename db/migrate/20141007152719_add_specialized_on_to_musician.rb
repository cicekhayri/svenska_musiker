class AddSpecializedOnToMusician < ActiveRecord::Migration
  def change
    add_column :musicians, :specialized_on, :string
  end
end
