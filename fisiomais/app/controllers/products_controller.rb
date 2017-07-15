class ProductsController < ApplicationController
	before_action :set_product, only: [:show, :edit, :update, :destroy]

	def index
		@products = Product.paginate(page: params[:page], per_page: 5)
	end

	def new
		@product = Product.new
	end
end
