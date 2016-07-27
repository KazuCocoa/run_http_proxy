# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
use Mix.Config

# This configuration is loaded before any dependency and is restricted
# to this project. If another project depends on this project, this
# file won't be loaded nor affect the parent project. For this reason,
# if you want to provide default values for your application for
# 3rd-party users, it should be done in your "mix.exs" file.

# You can configure for your application as:
#
#     config :run_http_proxy, key: :value
#
# And access this configuration in your application as:
#
#     Application.get_env(:run_http_proxy, :key)
#
# Or configure a 3rd-party app:
#
#     config :logger, level: :info
#

# It is also possible to import configuration files, relative to this
# directory. For example, you can emulate configuration per environment
# by uncommenting the line below and defining dev.exs, test.exs and such.
# Configuration from the imported file will override the ones defined
# here (which is why it is important to import them last).
#
#     import_config "#{Mix.env}.exs"

config :http_proxy,
  proxies: [
             %{port: 8080,
               to:   "https://google.com"},
             %{port: 8081,
               to:   "http://yahoo.com"}
            ],
  timeout: 20_000, # ms
  record: false,
  play: false,
  export_path: "test/example",
  play_path: "test/data"

config :logger, :console,
  format: "\n$date $time [$level] $metadata$message",
  metadata: [:user_id],
  level: :debug
