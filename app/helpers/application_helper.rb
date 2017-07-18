module ApplicationHelper
  def smoker
    if @customer.smoker
      return "Smoker"
    else
      return "Non Smoker"
    end
  end
end
