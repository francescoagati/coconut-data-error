import tink.core.Callback;
import Store;

class Main {

var store = new Store({ 
  state: 0, 
  reducer: (state, action) -> switch action {
    case Inc: state + 1;
    case Dec: state - 1;
  }
});

	static function main() {
		trace("Hello, world!");



	}
}

enum CounterAction {
  Inc;
  Dec;
}


@:keep
@:keepInit
class Stepper extends coconut.ui.View {
  @:attribute var step:Int = 1;
  @:attribute var onconfirm:Callback<Int>;
  @:state var value:Int = 0;
  function render() 
    return <div class="counter">
      <button onclick={value -= step}>-</button>
      <span>{value}</span>
      <button onclick={value += step}>+</button>
    </div>;
  

}