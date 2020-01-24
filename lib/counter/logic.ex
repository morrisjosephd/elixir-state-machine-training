defmodule Counter.Logic do
  def init do
    0
  end

  def read(state) do
    state
  end

  def inc(state) do
    state + 1
  end
end
