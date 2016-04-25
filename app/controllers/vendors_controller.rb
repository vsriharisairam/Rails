class VendorsController < ApplicationController
  def index
    @vendors = Vendor.all
  end
  def new
    @vendor = Vendor.new
  end
  def create
    @vendor = Vendor.new(vendor_params)
    if @vendor.save
      redirect_to '/vendors'
    else
      render 'new'
    end
  end

  def vendor_params
    params.require(:vendor).permit(:vendor_id,:name,:address,:contact_no)
  end
  def show
    @vendor = Vendor.find(params[:id])
  end
  def edit
    @vendor = Vendor.find(params[:id])
  end
  def update
    @vendor = Vendor.find(params[:id])
    if @vendor.update(vendor_params)
      redirect_to @vendor
    else
      render 'edit'
    end
end

  def destroy
    @vendor = Vendor.find(params[:id])
    @vendor.destroy
      redirect_to '/vendors'
    end
 end