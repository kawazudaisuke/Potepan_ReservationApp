class UserController < ApplicationController

  def signup　#新規登録
  end
  
  def create
      @user = User.new(e_mail: params[:e_mail],
                       password: params[:password],
                       name: params[:name], 
                       introduction: params[:introduction], 
                       image: params[:image])
                       
      if params[:password] != params[:password_2] #パスワードが確認用と一致しない場合は新規登録に戻る
         redirect_to("/user/signup") and return
      end
      
      if @user.save
         session[:user_id] = @user.id
         session[:e_mail] = @user.e_mail 
         redirect_to("/user/show")
      else 
         render("/user/signup")
      end
  end

  def login_form #ログイン
  end
  
  def login
      @user = User.find_by(e_mail: params[:e_mail], password: params[:password] )
      if @user
        session[:user_id] = @user.id
        session[:e_mail] = @user.e_mail 
        redirect_to("/")
      else
        @error_message = "メールアドレスまたはパスワードが間違っています"
        @e_mail = params[:e_mail]
        render("/user/login_form")
      end
  end
  
  def logout
      flash[:notice] = "ログアウトしました"
      session[:user_id] = nil
      session[:e_mail] = nil
      redirect_to("/user/login")
  end


  def show #アカウント情報
      @user = User.find_by(id: session[:user_id])
  end

  def prof #プロフィール
      @user = User.find_by(id: session[:user_id])
  end
  def edit_prof #プロフィール編集
      @user = User.find_by(id: session[:user_id])
  end

  def edit #アカウント編集
      @user = User.find_by(id: session[:user_id])
  end
  
  def update
      @user = User.find_by(id: session[:user_id])
      unless params[:image].blank?
         @user.image = params[:image]
      end
      unless params[:password].blank?
         @user.password = params[:password]
      end
      unless params[:e_mail].blank?
         @user.e_mail = params[:e_mail]
      end
      unless params[:name].blank?
         @user.name = params[:name]
      end
      unless params[:introduction].blank?
         @user.introduction = params[:introduction]
      end
      if @user.save
         session[:e_mail] = @user.e_mail 
         redirect_to("/user/prof")
      end
  end
  
end
