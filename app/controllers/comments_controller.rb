class CommentsController < ApplicationController

  def create
    # render :nothing => true
    @user = current_user
    @school = School.find(params[:school_id])
    @comment = @school.comments.build(comment_params)
    if @comment.save
      redirect_to root_path
    end
  end

  def index
    @school = School.find(params[:school_id])
    @comments = @school.comments.all
  end

  def edit
    @user = current_user
    @school = School.find(params[:school_id])
    @comment = @school.comments.find(params[:id])
  end

  def update
    @user = current_user
    @user = current_user
    @school = School.find(params[:school_id])
    @comment = @school.comments.find(params[:id])
    if @comment.update_attributes(comment_params)
      redirect_to school_path(@school)
    else
      render 'edit'
    end
  end

  private
    def comment_params
      params.require(:comment).permit(:content)
    end
end