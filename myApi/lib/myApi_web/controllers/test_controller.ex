defmodule MyApiWeb.Test_controller do
  use MyApiWeb, :controller

  def print(conn, _params) do
    json(conn, %{message: "Hello, world!"})
  end

  def list_names(conn, _params) do
    current_datetime = DateTime.utc_now()

    json(conn, %{
      date: current_datetime,
      names: [
        "John",
        "Jane",
        "Joe"
      ]
    })
  end
end
