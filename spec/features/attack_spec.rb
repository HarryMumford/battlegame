feature "attack button" do
  scenario "before an attack there is no attack message" do
    sign_in_and_play
    expect(page).to_not have_content("Successful attack!")
  end
  
  scenario "returns a confirmation when players attack" do
    sign_in_and_play
    click_button "ATTACK!"
    expect(page).to have_content("Successful attack!")
  end
end
