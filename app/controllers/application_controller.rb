class ApplicationController < ActionController::Base
    before_action :confirm_user, {except: [:new,:create,:login]}
    def confirm_user
        if session[:user_id] == nil
           render("/user/login_form")
        end
    end
end
