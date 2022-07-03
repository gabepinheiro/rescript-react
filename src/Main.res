let root = ReactDOM.querySelector("#root")

let consoleLog = Js.Console.log

switch root {
| None => "Root element not found"->consoleLog
| Some(element) => ReactDOM.render(<RaisingComponentLevel />, element)
}
