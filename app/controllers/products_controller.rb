class ProductsController < ApplicationController
  def index
  	@genres = Genre.all

    @q = Product.ransack(params[:q])
    @products = @q.result(distinct: true).page(params[:page]).per(4)

    @all_ranks = Product.find(Favorite.group(:product_id).order('count(product_id) desc').limit(2).pluck(:product_id))
  end

  def show
  	@genres = Genre.all
    @product = Product.find(params[:id])
    @comment = Comment.new
  end
end
