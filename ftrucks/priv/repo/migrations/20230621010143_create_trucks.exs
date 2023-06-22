defmodule Ftrucks.Repo.Migrations.CreateTrucks do
  use Ecto.Migration

  def change do
    create table(:trucks) do
      add :truckid, :string, size: 32, primary_key: true
      add :applicant, :string
      add :f_type, :string
      add :descr, :string
      add :address, :string, null: true
      add :status, :string, null: true
      add :items, :string, size: 2000, null: true

      timestamps()
    end
  end
end
