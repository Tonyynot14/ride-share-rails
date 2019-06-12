class WelcomeController < ApplicationController
  layout :resolve_layout

  def welcome

  end

  def rider

  end

  def index

  end

  private

  def resolve_layout
    case action_name
    when "rider"
      "rider_layout"
    when "index"
      "administration"
    else
      "application"
    end
  end

end
