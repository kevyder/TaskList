class ItemsController < ApplicationController
  before_action :set_todo_list
  def create
    @todo_item = @todo_list.item.create(item_params)
    redirect_to @todo_list
  end

  def destroy
    @todo_item = @todo_list.item.find(params[:id])
    if @todo_item.destroy
      flash[:successs] = "Se Borro la Tarea"
    else
      flash[:error] = "No se pudo borrar la tarea"
    end
    redirect_to @todo_list
  end

  private
  def set_todo_list
    @todo_list = TodoList.find(params[:todo_list_id])
  end

  def item_params
    params[:item].permit(:content)
  end
end
