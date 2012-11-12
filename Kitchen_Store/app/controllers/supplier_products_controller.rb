class SupplierProductsController < ApplicationController
  # GET /supplier_products
  # GET /supplier_products.json
  def index
    @supplier_products = SupplierProduct.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @supplier_products }
    end
  end

  # GET /supplier_products/1
  # GET /supplier_products/1.json
  def show
    @supplier_product = SupplierProduct.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @supplier_product }
    end
  end

  # GET /supplier_products/new
  # GET /supplier_products/new.json
  def new
    @supplier_product = SupplierProduct.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @supplier_product }
    end
  end

  # GET /supplier_products/1/edit
  def edit
    @supplier_product = SupplierProduct.find(params[:id])
  end

  # POST /supplier_products
  # POST /supplier_products.json
  def create
    @supplier_product = SupplierProduct.new(params[:supplier_product])

    respond_to do |format|
      if @supplier_product.save
        format.html { redirect_to @supplier_product, notice: 'Supplier product was successfully created.' }
        format.json { render json: @supplier_product, status: :created, location: @supplier_product }
      else
        format.html { render action: "new" }
        format.json { render json: @supplier_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /supplier_products/1
  # PUT /supplier_products/1.json
  def update
    @supplier_product = SupplierProduct.find(params[:id])

    respond_to do |format|
      if @supplier_product.update_attributes(params[:supplier_product])
        format.html { redirect_to @supplier_product, notice: 'Supplier product was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @supplier_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /supplier_products/1
  # DELETE /supplier_products/1.json
  def destroy
    @supplier_product = SupplierProduct.find(params[:id])
    @supplier_product.destroy

    respond_to do |format|
      format.html { redirect_to supplier_products_url }
      format.json { head :no_content }
    end
  end
end
