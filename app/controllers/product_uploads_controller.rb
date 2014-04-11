class ProductUploadsController < ApplicationController

  def new
  end

  def create
    ProductUpload.new(params[:product_upload][:csv]).parse!
    redirect_to new_product_path
  end

end
