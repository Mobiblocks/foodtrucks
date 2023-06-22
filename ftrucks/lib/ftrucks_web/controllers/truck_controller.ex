defmodule FtrucksWeb.TruckController do
  use FtrucksWeb, :controller
  import Ecto.Query
  alias Ftrucks.Truck
  alias Ftrucks.Repo

  def index(conn, _params) do
    trucks = Ftrucks.Repo.all(Truck)
    render(conn, :index, trucks: trucks, qparam: "")
  end

  def show(conn, %{"truckid" => truckid} = params) do
    truck = Ftrucks.Repo.get!(Truck,truckid)
    render(conn, :show, truck: truck)
  end

  def search(conn, %{"q" => qparam} = _params) do

    trucks = Repo.all(from u in Truck, where: ilike(u.items, ^"%#{qparam}%"))

    render(conn, :index, trucks: trucks, qparam: qparam)
  end
end
