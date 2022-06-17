defmodule AppWeb.ItemView do
  use AppWeb, :view

  # returns integer value of items where item.status == 0 (not "done")
  def remaining_items(items) do
    Enum.filter(items, fn i -> i.status == 0 end) |> Enum.count()
  end

  # add class "completed" to a list item if item.status=1
  def complete(item) do
    case item.status do
      1 -> "completed"
      # empty string means empty class so no style applied
      _ -> ""
    end
  end

  # add "checked" to input if item.status=1
  def checked(item) do
    case item.status do
      1 -> "checked"
      # empty string means empty class so no style applied
      _ -> ""
    end
  end
end
