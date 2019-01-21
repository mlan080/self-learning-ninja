#you are given a method scoring with an array passed as an argument. Each element of the array is of class User.
#User has two public methods, is_admin? and update_score. Your task in this challenge is to use the control structure
#unless and update all elements of the array who are not admins.


def scoring(array)
  array.each do |user|
    unless user.is_admin?
      user.update_score
    end
  end
end
