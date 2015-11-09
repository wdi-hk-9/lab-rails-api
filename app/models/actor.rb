class Actor < ActiveRecord::Base
  has_and_belongs_to_many :movies

  validates :year_of_birth, presence: true

  def age
    Time.now.year - year_of_birth
  end

  def as_json(options={})
    super(methods: [:age])
  end
end
