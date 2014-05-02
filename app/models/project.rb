class Project < ActiveRecord::Base
  has_attached_file :project_image
  validates_attachment_file_name :project_image, :matches => [/png\Z/, /jpe?g\Z/]
end
