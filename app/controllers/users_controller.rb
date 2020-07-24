class UsersController < ApplicationController
    before_action :set_user, only: [:show, :edit, :update]
    def index
        @users = User.all
    end

    def show
    end

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.valid?
            @user.save
            redirect_to user_path(@user)
        else
            render :new
        end
    end

    def edit
    end

    def update
        @user.update(user_params)
        if @user.valid?
            redirect_to user_path
        else
            render :edit
        end
    end

    private
    def user_params
        params.require(:user).permit(:name, :occupation, :age)
    end

    def set_user
        @user = User.find(params[:id])
    end
end