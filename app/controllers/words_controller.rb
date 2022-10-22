class WordsController < ApplicationController
   def index
      @words = Word.all
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
      params.require(:word).permit(:name, :word, :text, :image)
   end
end
