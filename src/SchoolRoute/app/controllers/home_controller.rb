#Written by Jon Bernstein

class HomeController < ApplicationController
    def index
	@posts = Post.all        
    end

    def show
	@post = Post.find(params[:id])
    end

    def parent
	@posts = Post.all
    end
end
