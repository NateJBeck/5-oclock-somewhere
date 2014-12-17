class CountriesController < ApplicationController
  def index
    @gmc = Time.now.gmtime.strftime("%l%P")
    zone_where_its_five_oclock = (Time.now.gmtime.hour - 17) * (-1)
    @countries = Country.where(zone_rank: zone_where_its_five_oclock)
  end
end
