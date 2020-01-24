defmodule Counter do
  def read do
    GenServer.call(Counter.Worker, :read)
  end

  def inc do
    GenServer.cast(Counter.Worker, :inc)
  end
end
