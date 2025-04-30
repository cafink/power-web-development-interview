class Post < ApplicationRecord
  has_many :comments, dependent: :destroy

  default_scope { where(:deleted => false) }

  def destroy 
    self.deleted = true;
    self.save
    destroy_associations
  end

  def destroy_associations
    self.comments { |c| c.destroy }
  end

end
