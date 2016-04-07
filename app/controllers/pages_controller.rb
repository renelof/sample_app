class PagesController < ApplicationController
 #layout false
  def home
	@title = "Home"
  end

  def contact
	@title = "Contact"
  end
  def about
	@title = "About"
  end
end
