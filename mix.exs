defmodule RunHttpProxy.Mixfile do
  use Mix.Project

  def project do
    [app: :run_http_proxy,
     version: "0.1.0",
     elixir: "~> 1.2",
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
      {:http_proxy, "~> 1.0.3"}
    ]
  end
end
