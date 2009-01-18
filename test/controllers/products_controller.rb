class ProductsController < ActionController::Base
  
  helper :products
  
  def index
    @products = %w(one two three)
  end
  
  def rescue_action(e) raise e end  
  
end