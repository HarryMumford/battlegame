def sign_in_and_play
  visit('/')
  fill_in "player1", with: "Kealan"
  fill_in "player2", with: "Harry"
  click_on "Submit"
end