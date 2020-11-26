class CommentsController < ApplicationController
  def create
    @campaign = Campaign.find(params[:campaign_id])
    # binding.pry
    @comment = @campaign.comments.create(params[:comment].permit(:name, :comment,:user_id))
    redirect_to campaign_path(@campaign)
  end

  def show
    #TODO: Delete code from here
    @campaign = Campaign.find(params[:campaign_id])
    @comment = @campaign.comments.find(params[:id])
    @comment.destroy
    redirect_to campaign_path(@campaign)
  end

  def destroy
    @campaign = Campaign.find(params[:campaign_id])
    @comment = @campaign.comments.find(params[:id])
    @comment.destroy
    redirect_to campaign_path(@campaign)
  end
end
