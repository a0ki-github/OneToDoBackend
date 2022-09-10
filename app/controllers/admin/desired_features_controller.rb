class Admin::DesiredFeaturesController < ApplicationController
  before_action :set_desired_feature, only: %i[ show edit update destroy ]

  # GET /desired_features or /desired_features.json
  def index
    @desired_features = DesiredFeature.all
  end

  # GET /desired_features/1 or /desired_features/1.json
  def show
  end

  # GET /desired_features/new
  def new
    @desired_feature = DesiredFeature.new
  end

  # GET /desired_features/1/edit
  def edit
  end

  # POST /desired_features or /desired_features.json
  def create
    @desired_feature = DesiredFeature.new(desired_feature_params)

    respond_to do |format|
      if @desired_feature.save
        format.html { redirect_to admin_desired_feature_url(@desired_feature), notice: "Desired feature was successfully created." }
        format.json { render :show, status: :created, location: [:admin, @desired_feature] }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @desired_feature.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /desired_features/1 or /desired_features/1.json
  def update
    respond_to do |format|
      if @desired_feature.update(desired_feature_params)
        format.html { redirect_to admin_desired_feature_url(@desired_feature), notice: "Desired feature was successfully updated." }
        format.json { render :show, status: :ok, location: @desired_feature }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @desired_feature.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /desired_features/1 or /desired_features/1.json
  def destroy
    @desired_feature.destroy

    respond_to do |format|
      format.html { redirect_to admin_desired_features_url, notice: "Desired feature was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_desired_feature
      @desired_feature = DesiredFeature.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def desired_feature_params
      params.require(:desired_feature).permit(:name)
    end
end
