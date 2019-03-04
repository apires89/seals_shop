class OrdersController < ApplicationController

  def show
    @order = Order.find(params[:id])
  end

  def create
    seal = Seal.find(params[:seal_id])
    order = Order.new(seal_sku: seal.sku, amount:seal.price, user: current_user, state: 'pending')
    order.save
    redirect_to new_order_payment_path(order)
  end
end
