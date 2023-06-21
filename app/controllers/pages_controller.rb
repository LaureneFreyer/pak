class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
    @pets = Pet.all
  end

  def confidentiality
  end

  def terms
  end

  def site_map
  end

  def site_operation
  end

  def company_info
  end

end
