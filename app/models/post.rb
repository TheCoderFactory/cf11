class Post < ActiveRecord::Base
  belongs_to :author

  extend FriendlyId
	friendly_id :title, use: :slugged
	# acts_as_taggable
	# mount_uploader :image, PostImageUploader
	require 'csv'

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|

      post_hash = row.to_hash # exclude the price field
      post = Post.where(title: post_hash["title"])

      if post.count == 1
        post.first.update_attributes(post_hash)
      else
        Post.create!(post_hash)
      end # end if !product.nil?
    end # end CSV.foreach
  end # end self.import(file)
  
	def self.published_in_reverse_chron_order
		reverse_chron_order.where(publish: true)
	end

	def self.reverse_chron_order
		order(published_date: :desc)
	end

	def self.popular_posts
		order(impressions_count: :desc)
	end
end
