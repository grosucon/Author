module UserPatch

  def self.included(base)
    base.send(:include, InstanceMethods)
    base.class_eval do
      has_many :authors
    end
  end

  module InstanceMethods
  end

end

User.send(:include, UserPatch)