class HomeController < ApplicationController
  def index
    @search = params["search"]

    if not @search.nil?
      @name = @search["name"]

      by_tittle  = Campaign.filter_by_title(@name)
      by_tag =Campaign.tagged_with(@name)

      if by_tag.nil?
        @campaigns = by_tittle
      else
        @campaigns = by_tittle + by_tag
      end

    end
  end

end
