class WordsController < ApplicationController
   def index
      @words = Word.all
   end 

   def new
      @words = Word.new
   end

   def create
      Word.create(word_params) 
      redirect_to root_path 
   end

   private
   def word_params
      params.require(:Word).permit(:name, :word, :text, :image)
   end
end
