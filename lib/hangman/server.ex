defmodule Hangman.Server do

  use GenServer

  alias Hangman.Game

  # PUBLIC METHODS

  def start_link do
    GenServer.start_link(__MODULE__, [])
  end

  # CALLBACKS

  def init(_) do
    {:ok, Game.init()}
  end

  def handle_call({:make_move, guess}, _from, game) do
    {new_game, tally} = Game.make_move(game, guess)
    {:reply, tally, new_game}
  end

end
