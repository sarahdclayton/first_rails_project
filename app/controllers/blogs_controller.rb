class BlogsController < ApplicationController
    # GET - show all blogs
    def index 
        @blogs = Blog.all 
    end

    # GET - request page with form to create a blog
    def new 
        @blog = Blog.new
    end

    # POST - create blog
    def create 
        @blog = Blog.new(blog_params)

        if @blog.save
            flash[:notice] = "Blog successfully saved."
        else
            flash[:notice] = "There was an error when creating a blog."
            render :new, status: :unprocessable_entity 
        end
    end

    # GET - edit blog
    def edit 
        @blog = Blog.find(params[:id])
    end

    def update 
        @blog = Blog.find(params[:id])

        if @blog.update(blog_params)
            redirect_to blog_path
        else
            render :edit, status: :unprocessable_entity
        end
    end

    private
    def blog_params
        params.required(:blog).permit(:title, :content)
    end
end
