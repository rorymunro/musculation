require 'spec_helper'

describe "Static pages" do

subject { page }

  describe "Home page" do
    before { visit root_path }

    it { should have_content('Musculation') }
    it { should have_title(full_title('')) }
    it { should_not have_title('| Home') }
  end

  describe "Forum page" do
    before { visit forum_path }

    it { should have_content('Forum') }
    it { should have_title(full_title('Forum')) }
  end

  describe "About page" do
    before { visit about_path }

    it { should have_content('About') }
    it { should have_title(full_title('About')) }
  end

  describe "Regime page" do
    before { visit regime_path }

    it { should have_content('Regime') }
    it { should have_title(full_title('Regime')) }
  end

end
