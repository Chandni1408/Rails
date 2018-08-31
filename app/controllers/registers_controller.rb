class RegistersController < ApplicationController
  
  def index
    @registers = Register.all
  end

  def show
    @register = Register.find(params[:id])
  end

  def new
    @register = Register.new
  end

  def create
    @registers = Register.all
    @register = Register.create(register_params)
  end

  def edit
    @register = Register.find(params[:id])
  end

  def update
    @registers = Register.all
    @register = Register.find(params[:id])

    @register.update_attributes(register_params)
  end

  def delete
    @register = Register.find(params[:register_id])
  end

  def destroy
    @register = Register.find(params[:id])
    @register.destroy
  end

private
  def register_params
    params.require(:register).permit(:name, :price)
  end
end
