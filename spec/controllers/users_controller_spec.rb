require 'rails_helper'

Rails.describe UsersController, type: :controller do 

    let(:user){FactoryBot.create(:user)}
    describe 'GET index' do 
      it "assigns users" do 
        
        get :index 
        # expect(assigns(:users)).to eq([user]).
        expect(response.status).to eq 200
  
      end
    end
      describe 'POST ' do
        context 'with valid params' do
          it 'creates a new Post' do
            expect {
              post :create, params: { name: "gjhf" , email: 'gkljg@gmial.com', city: 'indore'}
            }
          end
        end
      end

      describe 'Put' do
        it 'update a new post' do 
          # debugger
          put :update, params:{data:{"name":"rohan", "email":"ro@gmail.com", "city":"indore"}}
          expect(response.status).to eq 200
        end
      end
    
end
   
       



