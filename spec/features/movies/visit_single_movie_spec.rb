require "rails_helper"

RSpec.feature "Visit single movie", :type => :feature do
  let(:user) { create(:user) }
  let(:movie) { create(:movie) }

  scenario "User goes to a single movie from the home page", js: true do
    movie
    visit root_path
    page.find(".single-post-card").click
    expect(page).to have_selector('body .modal')
    page.find('.interested a').click
    expect(page).to have_selector('#single-post-content p', text: movie.content)
  end

end