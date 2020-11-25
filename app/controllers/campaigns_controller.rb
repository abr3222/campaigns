class CampaignsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_campaign, only: [:show, :edit, :update, :destroy]
  before_action :estimated_duration_to_i , only: [:update , :create]

  # GET /campaigns
  # GET /campaigns.json
  def index
    @campaigns = Campaign.all
    @campaigns_by_filer = Campaign.filter(params.slice(:status, :location, :starts_with))
  end

  # GET /campaigns/1
  # GET /campaigns/1.json
  def show
  end

  # GET /campaigns/new
  def new
    @campaign = Campaign.new
  end

  # GET /campaigns/1/edit
  def edit
  end

  # POST /campaigns
  # POST /campaigns.json
  def create
    # binding.pry
    @campaign = Campaign.new(campaign_params)
    #Set the User Id So Not Need to pass from the FRONT END Side at the Time of
    @campaign.user_id = current_user.id

    respond_to do |format|
      if @campaign.save
        format.html { redirect_to @campaign, notice: 'Campaign was successfully created.' }
        format.json { render :show, status: :created, location: @campaign }
      else
        format.html { render :new }
        format.json { render json: @campaign.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /campaigns/1
  # PATCH/PUT /campaigns/1.json
  def update
    respond_to do |format|

      if @campaign.update(campaign_params)
        format.html { redirect_to @campaign, notice: 'Campaign was successfully updated.' }
        format.json { render :show, status: :ok, location: @campaign }
      else
        format.html { render :edit }
        format.json { render json: @campaign.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /campaigns/1
  # DELETE /campaigns/1.json
  def destroy
    @campaign.destroy
    respond_to do |format|
      format.html { redirect_to campaigns_url, notice: 'Campaign was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  private
  # Use callbacks to share common setup or constraints between actions.
    def set_campaign
      @campaign = Campaign.find(params[:id])
    end

    def estimated_duration_to_i
      params["campaign"]["estimated_duration"] = params["campaign"]["estimated_duration"].to_i
    end

  # Only allow a list of trusted parameters through.
    def campaign_params
      params.require(:campaign).permit(:title, :purpose, :estimated_duration, :user_id)
    end
end
