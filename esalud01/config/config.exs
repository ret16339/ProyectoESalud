# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :esalud01,
  ecto_repos: [Esalud01.Repo]

# Configures the endpoint
config :esalud01, Esalud01.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "5PEp78w4eyl5QCqQikNrOkg9qSzSVnjnxeG6HNqmzQfguDxCC+Z4bcmB1YIbJMxh",
  render_errors: [view: Esalud01.ErrorView, accepts: ~w(json)],
  pubsub: [name: Esalud01.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
