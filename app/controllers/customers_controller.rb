class CustomersController < ApplicationController
  def index
    @customers = Customer.all

    respond_to do |format|
      format.json { render json: @customers }
    end
  end

  def show
    @customer = Customer.find(params[:id])

    respond_to do |format|
      format.json { render json: { customer: @customer } }
    end
  end
end
