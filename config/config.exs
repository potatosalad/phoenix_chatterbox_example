# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :phoenix_chatterbox_example, PhoenixChatterboxExample.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Q+X3xTlI0vA/B7hFJRlm9o9Prd1znFYcfc1SMpb68wpEH9IM2yOxnA6ARLCCRYqn",
  render_errors: [view: PhoenixChatterboxExample.ErrorView, accepts: ~w(html json)],
  pubsub: [name: PhoenixChatterboxExample.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Stop lager redirecting :error_logger messages
config :lager, :error_logger_redirect, false
# Stop lager removing Logger's :error_logger handler
config :lager, :error_logger_whitelist, [Logger.ErrorHandler]
# Stop lager writing a crash log
config :lager, :crash_log, false
# Use LagerLogger as lager's only handler.
config :lager, :handlers, [{LagerLogger, [level: :debug]}]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
