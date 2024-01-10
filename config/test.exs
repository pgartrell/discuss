import Config

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :discuss_test, DiscussTest.Repo,
  username: "postgres",
  password: "postgres",
  hostname: "localhost",
  database: "discuss_test_test#{System.get_env("MIX_TEST_PARTITION")}",
  pool: Ecto.Adapters.SQL.Sandbox,
  pool_size: 10

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :discuss_test, DiscussTestWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "x3J12ZQ4cWtE2zt9ex8eseHh3m0RgwsZahyZlVWONIeGL2CSfQ6DWY8HPoH2jBgD",
  server: false

# In test we don't send emails.
config :discuss_test, DiscussTest.Mailer, adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
