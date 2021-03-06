# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the router
config :phoenix, ComicBaker.Router,
  url: [host: "localhost"],
  http: [port: System.get_env("PORT")],
  https: false,
  secret_key_base: "isweYE3cG4ftHTP3Hh5bbAYTJC2Wavm8zYVzEw8lMVA4en8YQg56qaHNH6d126MDqVABhXSEGDkgSOGGtcCJGg==",
  catch_errors: true,
  debug_errors: false,
  error_controller: ComicBaker.PageController

# Session configuration
config :phoenix, ComicBaker.Router,
  session: [store: :cookie,
            key: "_comic_baker_key"],
  parsers: [parsers: [:urlencoded, :multipart, :json],
            accept: ["*/*"],
            json_decoder: Poison,
            length: 10_000_000_000]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
