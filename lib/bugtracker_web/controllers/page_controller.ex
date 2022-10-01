defmodule BugtrackerWeb.PageController do
  use BugtrackerWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
