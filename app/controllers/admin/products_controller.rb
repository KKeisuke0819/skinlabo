class Admin::ProductsController < ApplicationController
    def index
      @product = Product.new
      @products = Product.all
      @genres = Genre.all
    end

    def new
      @product = Product.new
    end

    def create
      @product = Product.new(product_params)
      @product.genre_id =  Genre.find_by(variety: product_params[:genre_id]).id
      if @product.save
         redirect_to admin_products_path
      else
         redirect_to new_admin_product_path
      end
    end

    def destroy
      @product = Product.find(params[:id])
      @product.destroy
      redirect_to admin_products_path
    end

    def show
      @product = Product.find(params[:id])
    end

    def edit
      @product = Product.find(params[:id])
    end

    def update
      @product = Product.find(params[:id])
      @product.update(product_params)
      redirect_to admin_product_path(@product.id)
    end
  private
    def product_params
      params.require(:product).permit(:product_name, :introduction, :genre_id, :price, :image, :variety)
    end
end
