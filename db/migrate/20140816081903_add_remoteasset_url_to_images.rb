class AddRemoteassetUrlToImages < ActiveRecord::Migration
  def change
  	add_column :images, :remote_asset_url, :string
  end
end
