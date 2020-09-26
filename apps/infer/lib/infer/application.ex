defmodule Infer.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      Infer.Repo,
      # Start the PubSub system
      {Phoenix.PubSub, name: Infer.PubSub}
      # Start a worker by calling: Infer.Worker.start_link(arg)
      # {Infer.Worker, arg}
    ]

    Supervisor.start_link(children, strategy: :one_for_one, name: Infer.Supervisor)
  end
end
