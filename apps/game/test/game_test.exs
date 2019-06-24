defmodule GameTest do
  use ExUnit.Case
  doctest Game

  alias Game
  alias Board

  test "can create empty 5x5 game" do
    assert {
             :ok,
             %Game{
               board: %Board{
                 size: 5,
                 stones: []
               }
             }
           } === Game.new(5)
  end

  test "cannot create board larger than 19x19" do
    assert {:err, :invalid_board_size} = Game.new(20)
  end
end
