class Movie < ActiveRecord::Base
  belongs_to :category
  def as_json(options={})
      {
          id: id,
          name: name,
          descripcion: descripcion,
          director: director,
          categoria: category.name
      }
  end
end
