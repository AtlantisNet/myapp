module ApplicationHelper
  #Retorna o título completo em ua base por página.
  def full_title(page_title = '')
    base_title = "Ruby on Rails Tutorial MyApp"
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end
end
