defmodule MixProject.Three do
  use Mix.Project

  def project do
    [
      app:             :two,
      version:         "1.0.0",
      elixir:          "~> 1.13",
      start_permanent: Mix.env() == :prod,
      deps:            deps(),
      elixirc_paths:   ["src"],
      releases:        releases(),
    ]
  end

  def application do
    [
      extra_applications: [:one],
    ]
  end

  def releases do
    [
      dev: [
        include_erts: false,
        include_executables_for: [],
      ]
    ]
  end

  defp deps do
    [
      # {:one, git: "git@github.com:saleyn/rebar-test.git", branch: "mix", sparse: "one", engine: :mix},
      {:one, path: "../one", engine: :mix},
    ]
  end
end
