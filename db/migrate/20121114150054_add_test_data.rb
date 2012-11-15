class AddTestData < ActiveRecord::Migration
  def up
    Product.delete_all
    Product.create(:title => 'Productive programmer', :description => %{This is a good book.}, :image_url => 'http://media-origin.pragprog.com/titles/rails3/code/depot_c/public/images/auto.jpg', :price => '100.00')
    Product.create(:title => 'Head first design', :description => %{This is a good book.}, :image_url => 'http://media-origin.pragprog.com/titles/rails3/code/depot_c/public/images/auto.jpg', :price => '100.00')
    Product.create(:title => 'Working effectively with legacy code', :description => %{This is a good book.}, :image_url => 'http://media-origin.pragprog.com/titles/rails3/code/depot_c/public/images/auto.jpg', :price => '100.00')
  end

  def down
    Product.delete_all
  end
end
