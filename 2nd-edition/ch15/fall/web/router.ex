defmodule Fall.Router do
  use Fall.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", Fall do
    pipe_through :browser # Use the default browser stack

    get "/welcome", FallController, :welcome
    get "/fall", FallController, :faller
    post "/fall", FallController, :faller
    get "/", PageController, :index
  end

  # Other scopes may use custom stacks.
  # scope "/api", Fall do
  #   pipe_through :api
  # end
end
