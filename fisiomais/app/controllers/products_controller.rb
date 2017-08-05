class ProductsController < ApplicationController
	before_action :set_product, only: [:show, :edit, :update, :destroy]

	def index
		@products = Product.paginate(page: params[:page], per_page: 5)
	end

	def new
		@product = Product.new
	end

	def new
		@product = Product.new
	end

	def create
		@product = Product.new(product_params)

		if @product.save
			redirect_to products_path, notice: "Produto cadastrado com sucesso!"
		else
			render :new
		end
	end

	def edit
	end

	def update
		@product.assign_attributes(product_params)

		if @product.save
			redirect_to products_path, notice: "Produto foi Atualizado com sucesso"
		else
			render :edit
		end
	end

	def set_product
		@product = Product.find(params[:id])
	end

	def product_params
		params.require(:product).permit(:name, :price_cost, :price_sale, :status, :description, :photo)
	end
end
