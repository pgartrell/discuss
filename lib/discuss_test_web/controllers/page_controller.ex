defmodule DiscussTestWeb.PageController do
  use DiscussTestWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
