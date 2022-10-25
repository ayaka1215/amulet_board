class WordsController < ApplicationController
   before_action :move_to_index, except: [:index, :show]
   def index
      @words = Word.includes(:user).order("created_at DESC")
   end 

   def new
      @word = Word.new
   end

   def create
      Word.create(word_params) 
      redirect_to words_path
   end

   def show
      @word = Word.find(params[:id])
   end

   def edit
      @word = Word.find(params[:id])
   end

   def update
      word =Word.find(params[:id])
      word.update(word_params)
      redirect_to words_path
   end

   def destroy
      word = Word.find(params[:id])
      word.destroy
      redirect_to words_path
   end

   private
   def word_params
      params.require(:word).permit(:word, :text, :image).merge(user_id: current_user.id)
   end

   # 未ログイン時の場合、トップページへリダイレクト
   def move_to_index
      unless user_signed_in?
         redirect_to action: :index
      end
   end
end
