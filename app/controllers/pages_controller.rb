class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :contact, :about]

  def about
  end

  def contact
  end

  def home
  end
end
