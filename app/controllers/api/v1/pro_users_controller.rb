class Api::V1::ProUsersController < ApiController
    before_action :set_pro_user, only: [:show]

    # 拾えなかったExceptionが発生したら500 Internal server errorを応答する
    rescue_from Exception, with: :render_status_500

    # ActiveRecordのレコードが見つからなければ404 not foundを応答する
    rescue_from ActiveRecord::RecordNotFound, with: :render_status_404

    def index
      pro_users = ProUser.select(:id, :name)
      render json: pro_users
    end

    def show
      render json: @pro_user
    end

    def create
      pro_user = ProUser.new(pro_user_params)
      if pro_user.save
        render json: pro_user, status: :created
      else
        render json: { errors: pro_user.errors.full_messages }, status: :unprocessable_entity
      end
    end

    private
      def set_pro_user
        @pro_user = ProUser.find(params[:id])
      end

      def pro_user_params
        params.fetch(:pro_user, {}).permit(:name)
      end

      def render_status_404(exception)
        render json: { errors: [exception] }, status: 404
      end

      def render_status_500(exception)
        render json: { errors: [exception] }, status: 500
      end
  end