defmodule Game do
  alias __MODULE__

  alias Board
  @moduledoc """
  Handles the creation and making moves on a board (placing, capturing, ko, passing, scoring)
  """

  @enforce_keys [:board, :black, :white]
  defstruct [:board, :black, :white]

  @doc """
    Creates a new game of go

    ## Examples

       iex> Game.new(5, %Player{name: "black", grade: 3}, %Player{name: "white", grade: 3})
       {:ok, %Game{
          black: %Player{name: "black", grade: 3},
          white: %Player{name: "white", grade: 3},
          board: %Board{
             size: 5,
             stones: []}}}

  """
  def new(size, %Player{} =  black, %Player{} = white)  do
    with {:ok, board} <- Board.new(size)
      do
      {:ok, %Game{board: board, black: black, white: white}}
    else
      error -> error
    end
  end
end
