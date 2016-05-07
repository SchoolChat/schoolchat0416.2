class CommentsController < ApplicationController
  def show
    @user = current_user
    @school = School.find(params[:school_id])
    @comment = @school.comments.find(params[:id])
    redirect_to school_path(@school)
  end

  def create
    # render :nothing => true
    @user = current_user
    @school = School.find(params[:school_id])
    @comment = @school.comments.build(comment_params)
    if @comment.save
      redirect_to schools_path
    end
  end

  def index
    @school = School.find(params[:school_id])
    @comments = @school.comments.all
    @kokunai = @school.where(japan:true)

    # @kokunailocation = @kokunai.location.scan(/.{1,#{3}}/)[0]
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

  def destroy
    @user = current_user
    @comment = @school.comments.find(params[:id])
    raise
    @comment.destroy
    raise
    respond_to do |format|
      format.html { redirect_to school_url, notice: 'School was successfully destroyed.' }
    end
  end


  private
    def comment_params
      params.require(:comment).permit(:content, :userdetail, :name, :email, :attendedgrade, :startgrade, :englishfirst, :attitudejap, :attitudeclass, :attitude, :teacherliked, :teachersupport, :teaching, :teacherjap, :attendedyears)
    end
end