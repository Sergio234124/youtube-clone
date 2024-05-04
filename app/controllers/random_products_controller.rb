class RandomProductsController < ApplicationController
  before_action :set_random_product, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, except: [:index, :show]

  # GET /random_products or /random_products.json
  def index
    @random_products = RandomProduct.all
  end

  # GET /random_products/1 or /random_products/1.json
  def show
  end

  # GET /random_products/new
  def new
    @random_product = RandomProduct.new
  end

  # GET /random_products/1/edit
  def edit
  end

  # POST /random_products or /random_products.json
  def create
    @random_product = RandomProduct.new(random_product_params)

    respond_to do |format|
      if @random_product.save
        format.html { redirect_to random_product_url(@random_product), notice: "Random product was successfully created." }
        format.json { render :show, status: :created, location: @random_product }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @random_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /random_products/1 or /random_products/1.json
  def update
    respond_to do |format|
      if @random_product.update(random_product_params)
        format.html { redirect_to random_product_url(@random_product), notice: "Random product was successfully updated." }
        format.json { render :show, status: :ok, location: @random_product }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @random_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /random_products/1 or /random_products/1.json
  def destroy
    @random_product.destroy!

    respond_to do |format|
      format.html { redirect_to random_products_url, notice: "Random product was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_random_product
      @random_product = RandomProduct.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def random_product_params
      params.fetch(:random_product,:user_id, {})
    end
end
