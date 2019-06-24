defmodule Board do
  @moduledoc false

  alias __MODULE__

  @board_range 1..19

  @enforce_keys [:size, :stones]
  defstruct [:size, :stones]

  def new(size) when size in(@board_range), do:
    {:ok, %Board{size: size, stones: []}}

  def new(_), do:
    {:err, :invalid_board_size}

end
