defmodule Exercism.KitchenCalculator.Exercism do
  def get_volume({_unit, value}) do
    value
  end

  def to_milliliter({:milliliter, value}) do
    {:milliliter, value}
  end

  def to_milliliter({:cup, value}) do
    {:milliliter, 240 * value}
  end

  def to_milliliter({:tablespoon, value}) do
    {:milliliter, 15 * value}
  end

  def to_milliliter({:fluid_ounce, value}) do
    {:milliliter, 30 * value}
  end

  def to_milliliter({:teaspoon, value}) do
    {:milliliter, 5 * value}
  end

  def from_milliliter({:milliliter, value}, :milliliter) do
    {:milliliter, value}
  end

  def from_milliliter({:milliliter, value}, :cup) do
    {:cup, value / 240}
  end

  def from_milliliter({:milliliter, value}, :fluid_ounce) do
    {:fluid_ounce, value / 30}
  end

  def from_milliliter({:milliliter, value}, :teaspoon) do
    {:teaspoon, value / 5}
  end

  def from_milliliter({:milliliter, value}, :tablespoon) do
    {:tablespoon, value / 15}
  end

  def convert(volume_pair, unit) do
    valor_em_milliliter = to_milliliter(volume_pair)
    from_milliliter(valor_em_milliliter, unit)
  end
end
