# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :elic_api,
  ecto_repos: [ElicApi.Repo]

# Configures the endpoint
config :elic_api, ElicApiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "gzJ5dx4sHUiA73FFssOwrebrbbZyKNfzwIU9WfVaY4Oi2K0JARUCb3EVo6PsW3PQ",
  render_errors: [view: ElicApiWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: ElicApi.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"