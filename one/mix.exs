defmodule MixProject.One do
  use Mix.Project

  def project do
    [
      app:             :one,
      version:         "1.0.0",
      elixir:          "~> 1.13",
      start_permanent: Mix.env() == :prod,
      elixirc_paths:   ["src"],
    ]
  end
end
