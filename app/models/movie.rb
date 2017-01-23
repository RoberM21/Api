class Movie < ActiveRecord::Base
  belongs_to :category
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  def as_json(options={})
      {
          id: id,
          name: name,
          descripcion: descripcion,
          director: director,
          categoria: category.name,
          image: image
      }
  end
end
