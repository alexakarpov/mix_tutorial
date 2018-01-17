defmodule KV do
  use Application

  @moduledoc """
  Documentation for KV.
  """

  def start(_type, _args) do
    KV.Supervisor.start_link(name: KV.Supervisor)
  end

  @doc """
  Hello world.

  ## Examples

      iex> KV.hello
      :world

  """
  def hello do
    :world
  end
end
