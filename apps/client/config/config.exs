# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

# Configures the endpoint
config :client, ClientWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "P+bsA7u0v0roFelHOVVRTNcb2LsEq2ycFD33uBFVBFcYO4bmA9DNJ9cCE93b6A94",
  render_errors: [view: ClientWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Client.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [signing_salt: "YzEjI2cZneEdsPZnHrangYKIXlp17nnr"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

config :phoenix,
       template_engines: [leex: Phoenix.LiveView.Engine]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"


