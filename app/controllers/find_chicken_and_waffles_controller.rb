class FindChickenAndWafflesController < ApplicationController
  before_action :set_find_chicken_and_waffle, only: [:show, :edit, :update, :destroy]

  # GET /find_chicken_and_waffles
  # GET /find_chicken_and_waffles.json
  def index
    @find_chicken_and_waffles = FindChickenAndWaffle.all
  end

  # GET /find_chicken_and_waffles/1
  # GET /find_chicken_and_waffles/1.json
  def show
  end

  # GET /find_chicken_and_waffles/new
  def new
    @find_chicken_and_waffle = FindChickenAndWaffle.new
  end

  # GET /find_chicken_and_waffles/1/edit
  def edit
  end

  # POST /find_chicken_and_waffles
  # POST /find_chicken_and_waffles.json
  def create
    @find_chicken_and_waffle = FindChickenAndWaffle.new(find_chicken_and_waffle_params)

    respond_to do |format|
      if @find_chicken_and_waffle.save
        format.html { redirect_to @find_chicken_and_waffle, notice: 'Find chicken and waffle was successfully created.' }
        format.json { render :show, status: :created, location: @find_chicken_and_waffle }
      else
        format.html { render :new }
        format.json { render json: @find_chicken_and_waffle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /find_chicken_and_waffles/1
  # PATCH/PUT /find_chicken_and_waffles/1.json
  def update
    respond_to do |format|
      if @find_chicken_and_waffle.update(find_chicken_and_waffle_params)
        format.html { redirect_to @find_chicken_and_waffle, notice: 'Find chicken and waffle was successfully updated.' }
        format.json { render :show, status: :ok, location: @find_chicken_and_waffle }
      else
        format.html { render :edit }
        format.json { render json: @find_chicken_and_waffle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /find_chicken_and_waffles/1
  # DELETE /find_chicken_and_waffles/1.json
  def destroy
    @find_chicken_and_waffle.destroy
    respond_to do |format|
      format.html { redirect_to find_chicken_and_waffles_url, notice: 'Find chicken and waffle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_find_chicken_and_waffle
      @find_chicken_and_waffle = FindChickenAndWaffle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def find_chicken_and_waffle_params
      params[:find_chicken_and_waffle]
    end
end
