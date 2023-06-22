defmodule Ftrucks.Repo do
  use Ecto.Repo,
    otp_app: :ftrucks,
    adapter: Ecto.Adapters.Postgres
end
