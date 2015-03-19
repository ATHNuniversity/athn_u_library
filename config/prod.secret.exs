use Mix.Config

# In this file, we keep production configuration that
# you likely want to automate and keep it away from
# your version control system.
config :athn_u_library, AthnULibrary.Endpoint,
  secret_key_base: "tEUUYIpfIjEX9mQz19bqvwS0KWLi+pVw4IIGWcEZBltU0bkZZAJhKX2ynEWdHl/l"

# Configure your database
config :athn_u_library, AthnULibrary.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "athn_u_library_prod"
