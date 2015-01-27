class BlogController < ApplicationController
  def index
  	@posts = Post.published_in_reverse_chron_order.paginate(:page => params[:page], :per_page => 10)
  end
end
