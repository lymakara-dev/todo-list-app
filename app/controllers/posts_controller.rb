class PostsController < ApplicationController
  def index
    @tasks = Task.all
    # Apply category filter if selected
    if params[:category].present?
      @tasks = @tasks.where(category_id: params[:category])

    end

    # Apply status filter if selected
    if params[:status].present?
      @tasks = @tasks.where(status: params[:status])
    end

    # # Apply search filter if search term is provided
    # if params[:search].present?
    #   @posts = @posts.where("title ILIKE ?", "%#{params[:search]}%")
    # end
  end
end
