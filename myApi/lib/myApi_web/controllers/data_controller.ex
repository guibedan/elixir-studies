defmodule MyApiWeb.DataController do
  use MyApiWeb, :controller

  def create(conn, %{"data" => data_params}) do
    conn
    |> put_status(200)
    |> render("show.json", data: data_params)
  end
end
