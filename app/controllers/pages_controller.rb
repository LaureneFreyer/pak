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

  def animal_cause
    # Votre logique métier ici si nécessaire
  end

end
