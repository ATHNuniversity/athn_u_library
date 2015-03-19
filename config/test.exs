use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :athn_u_library, AthnULibrary.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :athn_u_library, AthnULibrary.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "athn_u_library_test",
  size: 1,
  max_overflow: false
