# base.rb
module Base
  extend self
  attr_accessor :permissions

  def inherited_permissions(perms)
    @permissions ||= {}
    @permissions.merge!(perms)
  end

  def extended(submodule)
    submodule.inherited_permissions(@permissions)
  end

  def method_missing(method_name, *args)
    return super unless method_name.to_s.start_with?('can_')

    @permissions ||= {}
    permission_key = method_name.to_s.gsub('can_', '').delete('?').to_sym
    if method_name =~ /\?$/
      @permissions[permission_key]
    else
      @permissions[permission_key] = args.first
    end
  end

  def respond_to_missing?(method_name)
    method_name.to_s.start_with?('can_') || super
  end

  can_access_admin_panel                            false
  can_access_user_dashboard                         false
  can_foo                                           false


end

# university/student.rb
module University
  module Student
    extend ::Base

    can_access_user_dashboard                         true
  end
end

module University
  module Educator
    extend ::Base

    can_access_admin_panel                         true
    can_foo
  end
end
