defmodule ClientWeb.PageController do
  use ClientWeb, :controller
  alias Phoenix.LiveView

  def index(conn, _params) do
    LiveView.Controller.live_render(conn,ClientWeb.GithubDeployView, session: %{} )
  end
end
