defmodule AthnULibrary.Router do
  use Phoenix.Router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", AthnULibrary do
    pipe_through :browser # Use the default browser stack

    get "/", WebLinkController, :index

    resources "/links", WebLinkController
  end

  # Other scopes may use custom stacks.
  # scope "/api", AthnULibrary do
  #   pipe_through :api
  # end
end
