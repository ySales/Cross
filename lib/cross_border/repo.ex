defmodule CrossBorder.Repo do
  use Ecto.Repo,
    otp_app: :cross_border,
    adapter: Ecto.Adapters.Postgres
end
