# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :cross_border,
  ecto_repos: [CrossBorder.Repo]

# Configures the endpoint
config :cross_border, CrossBorderWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "rt2gnHNAkvU7+8hA4l4wzUhtdpZtF2/+VERemcyjQwQfSaKDeJ06kNQT0M+TqwiV",
  render_errors: [view: CrossBorderWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: CrossBorder.PubSub,
  live_view: [signing_salt: "SGkIKprI"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
