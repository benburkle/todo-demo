# app/hyperstack/components/index.rb
class Index < HyperComponent
  include Hyperstack::Router::Helpers
  render(SECTION, class: :main) do
    Header()
    UL(class: 'todo-list') do
      Todo.send(match.params[:scope]).each do |todo|
        TodoItem(todo: todo)
      end
    end
    Footer() unless Todo.count.zero?
  end
end
