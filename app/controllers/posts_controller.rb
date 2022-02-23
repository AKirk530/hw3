class PostsController < ApplicationController
    def new
        @post = Post.new
    end

    def create
        @post = Post.new(params["title"])
        @post.save
        redirect_to "/places"
    end
end
