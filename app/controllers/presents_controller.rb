class PresentsController < ApplicationController
  before_action :authenticate_user!, only: %i[new create edit destroy show]
  before_action :set_present, only: %i[show edit update destroy]

  def index
    if current_user
      @boxes = current_user.boxes
      @presents = current_user.presents.order('event_date DESC')
    else
      redirect_to new_user_session_path
    end
  end

  def new
    @present = Present.new
    @boxes = Box.all # プレゼント作成画面でも箱の情報を使う場合
  end

  def create
    @present = Present.new(present_params)
    if @present.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    # プレゼントの投稿者でない場合はトップページにリダイレクト
    return if @present.user == current_user

    redirect_to root_path
  end

  def edit
    return if @present.user == current_user

    redirect_to root_path
  end

  def update
    if @present.update(present_params)
      redirect_to present_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @present.destroy if @present.user == current_user
    redirect_to root_path
  end

  private

  def set_present
    @present = Present.find(params[:id])
    @boxes = Box.all
    @box = Box.find(@present.box_id)
  end

  def present_params
    params.require(:present).permit(:title, :event_name, :text, :price, :memo, :present_name, :shop, :message,
                                    :url, :box_id, :event_date, :image).merge(user_id: current_user.id)
  end
end
