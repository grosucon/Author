class Author < ActiveRecord::Base
  belongs_to :user
  belongs_to :project

   before_save :get_author_name

  private

  def get_author_name
    self.name = "#{self.user.firstname} #{self.user.lastname}"
  end
end
