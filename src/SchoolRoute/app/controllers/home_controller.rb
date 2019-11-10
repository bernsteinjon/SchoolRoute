#Written by Jon Bernstein
 
class HomeController < ApplicationController
    def index
	@posts = Post.all
    @parent = Parent.all
    @student = Student.all       
    end

    def show
	@post = Post.find(params[:id])
    end

    def parent
	@posts = Post.all
    @parent = Parent.all
    @student = Student.all 
    end
    
    def admin
	@posts = Post.all
    @parents = Parent.all
    @student = Student.all 
    end
end
