defmodule ElicApiWeb.PageController do
  use ElicApiWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
