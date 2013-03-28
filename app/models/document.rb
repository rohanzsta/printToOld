class Document < ActiveRecord::Base
  attr_accessible :title, :image

  validates :title, presence: true
  validates :user_id, presence: true
  validates_attachment :image, presence: true,
<<<<<<< HEAD
  															content_type: { content_type: ['image/jpeg', 'image/jpg', 'image/png', 'image/gif', 'application/pdf', 'application/x-pdf'] },
=======
  															content_type: { content_type: ['image/jpeg', 'image/jpg', 'image/png', 'image/gif'] },
>>>>>>> d2b28f304e9a88a9eeef15a0adc36d25039045e6
  															size: { less_than: 5.megabytes }

  belongs_to :user
  has_attached_file :image, styles: { medium: "320x240>"}
end
