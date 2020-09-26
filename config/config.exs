# This file is responsible for configuring your umbrella
# and **all applications** and their dependencies with the
# help of Mix.Config.
#
# Note that all applications in your umbrella share the
# same configuration and dependencies, which is why they
# all use the same configuration file. If you want different
# configurations or dependencies per app, it is best to
# move said applications out of the umbrella.
use Mix.Config

# Configure Mix tasks and generators
config :infer,
  ecto_repos: [Infer.Repo]

config :infer_web,
  ecto_repos: [Infer.Repo],
  generators: [context_app: :infer]

# Configures the endpoint
config :infer_web, InferWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Y+G7MiS0DK0Nv0bbuJsOR0ePdVF2faproBl5XUh7C8bzEsESFKfI7vteYD22jN3z",
  render_errors: [view: InferWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Infer.PubSub,
  live_view: [signing_salt: "unELCBok"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
