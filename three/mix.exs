defmodule FIX.MixProject do
  use Mix.Project

  def project do
    [
      app:             :three,
      version:         "1.0.0",
      elixir:          "~> 1.13",
      start_permanent: Mix.env() == :prod,
      deps:            deps(),
      elixirc_paths:   ["src"],
    ]
  end

  def application do
    [
      extra_applications: [:logger, :one],
    ]
  end

  defp deps do
    [
      {:one, git: "git@github.com:saleyn/rebar-test.git", branch: "three", sparse: "one"},
    ]
  end
end
