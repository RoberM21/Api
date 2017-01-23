class Category < ActiveRecord::Base
  has_many :movies
  def as_json(options={})
      {
          id: id,
          name: name
      }
  end
end
