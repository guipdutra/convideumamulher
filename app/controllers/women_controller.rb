class WomenController < ApplicationController
  before_action :set_woman, only: [:show, :edit, :update, :destroy]

  # GET /women
  # GET /women.json
  def index
    @women = Woman.all
  end

  # GET /women/1
  # GET /women/1.json
  def show
  end

  # GET /women/new
  def new
    @woman = Woman.new
  end

  # GET /women/1/edit
  def edit
  end

  # POST /women
  # POST /women.json
  def create
    @woman = Woman.new(woman_params)

    respond_to do |format|
      if @woman.save
        format.html { redirect_to @woman, notice: 'Woman was successfully created.' }
        format.json { render :show, status: :created, location: @woman }
      else
        format.html { render :new }
        format.json { render json: @woman.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /women/1
  # PATCH/PUT /women/1.json
  def update
    respond_to do |format|
      if @woman.update(woman_params)
        format.html { redirect_to @woman, notice: 'Woman was successfully updated.' }
        format.json { render :show, status: :ok, location: @woman }
      else
        format.html { render :edit }
        format.json { render json: @woman.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /women/1
  # DELETE /women/1.json
  def destroy
    @woman.destroy
    respond_to do |format|
      format.html { redirect_to women_url, notice: 'Woman was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_woman
      @woman = Woman.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def woman_params
      params.require(:woman).permit(:name, :area, :current_position, :linkedin)
    end
end
