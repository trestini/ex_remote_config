defmodule RemoteConfig do
  @moduledoc """
  Remote Configuration API is meant to be an common point to
  perform operations in configuration datastore.
  """

  @doc """
  Get a simple config based on it's key.

  ## Examples

      iex> RemoteConfig.get("database.host")
      localhost

  """
  @spec get(String.t) :: {:ok, String.t} | {:error, Any}
  def get(config_key) do
    case RcDataStore.get_config config_key do
      {:ok, value} -> value
      any -> {:error, any}
    end
  end

  def get(config_key, {:user, context}) do

  end

  def get(config_key, {:experiment, context}) do

  end
end
