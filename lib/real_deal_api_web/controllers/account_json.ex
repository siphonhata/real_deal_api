defmodule RealDealApiWeb.AccountJSON do
  alias RealDealApi.Accounts.Account

  @doc """
  Renders a list of accounts.
  """
  def index(%{accounts: accounts}) do
    %{data: for(account <- accounts, do: data(account))}
  end

  @doc """
  Renders a single account.
  """
  def show(%{account: account}) do
    %{data: data(account)}
  end

  defp data(%Account{} = account) do
    %{
      id: account.id,
      email: account.email,
      hashed_password: account.hashed_password
    }
  end

  def showdata(%{account: account, token: token}) do
    %{
      id: account.id,
      email: account.email,
      token: token
    }
  end


  # def showdat(%{account: account}) do
  #   %{
  #     id: account.id,
  #     email: account.email,
  #     user: render_one(account.user, UserJSON, :data)
  #   }
  # end

end
