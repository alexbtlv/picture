class Image < ActiveRecord::Base
	mount_uploader :asset, ImageUploader
	validates :title, presence: true, length: { minimum: 2 }
	validate :presence_of_attachment
	validate :only_one_attachment

	def prev
		Image.where("id < ?", id).last
	end

	def next
		Image.where("id > ?", id).first
	end

	def presence_of_attachment
		if [self.asset, self.remote_asset_url].reject(&:blank?).size == 0
			errors[:base] << ("Please add attachment.")
		end
	end

	def only_one_attachment
		if [self.asset, self.remote_asset_url].reject(&:blank?).size == 2
			errors[:base] << ("Please add only one attachment.")
		end
	end
end
