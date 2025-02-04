class CustomersController < ApplicationController
  before_action :set_customer, only: [:show, :edit, :update, :destroy]
  
  def index
    @q = Customer.ransack(params[:q])
    @customers = @q.result(distinct: true).includes(:province)
  end
  
  def show
    # Uses set_customer before_action to find the customer
  end
  
  def new
    @customer = Customer.new
  end
  
  def edit
    # Uses set_customer before_action to find the customer
  end
  
  def create
    @customer = Customer.new(customer_params)
    if @customer.save
      redirect_to @customer, notice: 'Customer was successfully created.'
    else
      render :new
    end
  end
  
  def update
    if @customer.update(customer_params)
      redirect_to @customer, notice: 'Customer was successfully updated.'
    else
      render :edit
    end
  end
  
  def destroy
    @customer.destroy
    redirect_to customers_url, notice: 'Customer was successfully destroyed.'
  end
  
  private
  
  def set_customer
    @customer = Customer.find(params[:id])
  end
  
  def customer_params
    params.require(:customer).permit(:name, :email, :password, :password_confirmation, :address, :phone, :province_id)
  end
end
