class AllCasaAdmins::FeatureFlagsController < ApplicationController
  def index
    @feature_flags = FeatureFlag.all
    # binding.pry
  end
end
