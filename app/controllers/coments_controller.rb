class ComentsController < ApplicationController
  before_action :set_coment, only: %i[ show update destroy ]

  # GET /coments
  def index
    @coments = Coment.all

    render json: @coments
  end

  # GET /coments/1
  def show
    render json: @coment
  end

  # POST /coments
  def create
    @coment = Coment.new(coment_params)

    if @coment.save
      render json: @coment, status: :created, location: @coment
    else
      render json: @coment.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /coments/1
  def update
    if @coment.update(coment_params)
      render json: @coment
    else
      render json: @coment.errors, status: :unprocessable_entity
    end
  end

  # DELETE /coments/1
  def destroy
    @coment.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_coment
      @coment = Coment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def coment_params
      params.require(:coment).permit(:user_name, :comment)
    end
end
