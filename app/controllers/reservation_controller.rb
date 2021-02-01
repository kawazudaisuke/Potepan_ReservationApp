class ReservationController < ApplicationController
  
   def index #予約履歴の確認
       @reservations = Reservation.where(user_id: session[:user_id])
   end
  
   def show #予約前確認
       @accommo_name = params[:name] 
       @guests       = params[:guests]
       @fee          = params[:fee]
       @date_from    = params[:date_from]
       @date_to      = params[:date_to]
       @user_id      = params[:user_id]
       @accommo_id   = params[:accommo_id]
       #reservationモデルにvalidatesは設定しているが、次の予約確認のビューの金額計算でエラーが出る為以下の記述を追加
       if !params[:date_to].present?#チェックアウト日が入力されていない場合
             redirect_to new_reservation_url(id: @accommo_id) and return
       elsif !params[:date_from].present?#チェックイン日が入力されていない場合
             redirect_to new_reservation_url(id: @accommo_id) and return
       end
      
       if params[:date_to] < params[:date_from]#チェックアウトの日がチェックイン日より前の場合は無効
             redirect_to new_reservation_url(id: @accommo_id) and return
       end  
   end
   def create
       @reservation = Reservation.new(
                                      name:params[:name],    
                                      fee: params[:fee] ,
                                      guests: params[:guests],
                                      date_from: params[:date_from],
                                      date_to: params[:date_to],
                                      user_id: params[:user_id]
                                     )
        
        accommo_id = params[:accommo_id] #施設id
        if params[:return].present?
             redirect_to new_reservation_url(id: accommo_id)#newアクションに再びidを渡すため
        else @reservation.save
             redirect_to("/reservation/confirm")
        end
   end

  
   def new #ルーム新規予約
       @reservation = Accommodation.find_by(id: params[:id]) #施設のid
       @user_id = session[:user_id]
   end
  

#-------------------------以下、独自設定アクション------------------------------------
  
   def confirm #予約完了画面
       @reservation = Reservation.last
   end
end
