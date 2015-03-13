class ResultlistsController < ApplicationController
  before_action :set_resultlist, only: [:show, :edit, :update, :destroy]

  # GET /resultlists
  # GET /resultlists.json
  def index
    @resultlists = Resultlist.all
  end

  # GET /resultlists/1
  # GET /resultlists/1.json
  def show
  end

  # GET /resultlists/new
  def new
    @resultlist = Resultlist.new
  end

  # GET /resultlists/1/edit
  def edit
  end

  # POST /resultlists
  # POST /resultlists.json
  def create
    @resultlist = Resultlist.new(resultlist_params)

    respond_to do |format|
      if @resultlist.save
        format.html { redirect_to @resultlist, notice: 'Resultlist was successfully created.' }
        format.json { render :show, status: :created, location: @resultlist }
      else
        format.html { render :new }
        format.json { render json: @resultlist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /resultlists/1
  # PATCH/PUT /resultlists/1.json
  def update
    respond_to do |format|
      if @resultlist.update(resultlist_params)
        format.html { redirect_to @resultlist, notice: 'Resultlist was successfully updated.' }
        format.json { render :show, status: :ok, location: @resultlist }
      else
        format.html { render :edit }
        format.json { render json: @resultlist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /resultlists/1
  # DELETE /resultlists/1.json
  def destroy
    @resultlist.destroy
    respond_to do |format|
      format.html { redirect_to resultlists_url, notice: 'Resultlist was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_resultlist
      @resultlist = Resultlist.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def resultlist_params
      params.require(:resultlist).permit(:title, :address, :city, :state, :zip, :rating, :reviews, :url, :image)
    end
end
