module ContinentsHelper
  def get_continent(continents, name)
    continents.find{ |cnt| cnt.name == name }
  end
end
