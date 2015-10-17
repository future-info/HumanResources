# -*- encoding : utf-8 -*-
class User <  ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  before_create :set_user_name


  def set_user_name
    self.user_name = self.email.split("@")[0]
  end

  #key是关键字，需要使用`key`
  def career_name
    career = Setting.where("name = ? and setting_key = ?", "career", self.career).first
    career.value if career
  end

  def career_years_name
    default = {"1年" => 1,
      "1-3年" => 2,
      "3-5年" => 3,
      "5-10年" => 4,
      "10年以上" => 5}
    self.career_years ? default.keys[self.career_years] : ""
  end
end