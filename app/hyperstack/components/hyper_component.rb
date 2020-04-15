# app/hyperstack/hyper_component.rb
class HyperComponent
  # All component classes must include Hyperstack::Component
  include Hyperstack::Component
  # The Observable module adds state handling
  include Hyperstack::State::Observable
  # The following turns on the new style param accessor
  # i.e. param :foo is accessed by the foo method
  param_accessor_style :accessors

  #def __material_component(component_name, **options, &block)
  #  Mui.send(component_name, options, &block)
  #end

  #def __material_icon(icon_name, **options)
  #  __material_component("Icon", options) { icon_name.underscore }
  #end

  #def method_missing(method_name, *_args, **options, &block)
  #  method_name = method_name.to_s
  #  classified_name = method_name.classify
  #  name_without_icon = method_name.gsub("Icon", "")

  #  if classified_name == method_name && `Mui[#{method_name}]`
  #    __material_component(method_name, **options, &block)
  #  elsif name_without_icon != method_name && classified_name == method_name
  #    __material_icon(name_without_icon, **options, &block)
  #  else
  #    super
  #  end
  #end
end
