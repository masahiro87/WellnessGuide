class ListingsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_listing, only: [:show, :update, :basics, :description, :meeting_place, :price, :photos, :calendar, :bankacccount, :publish]

  def index
    @listings = current_user.listings
  end

  def show
    @photos = @listing.photos
  end

  def new
    # 現在のユーザーのリスティングの作成
    @listing = current_user.listings.build
  end

  def create
  # パラメーターとともに現在のユーザーのプログラムを作成
    @listing = current_user.listings.build(listing_params)

    if @listing.save
      redirect_to manage_listing_basics_path(@listing), notice: "プログラムを作成・保存しました"
    else
      redirect_to new_listing_path, notice: "プログラムを作成・保存できませんでした"
    end
  end

  def edit
  end

  def update
    if @listing.update(listing_params)
      redirect_to :back, notice: "更新できました"
    end
  end

  def basics
  end

  def description
  end

  def meeting_place
  end

  def price
  end

  def photos
    @photo = Photo.new
  end

  def calendar
  end

  def bankaccount
  end

  def publish
  end

  private
  def listing_params
    params.require(:listing).permit(:category, :program, :price)
  end

  def set_listing
    @listing = Listing.find(params[:id])
  end
end
