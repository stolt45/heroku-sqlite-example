class ShowAdaptersController < ApplicationController
  before_action :set_show_adapter, only: [:show, :edit, :update, :destroy]

  # GET /show_adapters
  # GET /show_adapters.json
  def index
#    @show_adapters = ShowAdapter.all
  end

  # GET /show_adapters/1
  # GET /show_adapters/1.json
  def show
  end

  # GET /show_adapters/new
  def new
    @show_adapter = ShowAdapter.new
  end

  # GET /show_adapters/1/edit
  def edit
  end

  # POST /show_adapters
  # POST /show_adapters.json
  def create
    @show_adapter = ShowAdapter.new(show_adapter_params)

    respond_to do |format|
      if @show_adapter.save
        format.html { redirect_to @show_adapter, notice: 'Show adapter was successfully created.' }
        format.json { render :show, status: :created, location: @show_adapter }
      else
        format.html { render :new }
        format.json { render json: @show_adapter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /show_adapters/1
  # PATCH/PUT /show_adapters/1.json
  def update
    respond_to do |format|
      if @show_adapter.update(show_adapter_params)
        format.html { redirect_to @show_adapter, notice: 'Show adapter was successfully updated.' }
        format.json { render :show, status: :ok, location: @show_adapter }
      else
        format.html { render :edit }
        format.json { render json: @show_adapter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /show_adapters/1
  # DELETE /show_adapters/1.json
  def destroy
    @show_adapter.destroy
    respond_to do |format|
      format.html { redirect_to show_adapters_url, notice: 'Show adapter was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_show_adapter
      @show_adapter = ShowAdapter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def show_adapter_params
      params[:show_adapter]
    end
end
