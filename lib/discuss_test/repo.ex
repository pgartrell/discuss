defmodule DiscussTest.Repo do
  use Ecto.Repo,
    otp_app: :discuss_test,
    adapter: Ecto.Adapters.Postgres
end
