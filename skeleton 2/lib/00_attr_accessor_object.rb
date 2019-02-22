class AttrAccessorObject
  def self.my_attr_accessor(*names)
    names.each do |name|
      n = "@#{name}"
      define_method(name) {self.instance_variable_get(n)}
      set = "#{name}="
      define_method(set) do |arg| #dont get this 
        self.instance_variable_set(n, arg)
      end
    end
  end
end
