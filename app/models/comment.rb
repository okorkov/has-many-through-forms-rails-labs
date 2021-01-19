class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

  def user_attributes=(users_attributes)

      user = User.find_or_create_by(users_attributes)
      self.user_id = user.id
      self.save
      # raise self.inspect

  end

end


# def categories_attributes=(category_attributes)
   
#   category_attributes.values.each do |category_attribute|
#       category = Category.find_or_create_by(category_attribute)
#       self.categories << category if category.name != ""
#   end
# end