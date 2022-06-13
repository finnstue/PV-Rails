class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :contact, :about, :interview]

  def about
  end

  def contact
  end

  def home
  end

  def interview
  end
end
