defmodule EncodeError do
  @dialyzer :no_undefined_callbacks

  defexception [:message, :src]

  def message(e), do: e.message
end

defmodule DecodeError do
  @dialyzer :no_undefined_callbacks

  defexception [:message, :src]

  def message(e), do: e.message
end
