defmodule Bugtracker.Repo do
  use Ecto.Repo,
    otp_app: :bugtracker,
    adapter: Ecto.Adapters.Postgres
end
