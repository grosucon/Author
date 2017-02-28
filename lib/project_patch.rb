module ProjectPatch

  def self.included(base)
    base.send(:include, InstanceMethods)
    base.class_eval do
      has_one :author
    end
  end

  module InstanceMethods
  end

end

Project.send(:include, ProjectPatch)