open Render

//let {useState} = module(React)

type action = Inc | Dec

let counterReducer = (state, action) => {
  switch action {
  | Inc => state + 1
  | Dec => state - 1
  }
}

@react.component
let make = () => {
  // let (count, setCount) = React.useState(_ => 0)

  // let handleClick = _ => {
  //   setCount(count => count + 1)
  // }

  let (count, dispatch) = React.useReducer(counterReducer, 0)

  let increment = React.useCallback0(_ => dispatch(Inc))
  let decrement = _ => dispatch(Dec)

  React.useEffect1(() => {
    Js.log("fn increment foi criada/recriada.")
    None
  }, [increment])

  // useEffect sem deps, vai executar a todo re-render
  React.useEffect(() => {
    Js.log(count)
    None
  })

  // useEffect0 sem deps, vai executar somente no mounted do componente
  React.useEffect0(() => {
    Js.log("Mounted")
    None
  })

  let a = 1
  let b = 2
  let c = 3

  // useEffect1 espera um array de deps, mas o array precisa ser homogêneo -> itens do mesmo tipo
  React.useEffect1(() => {
    Js.log3(a, b, c)
    None
  }, [a, b, c])

  let d = "..."

  // useEffect2 espera uma tupla com duas deps mas diferente do array, a tupla aceita receber itens de tipos distintos.
  React.useEffect2(() => {
    Js.log2(a, b)
    None
  }, (a, d))

  //React.useEffect0...7(...)

  <div>
    <p> {`Count: ${count->Js.Int.toString}`->s} </p>
    <button onClick=increment> {"Increment"->s} </button>
    <button onClick=decrement> {"Decrement"->s} </button>
  </div>
}
