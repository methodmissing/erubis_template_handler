module ProductsHelper  
  
  def with_pagination( &block )
    concat( "pagination_before " + capture(&block) + " pagination_after" )
  end
  
end