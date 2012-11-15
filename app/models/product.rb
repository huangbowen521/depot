class Product < ActiveRecord::Base
  attr_accessible :description, :image_url, :title, :price

  validates_presence_of :title, :image_url, :description
  validates_numericality_of :price
  validates_uniqueness_of :title, :message => 'have been used'
  validates_length_of :title, :minimum => 10, :too_short => 'should at least 10 character'
  validates_format_of :image_url, :with => %r{\.(gif|jpg|png)$}i, :message => 'must be a URL for GIF, JPG' + 'or PNG image.'
  validate :price_must_be_at_least_a_cent

  def self.find_products_for_sale
    find(:all, :order => 'title')
  end

  protected
  def price_must_be_at_least_a_cent
    errors.add(:price, 'should be at least 0.01') if price.nil? || price < 0.01
  end

end
