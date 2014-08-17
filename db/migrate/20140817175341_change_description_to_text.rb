class ChangeDescriptionToText < ActiveRecord::Migration
  def change
  	change_column :images, :description, :text
  end
end
