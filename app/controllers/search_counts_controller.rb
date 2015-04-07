class SearchCountsController < ApplicationController
  before_action :set_search_count, only: [:show, :edit, :update, :destroy]

  # GET /search_counts
  # GET /search_counts.json
  def index
    @search_counts = SearchCount.all
  end

  # GET /search_counts/1
  # GET /search_counts/1.json
  def show
  end

  # GET /search_counts/new
  def new
    @search_count = SearchCount.new
  end

  # GET /search_counts/1/edit
  def edit
  end

  # POST /search_counts
  # POST /search_counts.json
  def create
    @search_count = SearchCount.new(search_count_params)

    respond_to do |format|
      if @search_count.save
        format.html { redirect_to @search_count, notice: 'Search count was successfully created.' }
        format.json { render :show, status: :created, location: @search_count }
      else
        format.html { render :new }
        format.json { render json: @search_count.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /search_counts/1
  # PATCH/PUT /search_counts/1.json
  def update
    respond_to do |format|
      if @search_count.update(search_count_params)
        format.html { redirect_to @search_count, notice: 'Search count was successfully updated.' }
        format.json { render :show, status: :ok, location: @search_count }
      else
        format.html { render :edit }
        format.json { render json: @search_count.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /search_counts/1
  # DELETE /search_counts/1.json
  def destroy
    @search_count.destroy
    respond_to do |format|
      format.html { redirect_to search_counts_url, notice: 'Search count was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_search_count
      @search_count = SearchCount.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def search_count_params
      params.require(:search_count).permit(:counter)
    end
end
