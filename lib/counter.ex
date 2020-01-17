defmodule Counter do
  def read do
    GenServer.call(Counter.Worker, :read)
  end

  def increment do
    GenServer.cast(GenServer.Worker, :inc)
  end
end
