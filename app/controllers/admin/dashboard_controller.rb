class Admin::DashboardController < ApplicationController
  http_basic_authenticate_with name: ENV['USERNAME'], password: ENV['PASSWORD']
  def show
    @num_products = Product.all.count
    @num_categories = Category.all.count
  end

end
