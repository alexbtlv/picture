class Image < ActiveRecord::Base
	mount_uploader :asset, ImageUploader

	def prev
		Image.where("id < ?", id).last
	end

	def next
		Image.where("id > ?", id).first
	end
end
