defmodule DiscussTestWeb.TopicController do
  use DiscussTestWeb, :controller

  alias DiscussTestWeb.Topic

  def new(conn, _params) do
    changeset = Topic.changeset(%Topic{}, %{})

    render(conn, "new.html", changeset: changeset)
  end

end
