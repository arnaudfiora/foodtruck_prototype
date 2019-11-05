class ApplicationController < ActionController::Base
  def afer_sign_in_path_for(resource)
  stored_location_for(resource) || foodtrucks_index_path
  end
end
