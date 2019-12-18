class Homepage
  attr_accessor :PolymerLink, :PolymerInput
  def initialize(browser)
    @browser = browser
    @PolymerLink = @browser.a(:text, "Polymer")
    @PolymerInput = @browser.input(:id, "new-todo")
  end
  def visit
    @browser.goto "http://todomvc.com/"
  end
  def click_polymer
    @PolymerLink.click
  end
  def add_a_todo_item
    @PolymerInput.send_keys "todo item"
    @PolymerInput.send_keys :enter
  end
  def second_todo_item
    @browser.li(:xpath, "/html/body/div/td-todos/section/section/ul/li[2]")
  end
end