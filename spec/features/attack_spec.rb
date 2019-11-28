feature "attack button" do
  scenario "returns a confirmation when Player 1 attacks Player 2" do
    sign_in_and_play
    click_button "ATTACK!"
    expect(page).to have_content "Harry took damage!"
  end
end
