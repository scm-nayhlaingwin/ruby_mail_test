class UserServices
    def initialize(user_params)
      @user_params = user_params
    end
    
    def create
        @user = User.new(@user_params)
        if @user.valid?
            if @user.save
                @user
            else
                false
            end
        else
            false
        end
    end
end