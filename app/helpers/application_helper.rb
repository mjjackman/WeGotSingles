module ApplicationHelper
  def smoker
    if @customer.smoker
      return "Smoker"
    else
      return "Non Smoker"
    end
  end

  def drinker
    if @customer.drinker
      return "Drinks Alcohol"
    else
      return "Non Drinker"
    end
  end
end
