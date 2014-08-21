class BlogsController < ApplicationController

	def index
		@blogs = Post.all
	end

	def new
	end

	def create
		# if params.has_key?(:post)
		new_post = params[:post].permit(:name, :title, :description)
		Post.create(new_post)
		redirect_to "/blogs"
		# else
		# render 'edit'

	end

	def show
		id = params[:id]
		@blogs = Post.find(id)
	end
end
