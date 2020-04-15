# app/hyperstack/components/test_component.rb
class TestComponent < HyperComponent
  render do
    H1 { "Testing" }
  end
end
