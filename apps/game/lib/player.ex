defmodule Player do
  @moduledoc """
  Represents a player in the game
"""
  alias __MODULE__

  @grade_range -9..30

  @enforce_keys [:name, :grade]
  defstruct [:name, :grade]

  @doc """
    Creates a new player

    ## Examples

       iex> Player.new("dave",3)
       {:ok, %Player{
          name: "dave",
          grade: 3}}

       iex> Player.new("dave",31)
       {:err, :grade_range_is_minus_9_to_30}

  """
  def new(name, grade) when grade in(@grade_range), do:
    {:ok, %Player{name: name, grade: grade}}

  def new(_,_), do:   {:err, :grade_range_is_minus_9_to_30}
end