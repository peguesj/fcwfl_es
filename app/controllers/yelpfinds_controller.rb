class YelpfindsController < ApplicationController
  before_action :set_yelpfind, only: [:show, :edit, :update, :destroy]

  # GET /yelpfinds
  # GET /yelpfinds.json
  def index
    @yelpfinds = Yelpfind.all
  end

  # GET /yelpfinds/1
  # GET /yelpfinds/1.json
  def show
  end

  # GET /yelpfinds/new
  def new
    @yelpfind = Yelpfind.new
  end

  # GET /yelpfinds/1/edit
  def edit
  end

  # POST /yelpfinds
  # POST /yelpfinds.json
  def create
    @yelpfind = Yelpfind.new(yelpfind_params)

    respond_to do |format|
      if @yelpfind.save
        format.html { redirect_to @yelpfind, notice: 'Yelpfind was successfully created.' }
        format.json { render :show, status: :created, location: @yelpfind }
      else
        format.html { render :new }
        format.json { render json: @yelpfind.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /yelpfinds/1
  # PATCH/PUT /yelpfinds/1.json
  def update
    respond_to do |format|
      if @yelpfind.update(yelpfind_params)
        format.html { redirect_to @yelpfind, notice: 'Yelpfind was successfully updated.' }
        format.json { render :show, status: :ok, location: @yelpfind }
      else
        format.html { render :edit }
        format.json { render json: @yelpfind.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /yelpfinds/1
  # DELETE /yelpfinds/1.json
  def destroy
    @yelpfind.destroy
    respond_to do |format|
      format.html { redirect_to yelpfinds_url, notice: 'Yelpfind was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_yelpfind
      @yelpfind = Yelpfind.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def yelpfind_params
      params[:yelpfind]
    end
end
