class ListsController < ApplicationController
before_action :set_list, only: [:show, :edit, :update, :destroy]

  def index
    @lists = List.all
  end

  def show
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(params_list)
    if @list.save

      redirect_to list_path(@list)
    else
      render :new, statut: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    @list.update(params_list)
    redirect_to list_path(@list)
  end

  def destroy
    @list.destroy
  end

private

  def set_list
    @list = List.find(params[:id])
  end

  def params_list
    params.require(:list).permit(:name)
  end

end
