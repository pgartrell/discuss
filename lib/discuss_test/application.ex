defmodule DiscussTest.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      DiscussTest.Repo,
      # Start the Telemetry supervisor
      DiscussTestWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: DiscussTest.PubSub},
      # Start the Endpoint (http/https)
      DiscussTestWeb.Endpoint
      # Start a worker by calling: DiscussTest.Worker.start_link(arg)
      # {DiscussTest.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: DiscussTest.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    DiscussTestWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
