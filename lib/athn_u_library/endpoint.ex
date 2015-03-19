defmodule AthnULibrary.Endpoint do
  use Phoenix.Endpoint, otp_app: :athn_u_library

  # Serve at "/" the given assets from "priv/static" directory
  plug Plug.Static,
    at: "/", from: :athn_u_library,
    only: ~w(css images js favicon.ico robots.txt)

  # Code reloading can be explicitly enabled under the
  # :code_reloader configuration of your endpoint.
  if code_reloading? do
    plug Phoenix.CodeReloader
  end

  plug Plug.Logger

  plug Plug.Parsers,
    parsers: [:urlencoded, :multipart, :json],
    pass: ["*/*"],
    json_decoder: Poison

  plug Plug.MethodOverride
  plug Plug.Head

  plug Plug.Session,
    store: :cookie,
    key: "_athn_u_library_key",
    signing_salt: "7+Ni1cJj",
    encryption_salt: "+cXrMiam"

  plug :router, AthnULibrary.Router
end
