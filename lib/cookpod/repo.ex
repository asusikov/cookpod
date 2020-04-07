defmodule Cookpod.Repo do
  use Ecto.Repo,
    otp_app: :cookpod,
    adapter: Ecto.Adapters.Postgres
end
