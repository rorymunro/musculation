require 'spec_helper'

<<<<<<< HEAD
describe "Static Pages" do

  let(:base_title) { "Musculation" }
  	
  	describe "Home page" do

  		it "should have the content 'musculation'" do
  			visit '/static_pages/home'
  			expect(page).to have_content('musculation')
 end
      it "should have a title avec musculation" do
        visit '/static_pages/home'
        expect(page).to have_title("#{base_title} | Home")
      end
  end
=======
describe "Static pages" do
>>>>>>> filling-in-layout

subject { page }

  describe "Home page" do
    before { visit root_path }

<<<<<<< HEAD
  		it "should have the content 'regime'" do
  			visit '/static_pages/regime'
  			expect(page).to have_content('regime')
end
it "should have a title avec regime, musculation" do
        visit '/static_pages/regime'
        expect(page).to have_title("#{base_title} | Regime")
      end
  end

  describe "forum page" do

      it "should have the content 'forum'" do
        visit '/static_pages/forum'
        expect(page).to have_content ('forum')
 
    end
    it "should have a title avec forum, musculation" do
        visit '/static_pages/forum'
        expect(page).to have_title("#{base_title} | Forum")
      end
  end
describe "about page" do

      it "should have the content 'about'" do
        visit '/static_pages/about'
        expect(page).to have_content('about')
 
    end
    it "should have a title avec about, musculation" do
        visit '/static_pages/about'
        expect(page).to have_title("#{base_title} | About")
      end
=======
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
>>>>>>> filling-in-layout
  end

  describe "Regime page" do
    before { visit regime_path }

    it { should have_content('Regime') }
    it { should have_title(full_title('Regime')) }
  end

end
