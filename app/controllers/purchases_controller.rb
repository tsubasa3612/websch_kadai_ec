class PurchasesController < ApplicationController

	def new
		@purchase = Purchase.new
	end

	def confirm
		@purchase = Purchase.find(:params[:id])
	end

	def create
		@purchase = Purchase.new(purchase_params)

	end

	private

	def purchase_params
		params.require(:purchase).permit(:name, :mail, :tel, :address, :user_id, :user_name, :admin_id, :product_id, :product_name )
	end
end
