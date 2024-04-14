class BoxesController < ApplicationController
  before_action :set_box, only: %i[edit show update destroy]
  before_action :move_to_index, except: %i[index new edit update show destroy]

  def index
    @boxes = Box.includes(:user).order('created_at DESC')
  end

  def new
    @box = Box.new
  end

  def create
    @box = Box.new(box_params)
    if @box.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    # ログインしていない場合はログインページにリダイレクト
    unless user_signed_in?
      redirect_to new_user_session_path
      return
    end

    # ボックスの投稿者でない場合はトップページにリダイレクト
    unless @box.user == current_user
      redirect_to root_path
      return
    end

    # ボックスの投稿者の場合は詳細情報を表示
    @presents = @box.presents
  end

  def edit
    redirect_to root_path unless @box.user == current_user
  end

  def update
    if @box.update(box_params)
      redirect_to box_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @box.destroy if @box.user == current_user
    redirect_to root_path
  end

  private

  def box_params
    params.require(:box).permit(:box_name, :birth_day, :anniversary_day, :anniversary_memo,
                                :occupation, :hobbies, :likes, :dislikes,
                                :image).merge(user_id: current_user.id)
  end

  def set_box
    @box = Box.find(params[:id])
  end

  def move_to_index
    return if user_signed_in?

    redirect_to action: :index
  end
end
