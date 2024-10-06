class UsersController < ApplicationController

    def show
        @user = User.find(params[:id])
    end

    def new
        @user = User.new
    end

    def edit

    end

    def create
        @user = User.new(user_params)
        if @user.save
            redirect_to @user
            flash[:success] = "アカウント登録が完了しました。"
        else
            render 'new', status: :unprocessable_entity
        end
    end

    private
        # paramsハッシュで、:user属性を必須とし、
        # 名前、メールアドレス、パスワード、確認用パスワードをそれぞれ許可、それ以外は許可しない
        # 補助メソッドの定義
        def user_params
            params.require(:user).permit(:name, :email, :password, :password_confirmation)
        end

end
