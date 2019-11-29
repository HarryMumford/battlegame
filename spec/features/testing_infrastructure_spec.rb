feature "homepage" do
  scenario "it says the title" do
    visit('/')
    expect(page).to have_content("Welcome to the battle!")
  end

  scenario "it show players names on screen after they enter them" do
    sign_in_and_play
    expect(page).to have_content("Kealan vs Harry")
  end 
end