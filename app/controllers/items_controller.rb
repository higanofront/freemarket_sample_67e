class ItemsController < ApplicationController
  def index
    @items = Item.where(buyer: nil).order(id:"DESC")
    @photos = Photo.all
  end

  def new
    @item = Item.new
    @photos = @item.photos.new
    # binding.pry
  end
  def create
    # binding.pry
    @item = Item.new(item_params)
    # binding.pry
    if @item.save
    end
    # binding.pry
  end

  def show
    @item = Item.find(params[:id])
    @photos = @item.photos
    @user = @item.user
  end
  
  def buy
    
  end
  def confirm
    
  end

  def destroy
    item = Item.find(params[:id])
    item.destroy
    redirect_to '/'
  end
  
  private
  def item_params
    params.require(:item).permit(:name, :text,:condition,:burden, :area, :day, :price, :category_id, :user_id, :buyer , photos_attributes: [:image]).merge(user_id: current_user.id)
  end

  
end
