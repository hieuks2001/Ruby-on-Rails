module SessionHelper
    def log_in users
        session[:user_id] = users
    end
    def log_out
        session.delete :user_id
    end
end
