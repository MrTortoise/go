defmodule Game do
  alias __MODULE__

  alias Board
  @moduledoc """
  Handles the creation and making moves on a board (placing, capturing, ko, passing, scoring)
  """

  @enforce_keys [:board]
  defstruct [:board]

  @doc """
    Creates a new game of go

    ## Examples

       iex> Game.new(5)
       {:ok, %Game{
          board: %Board{
             size: 5,
             stones: []}}}

  """
  def new(size) do
    with {:ok, board} <- Board.new(size)
      do
      {:ok, %Game{board: board}}
    else
      error -> error
    end
  end
end
