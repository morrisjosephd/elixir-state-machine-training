defmodule Counter.Worker do
  use GenServer

  alias Counter.Logic

  # tells genserver to start
  def start_link(args) do
    GenServer.start_link(__MODULE__, args, name: __MODULE__)
  end

  def init(_args) do
    {:ok, Logic.init()}
  end

  def handle_call(:read, _from, state) do
    {:reply, Logic.read(state), state}
  end

  def handle_cast(:inc, state) do
    {:noreply, Logic.inc(state)}
  end
end
