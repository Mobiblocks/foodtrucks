defmodule Ftrucks.Truck do
  use Ecto.Schema
  import Ecto.Changeset


  schema "trucks" do
    field :applicant, :string
    field :descr, :string
    field :f_type, :string
    field :truckid, :string
    field :address, :string
    field :status, :string
    field :items, :string
  end

  @doc false
  def changeset(trucks, attrs) do
    trucks
    |> cast(attrs, [:truckid, :applicant, :f_type, :descr, :address, :status, :items])
    |> validate_required([:truckid, :applicant, :f_type, :descr, :address, :status, :items])
  end
end
