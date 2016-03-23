class ProfilesController < ApplicationController
  before_action :authenticate, only: :show

  def index
    @profiles = Profile.all
  end

  def show
    @profile = Profile.find(params[:id])
  end
end
