class CommentsController < ApplicationController
	def create
    @dish = Dish.find(params[:dish_id])
    @comment = @dish.comments.create(comment_params)
   	@comment.user = current_user
		@comment.save	
    redirect_to dish_path(@dish)
	end

  def destroy
    @dish = Dish.find(params[:dish_id])
    @comment = @dish.comments.find(params[:id])
    @comment.destroy
    redirect_to dish_path(@dish)
  end

   private
    def comment_params
      params.require(:comment).permit(:body)
    end
 
end
