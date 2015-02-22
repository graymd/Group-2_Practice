class CommentsController < ApplicationController

  def index
    @comments = Comment.all
    respond_to do |format|
        format.json { render json: @comments.to_json }
    end
  end

  def create
    @comment = Comment.new comment_params
    if @comment.save
      respond_to do |format|
        format.json { render json: @comment.to_json }
      end
    else
      respond_to do |format|
        format.json { render json: @comment.errors.full_messages, status: 422 }
      end
    end
  end

  def update
    @comment = Comment.find params[:id]
    if @comment.update_attributes comment_params
      respond_to do |format|
        format.json { render json: @comment.to_json}
      end
    else
      respond_to do |format|
        format.json { render json: @comment.errors.full_messages, status: 422 }
      end
    end
  end

  def destroy
    @comment = Comment.find params[:id]
    @comment.destroy
    respond_to do |format|
      format.json { render nothing: true }
    end
  end

private
  def comment_params
    params.require(:comment).permit(
      :text
      )
  end
end
