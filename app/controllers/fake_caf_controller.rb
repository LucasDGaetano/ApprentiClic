class FakeCafController < ApplicationController
  skip_before_action :authenticate_user!, only: :welcome

  def welcome
  end

  def my_resources
  end

  def my_profile
  end

  def my_profile_details
  end

  def amount
  end
end
