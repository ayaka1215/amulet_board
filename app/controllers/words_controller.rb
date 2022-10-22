class WordsController < ApplicationController
   def index
      @words = Word.all
   end 

   def new
      @words = Word.new
   end
end
