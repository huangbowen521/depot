class AddTestData < ActiveRecord::Migration
  def up

  end

  def down
    Product.delete_all
  end
end
