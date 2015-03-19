defmodule AthnULibrary.WebLinkController do
  use AthnULibrary.Web, :controller

  alias AthnULibrary.WebLink

  plug :scrub_params, "web_link" when action in [:create, :update]
  plug :action

  def index(conn, _params) do
    web_links = Repo.all(WebLink)
    render conn, "index.html", web_links: web_links
  end

  def new(conn, _params) do
    changeset = WebLink.changeset(%WebLink{})
    render conn, "new.html", changeset: changeset
  end

  def create(conn, %{"web_link" => web_link_params}) do
    changeset = WebLink.changeset(%WebLink{}, web_link_params)

    if changeset.valid? do
      Repo.insert(changeset)

      conn
      |> put_flash(:info, "WebLink created succesfully.")
      |> redirect(to: web_link_path(conn, :index))
    else
      render conn, "new.html", changeset: changeset
    end
  end

  def show(conn, %{"id" => id}) do
    web_link = Repo.get(WebLink, id)
    render conn, "show.html", web_link: web_link
  end

  def edit(conn, %{"id" => id}) do
    web_link = Repo.get(WebLink, id)
    changeset = WebLink.changeset(web_link)
    render conn, "edit.html", web_link: web_link, changeset: changeset
  end

  def update(conn, %{"id" => id, "web_link" => web_link_params}) do
    web_link = Repo.get(WebLink, id)
    changeset = WebLink.changeset(web_link, web_link_params)

    if changeset.valid? do
      Repo.update(changeset)

      conn
      |> put_flash(:info, "WebLink updated succesfully.")
      |> redirect(to: web_link_path(conn, :index))
    else
      render conn, "edit.html", web_link: web_link, changeset: changeset
    end
  end

  def delete(conn, %{"id" => id}) do
    web_link = Repo.get(WebLink, id)
    Repo.delete(web_link)

    conn
    |> put_flash(:info, "WebLink deleted succesfully.")
    |> redirect(to: web_link_path(conn, :index))
  end
end
