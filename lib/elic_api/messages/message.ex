defmodule ElicApi.Messages.Message do
  use Ecto.Schema
  import Ecto.Changeset


  schema "messages" do
    field :context, :string
    field :type, :integer

    timestamps()
  end

  @doc false
  def changeset(message, attrs) do
    message
    |> cast(attrs, [:type, :context])
    |> validate_required([:type, :context])
  end
end
