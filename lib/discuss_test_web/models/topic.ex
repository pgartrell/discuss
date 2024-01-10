defmodule DiscussTestWeb.Topic do
  use DiscussTestWeb, :model

  schema "topics" do
    field :title, :string
  end

  def changeset(topic, attrs \\ %{}) do
    topic
    |> cast(attrs, [:title])
    |> validate_required([:title])
  end
end
