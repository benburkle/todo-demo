# app/hyperstack/components/app.rb
class App < HyperComponent
  include Hyperstack::Router
  render(SECTION, class: 'todo-app') do
    Route('/test', mounts: TestComponent)
    Route('/todo/:scope', mounts: Index)
    Route('/todo/', exact: true) { Redirect('/todo/all') }
    Route('/', exact: true, mounts: TestComponent)
  end
end
