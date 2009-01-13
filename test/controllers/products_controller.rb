class ProductsController < ActionController::Base
  
  def index
    @products = %w(one two three)
  end
  
end