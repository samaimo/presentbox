class MemosController < ApplicationController
  # before_action :authenticate_user!, only: %i[create destroy]

  def create
    @memo = Memo.new(memo_params)
    @memo.save
    redirect_to present_path(@memo.present_id) # コメントと結びつくツイートの詳細画面に遷移する
  end

  def destroy
    @memo = Memo.find(params[:id]) # 削除したいメモのIDを取得
    @memo.destroy
    redirect_to present_path(@memo.present_id) # リダイレクト先
  end

  private

  def memo_params
    params.require(:memo).permit(:text, :image).merge(user_id: current_user.id, present_id: params[:present_id])
  end
end
