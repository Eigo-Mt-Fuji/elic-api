defmodule ElicApi.Repo.Migrations.CreateMessages do
  use Ecto.Migration

  def change do
    create table(:messages) do
      add :type, :integer
      add :context, :string

      timestamps()
    end

  end
end
