class FillupsController < ApplicationController
  before_action :set_fillup, only: [:show, :edit, :update, :destroy]

  # GET /fillups
  # GET /fillups.json
  def index
    @fillups = Fillup.all
  end

  # GET /fillups/1
  # GET /fillups/1.json
  def show
  end

  # GET /fillups/new
  def new
    @fillup = Fillup.new
  end

  # GET /fillups/1/edit
  def edit
  end

  # POST /fillups
  # POST /fillups.json
  def create
    @fillup = Fillup.new(fillup_params)

    respond_to do |format|
      if @fillup.save
        format.html { redirect_to @fillup, notice: 'Fillup was successfully created.' }
        format.json { render action: 'show', status: :created, location: @fillup }
      else
        format.html { render action: 'new' }
        format.json { render json: @fillup.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fillups/1
  # PATCH/PUT /fillups/1.json
  def update
    respond_to do |format|
      if @fillup.update(fillup_params)
        format.html { redirect_to @fillup, notice: 'Fillup was successfully updated.' }
        format.json { render action: 'show', status: :ok, location: @fillup }
      else
        format.html { render action: 'edit' }
        format.json { render json: @fillup.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fillups/1
  # DELETE /fillups/1.json
  def destroy
    @fillup.destroy
    respond_to do |format|
      format.html { redirect_to fillups_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fillup
      @fillup = Fillup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fillup_params
      params.require(:fillup).permit(:odometer, :price, :volume, :date, :missed, :partial)
    end
end
