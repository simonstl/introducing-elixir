defmodule Fall.PageController do
  use Fall.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
