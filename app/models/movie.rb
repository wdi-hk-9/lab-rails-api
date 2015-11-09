class Movie < ActiveRecord::Base
  has_and_belongs_to_many :actors
  has_many :reviews

  validates :title, presence: true

  def description
    "This #{title} can be seen in youtube id #{youtube_embed_id}."
  end

  def as_json(options={})
    super(methods: [:description])
  end
end
