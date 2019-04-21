class Store<State, Action> implements coconut.data.Model {
  @:observable var state:State;
  @:observable var reducer:State->Action->State;
  @:transition function update(action:Action)
    return { state: reducer(state, action) };
}
