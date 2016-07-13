class NewaplicationsController < ApplicationController
  before_action :set_newaplication, only: [:show, :edit, :update, :destroy]

  # GET /newaplications
  # GET /newaplications.json
  def index
    @newaplications = Newaplication.all
  end

  # GET /newaplications/1
  # GET /newaplications/1.json
  def show
  end

  # GET /newaplications/new
  def new
    @newaplication = Newaplication.new
  end

  # GET /newaplications/1/edit
  def edit
  end

  # POST /newaplications
  # POST /newaplications.json
  def create
    @newaplication = Newaplication.new(newaplication_params)

    respond_to do |format|
      if @newaplication.save
        format.html { redirect_to @newaplication, notice: 'Newaplication was successfully created.' }
        format.json { render :show, status: :created, location: @newaplication }
      else
        format.html { render :new }
        format.json { render json: @newaplication.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /newaplications/1
  # PATCH/PUT /newaplications/1.json
  def update
    respond_to do |format|
      if @newaplication.update(newaplication_params)
        format.html { redirect_to @newaplication, notice: 'Newaplication was successfully updated.' }
        format.json { render :show, status: :ok, location: @newaplication }
      else
        format.html { render :edit }
        format.json { render json: @newaplication.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /newaplications/1
  # DELETE /newaplications/1.json
  def destroy
    @newaplication.destroy
    respond_to do |format|
      format.html { redirect_to newaplications_url, notice: 'Newaplication was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_newaplication
      @newaplication = Newaplication.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def newaplication_params
      params.fetch(:newaplication, {})
    end
end
