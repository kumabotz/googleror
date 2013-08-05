require 'spec_helper'

describe "StaticPages" do
  let(:base_title) { 'Google in RoR' }
  describe "Home page" do
    it "should have the h1 'Google in RoR'" do
      visit root_path
      page.should have_selector('h1', :text => 'Google in RoR')
    end

    it "should have the base title" do
      visit root_path
      page.should have_selector('title', :text => "#{base_title}")
    end

    it "should not have a custom page title" do
      visit root_path
      page.should_not have_selector('title', :text => '- Home')
    end
  end

  describe "About page" do
    it "should have the h1 'About Google'" do
      visit about_path
      page.should have_selector('h1', :text => 'About Google')
    end

    it "should have the title 'About Google'" do
      visit about_path
      page.should have_selector('title',
          :text => "#{base_title} - About Google")
    end
  end
end
