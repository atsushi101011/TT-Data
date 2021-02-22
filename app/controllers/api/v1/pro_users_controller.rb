class Api::V1::ProUsersController < ApiController
    before_action :set_pro_user, only: [:show]

    # ActiveRecordのレコードが見つからなければ404 not foundを応答する
    rescue_from ActiveRecord::RecordNotFound do |exception|
      render json: { error: '404 not found' }, status: 404
    end

    def index
      pro_users = ProUser.select(:id, :name)
      render json: pro_users
    end

    def show
      render json: @pro_user
    end

    private
      def set_pro_user
        @pro_user = ProUser.find(params[:id])
      end
  end