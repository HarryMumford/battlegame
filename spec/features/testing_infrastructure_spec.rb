feature "homepage" do
  scenario "it says Testing infrastructure working!" do
    visit('/')
    expect(page).to have_content("Testing infrastructure working!")
  end

  scenario "it show players names on screen after they enter them" do
    sign_in_and_play
    expect(page).to have_content("Kealan vs Harry")
  end 
end