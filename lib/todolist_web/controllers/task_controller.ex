defmodule TodolistWeb.TaskController do
  use TodolistWeb, :controller
  def get_task(conn, _params) do
    render(conn, "taskDisplay.html")
  end
  def get_indv_task(conn, %{"id" => id}) do
    render(conn, "indvTaskDisplay.html", id)
  end
end
