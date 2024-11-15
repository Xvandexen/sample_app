defmodule SampleAppWeb.StaticPageController do
  use SampleAppWeb, :controller

  def home(conn, _params) do
    render(conn, :home)
  end

  def help(conn, _params) do
    render(conn, :help)
  end
end
