class Api::V1::Ads::ApiAdsController < Api::V1::BaseApiController

  def search
    conditions = params.select {|k,v| ['country', 'city', 'region', 'offer', 'user_email'].include? k.to_s}
    ads = Ad.api_search(conditions)
    render json: ads
  end

  def show
    if params[:id]
      render json: Ad.find_by(id: params[:id])
    else
      render nothing: true, status: :bad_request
    end
  end

end
