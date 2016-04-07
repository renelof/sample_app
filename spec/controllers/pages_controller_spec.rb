require 'rails_helper'
require 'spec_helper'
require 'rspec/expectations'
include Capybara::RSpecMatchers
RSpec.describe PagesController, :type => :controller do
  describe "GET #home" do
    it "returns http success" do
      get :home
      expect(response).to have_http_status(:success)
    end

    it "should have the right title" do
	get :home
        #expect(response.body).to have_selector('title', text: 'HomeR', visible: false) 
	expect(response.body).to have_title("Ruby on Rails Tutorial Sample App | Home")
    end

    it "should not have blank-spaces" do
	get :home
        #expect(response.body).to have_selector('title', text: 'HomeR', visible: false) 
	expect(response.body).not_to have_content(/<body>\s*<\/body>/)
    end

  end

  describe "GET #about" do
    it "returns http success" do
      get :about
      expect(response).to have_http_status(:success)
    end
    it "should have the right title" do
	get :about        
	expect(response.body).to have_title("Ruby on Rails Tutorial Sample App | About")
    end

  end

describe "GET #contact" do
    it "returns http success" do
      get :contact
      expect(response).to have_http_status(:success)
    end
    it "should have the right title" do
	get :contact        
	expect(response.body).to have_title("Ruby on Rails Tutorial Sample App | Contact")
    end    	
  end

end
