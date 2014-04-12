class ProductUpload
  include ActiveModel::Model

  def initialize(file)
    @file = file
  end

  def parse!
    invalid_array = []
    products_attributes = SmarterCSV.process(@file.tempfile)
    products_attributes.each do |product_attributes|
      @product = Product.new(product_attributes)
      if !@product.save
        invalid_array << @product
      else
      end
    end
    invalid_array
  end
end
