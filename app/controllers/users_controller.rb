class UsersController < ApplicationController
    def show
        user = User.find(params[:id])
        @nickname = user.nickname
        @words = current_user.words
    end
end
