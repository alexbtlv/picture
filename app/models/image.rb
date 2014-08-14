class Image < ActiveRecord::Base
	mount_uploader :asset, ImageUploader
end
