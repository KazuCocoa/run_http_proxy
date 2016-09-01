defmodule RunHttpProxy.Mixfile do
  use Mix.Project

  def project do
    [app: :run_http_proxy,
     version: "0.2.0",
     elixir: "~> 1.3",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps(),
     aliases: aliases()]
  end

  def application do
    [
      applications: [:http_proxy]
    ]
  end

  defp aliases do
    [
      proxy: ["run --no-halt"],
    ]
  end

  defp deps do
    [
      {:http_proxy, "~> 1.1"}
    ]
  end
end
