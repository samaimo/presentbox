class MemosController < ApplicationController
  def create
    @memo = Memo.new(memo_params)
    @memo.save
    redirect_to "/presents/#{params[:present_id]}" # コメントと結びつくツイートの詳細画面に遷移する
  end

  def show
    @present = Present.find(params[:present_id])
    @memos = @present.memos.order(created_at: :desc)
  end

  def delete
    @memo = Memo.find(params[:id])
    @memo.destroy
    redirect_to "/presents/#{params[:present_id]}"
  end

  private

  def memo_params
    params.require(:memo).permit(:text, :image).merge(user_id: current_user.id, present_id: params[:present_id])
  end
end
