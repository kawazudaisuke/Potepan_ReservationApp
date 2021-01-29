class AccommodationController < ApplicationController
  protect_from_forgery
  def top #トップ画面
  end
  
  def search #検索結果（ルーム名検索）
      @results_name = Accommodation.where(name: params[:name])
  end
  
  def search_area#検索結果（エリア検索）
      @results_area = Accommodation.where(area: params[:area])
  end

  def index #登録一覧
      @accommos = Accommodation.where(user_id: session[:user_id])
  end
  
  def show#予約可能ルーム
      @accommos = Accommodation.all
  end
  
  def new　#ルーム新規登録
  end
  
  def create
      @accommo = Accommodation.new(name: params[:name],
                                   fee: params[:fee],
                                   area:params[:area],
                                   description:params[:description],
                                   accommo_image: params[:accommo_image],
                                   user_id: session[:user_id]
                                   )

      if @accommo.save
         flash[:notice] = "登録しました"
         redirect_to("/accommodation/new")
      end
  end
  
  def destroy
      @accommo = Accommodation.find_by(id: params[:id])
      if @accommo.destroy
         redirect_to("/accommodation/index")
      end
  end
end
