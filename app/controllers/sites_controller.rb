class SitesController < ApplicationController

  def index
    @sites = Site.all
  end

  def new
    @site = Site.new
  end

  def create
    @site = Site.new(site_params)
    if @site.save
      redirect_to sites_path, notice: 'Successfully created'
    else
      render :new
    end
  end

  private

  def site_params
    params.require(:site).permit(:name, :url, :latitude, :longitude, :description)
  end

end
