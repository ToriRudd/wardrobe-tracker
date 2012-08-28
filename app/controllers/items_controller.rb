class ItemsController < ApplicationController
  before_filter :signed_in_user
  before_filter :correct_user_for_item, only: [:show, :delete]

  def show
    @item = Item.find(params[:id])
  end

  def index
    @items = current_user.items
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(params[:item])
    if @item.save
      current_user.items << @item
      flash[:success] = "Item added"
      redirect_to wardrobe_path
    else
      render 'new'
    end
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    if @item.update_attributes(params[:item])
      flash[:success] = "Item updated"
      redirect_to wardrobe_path
    else
      render 'edit'
    end
  end

  def destroy
    Item.find(params[:id]).destroy
    flash[:success] = "Item deleted"
    redirect_to wardrobe_path
  end

  private

    def signed_in_user
      redirect_to log_in_path, notice: "Please log in" unless signed_in?
    end

    def correct_user_for_item
      item = Item.find(params[:id])
      redirect_to log_in_path unless item.user_id == curent_user.id
    end
end
