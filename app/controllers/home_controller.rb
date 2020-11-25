class HomeController < ApplicationController
  def index

    @search = params["search"]
    # binding.pry
    if not @search.nil?
      @name = @search["name"]
      @campaigns = Campaign.filter_by_title(@name)
    end

  end
end
