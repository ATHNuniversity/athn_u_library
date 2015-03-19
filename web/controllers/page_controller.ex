defmodule AthnULibrary.PageController do
  use AthnULibrary.Web, :controller

  plug :action

  def index(conn, _params) do
    render conn, "index.html"
  end
end
