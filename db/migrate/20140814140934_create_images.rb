class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
    	t.string :title
    	t.string :description
      t.timestamps
    end

    add_index :images, :title
  end
end
