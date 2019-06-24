defmodule GameTest do
  use ExUnit.Case
  doctest Game

  alias Game
  alias Board

  test "can create empty 5x5 game with 2 players" do

    {:ok, black} = Player.new("dave", 3)
    {:ok, white} = Player.new("john", 2)

    assert {
             :ok,
             %Game{
               board: %Board{
                 size: 5,
                 stones: []
               },
               black: black,
               white: white
             }
           } === Game.new(5, black, white)
  end

  test "cannot create board larger than 19x19" do
    assert {:err, :invalid_board_size} = Game.new(
             20,
             %Player{name: "black", grade: 3},
             %Player{name: "white", grade: 3}
           )
  end
end
