class AddSeasonToShow < ActiveRecord::Migration
  def change
    add_column :season, :string
  end
end
