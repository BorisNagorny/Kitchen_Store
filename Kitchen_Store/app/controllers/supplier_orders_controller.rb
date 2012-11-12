class SupplierOrdersController < ApplicationController
  # GET /supplier_orders
  # GET /supplier_orders.json
  def index
    @supplier_orders = SupplierOrder.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @supplier_orders }
    end
  end

  # GET /supplier_orders/1
  # GET /supplier_orders/1.json
  def show
    @supplier_order = SupplierOrder.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @supplier_order }
    end
  end

  # GET /supplier_orders/new
  # GET /supplier_orders/new.json
  def new
    @supplier_order = SupplierOrder.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @supplier_order }
    end
  end

  # GET /supplier_orders/1/edit
  def edit
    @supplier_order = SupplierOrder.find(params[:id])
  end

  # POST /supplier_orders
  # POST /supplier_orders.json
  def create
    @supplier_order = SupplierOrder.new(params[:supplier_order])

    respond_to do |format|
      if @supplier_order.save
        format.html { redirect_to @supplier_order, notice: 'Supplier order was successfully created.' }
        format.json { render json: @supplier_order, status: :created, location: @supplier_order }
      else
        format.html { render action: "new" }
        format.json { render json: @supplier_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /supplier_orders/1
  # PUT /supplier_orders/1.json
  def update
    @supplier_order = SupplierOrder.find(params[:id])

    respond_to do |format|
      if @supplier_order.update_attributes(params[:supplier_order])
        format.html { redirect_to @supplier_order, notice: 'Supplier order was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @supplier_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /supplier_orders/1
  # DELETE /supplier_orders/1.json
  def destroy
    @supplier_order = SupplierOrder.find(params[:id])
    @supplier_order.destroy

    respond_to do |format|
      format.html { redirect_to supplier_orders_url }
      format.json { head :no_content }
    end
  end
end
