class Product < ActiveRecord::Base
  default_scope :order => 'title'
  has_many :line_items
  
  before_destroy :ensure_not_referenced_by_any_line_item
  
  validates :title, :description, :image_url, :presence => true
  validates :title, :uniqueness => true
  validates :image_url, :format => { :with => %r{\.(gif|jpg|png)$}i,
                                      :message => 'must be a URL for GIF, JPG or PNG image'}
  validates :price, :numericality => {:greater_than_or_equal_to => 0.01}
  
  
  # ensure that there are no line items referencing that product
  def ensure_not_referenced_by_any_line_item
    if line_items.count.zero?
      return true
    else
      errors[:base] << "Line Items present"
      return false
    end
  end
  
end
