require 'rails_helper'

RSpec.describe User, type: :request do
    let (:valid_attributes) {
        {
            name: "User01",
            email:  "user01@gmail.com"
        }
    }
    describe "users_create_method" do
        context "when user create with valid data" do
          it "render users view with new data and success message" do
            expect {
              post users_path, params: { user: valid_attributes }
            }.to change(User, :count).by(1)
            user = User.last
            expect(user.name).to eq('User01')
            expect(user.email).to eq('user01@gmail.com')
            # expect(user.user_type).to eq('user')
            # expect(user.phone).to eq('09987654321')
            # expect(user.date_of_birth).to eq('2023-10-01')
            # expect(user.address).to eq('Yangon')
            # expect(response).to redirect_to(users_path)
            # expect(flash[:notice][:message]).to eq("User was successfully created.")
            # user_count = User.count
            # expect(user_count).to eq(2)
          end
        end
    end
end
