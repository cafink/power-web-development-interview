class Comment < ApplicationRecord
  belongs_to :post, dependent: :destroy

  default_scope { where(:deleted => false) }

  def destroy
    self.deleted = true;
    self.save
    destroy_associations
  end
end
