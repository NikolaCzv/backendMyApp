class Api::V1::UsersController < ApplicationController
    def index
        users = User.all
        
        render json: users, include: :posts
    end

    def login
        user = User.find_by(username: params['username'])
        if user && user.authenticate(params['password'])
          token =  JWT.encode({id: user.id}, 'secretkey', 'HS256')
          render json: { id: user.id, username: user.username, email: user.email, token: token }
        else
          render json: { error: 'invalid credentials' }, status: 401
        end
    end

    def create
      user = User.create(username: params[:username], password: params[:password], password_confirmation: params[:password_confirmation], email: params[:email])
      if user.valid?
        token =  JWT.encode({id: user.id}, 'secretkey', 'HS256')
        render json: { id: user.id, username: user.username, email: user.email, token: token}, status: :created
      else
        render json: { error: 'Failed to create an account' }, status: 401
      end
    end
    
    def show
        token = request.headers['Authorization'].split(' ')[1]
        decode = JWT.decode token, 'secretkey', true, { algorithm: 'HS256' }
        user_id = decode[0]['id']
        user = User.find(user_id)
    
        if(user)
          render json: user
        else
          render json: { error: 'invalid token' }, status: 401
        end
    end

    def show_user
      user = User.find(params[:id])

      render json: user, include: :posts
    end

  def edit
      user = User.find(params[:id])

      render json: user
  end

  def update
      user = User.find(params[:id])
      user.update(params.require(:user).permit(:username, :email))

      render json: user
  end

  def destroy
    user = User.find(params[:id]).destroy

    render json: user
 end

 def user_followees
  user = User.find(params[:id])
  followees = user.followees

  render json: followees
 end
end
