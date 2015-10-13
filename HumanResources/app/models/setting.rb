# -*- encoding : utf-8 -*-
class Setting <  ActiveRecord::Base

  def self.all_careers
    result = {}
    Setting.where("name = ?",'career').map do|career|
      result[career.value] = career.key  
    end
    return result
  end
end