class CommentsController < ApplicationController
		def create
			product = Product.find(params[:product_id])
    		review = current_user.comments.new(comment_params)
    		review.product_id = product.id
    		review.save
    		redirect_to product_path(product)
		end
	private
		def comment_params
    		params.require(:comment).permit(:review)
		end
end
