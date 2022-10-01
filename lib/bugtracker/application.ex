defmodule Bugtracker.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      Bugtracker.Repo,
      # Start the Telemetry supervisor
      BugtrackerWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: Bugtracker.PubSub},
      # Start the Endpoint (http/https)
      BugtrackerWeb.Endpoint
      # Start a worker by calling: Bugtracker.Worker.start_link(arg)
      # {Bugtracker.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Bugtracker.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    BugtrackerWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
