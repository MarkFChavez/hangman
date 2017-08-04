defmodule GameTest do
  use ExUnit.Case
  doctest Hangman.Game

  test "it has the proper initial state" do
    game = Hangman.Game.init()

    assert game.turns_left == 7
    assert game.game_state == :initializing
    assert length(game.letters) > 0
  end
end
