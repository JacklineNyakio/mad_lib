defmodule MadLib.MixProject do
  use Mix.Project

  def project do
    [
      app: :mad_lib,
      version: "0.1.0",
      elixir: "~> 1.11",
      escript: escript_config(),
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [

    ]
  end

  defp escript_config do
    [main_module: MadLib.CLI]
  end
end
