class ProductsController < ApplicationController

  before_filter :authorize, except: [:show]

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
    @product_upload = ProductUpload.new(:csv)
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if params[:product]
      @product.update(products_params)
    end
      redirect_to product_path
  end

  def create
    @product = Product.create(products_params)
    redirect_to(root_path)
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to(root_path)
  end

private

  def products_params
    params.require(:product).permit(:id, :name, :price, :description, :picture)
  end

end
