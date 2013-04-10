require_dependency "minitweet/application_controller"

module Minitweet
  class PostsController < ApplicationController

    before_filter :can_delete_post, :only => :destroy

    def create
      @post = current_user.posts.build(params[:post])
      @abc = params[:hello]
      respond_to do |format|
        if @post.save
          format.js {@abc}
          #else
          #  format.js { render :partial => 'error' }
        end
        @posts = current_user.posts.paginate(:page => params[:page])
      end
    end

    def destroy
      @post.destroy
      redirect_to current_user
    end

    def index
      @posts = Post.all
    end


    private
      def can_delete_post
        @post = current_user.posts.find_by_id(params[:id])
        redirect_to root_path if @post.nil?
      end
  end
end
