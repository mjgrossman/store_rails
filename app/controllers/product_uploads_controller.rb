class ProductUploadsController < ApplicationController

  def new
  end

  def create
    @invalid_array = ProductUpload.new(params[:product_upload][:csv]).parse!
    render 'show'
  end


private

  def products_uploads_params
    params.require(:product_upload).permit(:csv, :invalid_array)
  end
end
