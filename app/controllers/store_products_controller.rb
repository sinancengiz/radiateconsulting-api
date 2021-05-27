class StoreProductsController < ApplicationController
  before_action :set_product, only: [:show, :update, :destroy]

  # GET /store_product_product_products
  def index
    @store_products = StoreProduct.all
    json_response(@store_products)
  end

  # POST /store_products
  def create
    @store_product = StoreProduct.create!(store_product_params)
    json_response(@store_product, :created)
  end

  # GET /store_products/:id
  def show
    json_response(@store_product)
  end

  # PUT /store_products/:id
  def update
    @store_product.update(store_product_params)
    head :no_content
  end

  # DELETE /store_products/:id
  def destroy
    @store_product.destroy
    head :no_content
  end

  private

  def store_product_params
    # whitelist params
    params.permit(:store_id,:product_id, :quantity, :created_by)
  end

  def set_product
    @store_product = StoreProduct.find(params[:id])
  end
end

