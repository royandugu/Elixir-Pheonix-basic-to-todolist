defmodule TodolistWeb.Router do
  use TodolistWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", TodolistWeb do
    pipe_through :browser

    get "/", PageController, :index
    get "/task", TaskController, :get_task
    get "/task/:id", TaskController, :get_indv_task

  end

  # Other scopes may use custom stacks.
  # scope "/api", TodolistWeb do
  #   pipe_through :api
  # end
end
