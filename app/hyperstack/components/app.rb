# app/hyperstack/components/app.rb
#class App < HyperComponent
#  include Hyperstack::Router
#
#  render(SECTION, class: 'paperbase_template') do
#    # TPaperbase()
#    Copyright
#  end
#end


# app/hyperstack/components/app.rb
class App < HyperComponent
  include Hyperstack::Router
  render(SECTION, class: 'todo-app') do
    "testing"
    Header()
    Route('/', exact: true) { Redirect('/all') }
    Route('/:scope', mounts: Index)
    Footer() unless Todo.count.zero?
  end
end
