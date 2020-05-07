# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :cookpod,
  ecto_repos: [Cookpod.Repo]

# Configures the endpoint
config :cookpod, CookpodWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "hOgoJeA6GjUOztVmPzRwlfYdfv8bP5qEL+AoeuPTeuadVaV5bzxh2cNB+fVdjGZq",
  render_errors: [view: CookpodWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Cookpod.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [signing_salt: "qRaW+eV9"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

config :phoenix, :template_engines,
  slim: PhoenixSlime.Engine,
  slime: PhoenixSlime.Engine,
  slimleex: PhoenixSlime.LiveViewEngine # If you want to use LiveView

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
