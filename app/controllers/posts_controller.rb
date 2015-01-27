class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  respond_to :html
  require 'csv'

  def export
    @posts = Post.all
    posts_csv = CSV.generate do |csv|
      csv << ["Title", "Lead", "Content", "Image", "Slug", "Published Date", "Impressions Count"]
      @posts.each do |post|
        csv << [post.title, post.lead, post.content, post.image, post.slug, post.published_date, post.impressions_count]
      end
    end
    send_data(posts_csv, :type => 'text/csv', :filename => 'all_posts.csv')
  end

  def import
    Post.import(params[:file])
    redirect_to posts_url, notice: "Posts imported."
  end

  def index
    @posts = Post.all
    respond_with(@posts)
  end

  def show
    respond_with(@post)
  end

  def new
    @post = Post.new
    respond_with(@post)
  end

  def edit
  end

  def create
    @post = Post.new(post_params)
    @post.save
    respond_with(@post)
  end

  def update
    @post.update(post_params)
    respond_with(@post)
  end

  def destroy
    @post.destroy
    respond_with(@post)
  end

  private
    def set_post
      @post = Post.friendly.find(params[:id])
    end

    def post_params
      params.require(:post).permit(:title, :lead, :content, :image, :slug, :publish, :published_date, :author_id)
    end
end
