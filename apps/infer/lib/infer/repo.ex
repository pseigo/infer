defmodule Infer.Repo do
  use Ecto.Repo,
    otp_app: :infer,
    adapter: Ecto.Adapters.Postgres
end
