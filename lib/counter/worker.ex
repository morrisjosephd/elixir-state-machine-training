defmodule Counter.Worker do
  use GenServer

  # tells genserver to start
  def start_link(args) do
    GenServer.start_link(__MODULE__, args, name: __MODULE__)
  end

  def init(_args) do
    {:ok, 0}
  end

  def handle_call(:read, _from, state) do
    {:reply, state, state}
  end

  def handle_cast(:inc, state) do
    state = state + 1

    {:noreply, state}
  end
end
