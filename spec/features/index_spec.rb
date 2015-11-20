require 'spec_helper'

feature 'Landing page', type: :feature do
  before do
    visit '/'
  end

  scenario 'displays content' do
    expect(page).to have_selector 'h1'
  end
end
