defmodule SampleAppWeb.UserController do
  use SampleAppWeb, :controller

  def new(conn, _params) do
    conn
    |> assign(:page_title, "new user")
    |> render(:new)
  end
end
