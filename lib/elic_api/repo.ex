defmodule ElicApi.Repo do
  use Ecto.Repo,
    otp_app: :elic_api,
    adapter: Ecto.Adapters.Postgres
end
