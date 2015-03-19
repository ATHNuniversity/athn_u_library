defmodule AthnULibrary.Repo.Migrations.CreateWebLink do
  use Ecto.Migration

  def change do
    create table(:web_links) do
      add :url, :string
      add :title, :string
      add :description, :string

      timestamps
    end
  end
end
