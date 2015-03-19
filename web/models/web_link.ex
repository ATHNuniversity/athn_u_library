defmodule AthnULibrary.WebLink do
  use AthnULibrary.Web, :model

  schema "web_links" do
    field :url, :string
    field :title, :string
    field :description, :string

    timestamps
  end

  @required_fields ~w(url title)
  @optional_fields ~w(description)

  @doc """
  Creates a changeset based on the `model` and `params`.

  If `params` are nil, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ nil) do
    cast(model, params, @required_fields, @optional_fields)
  end
end
