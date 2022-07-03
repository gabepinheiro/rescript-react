open Render

// Elevando o nível dos componentes
// JSX
// Pattern Matching
// ADT's
// type system + Props

let text = {
  open Emotion

  let key = "border"

  css(
    `
    font-size: 1.6rem;
    color: green;
    ${key}: 1px solid green;
  `,
  )
}

type status = Loading | Data(string) | Error | Empty

module ListComponent = {
  @react.component
  let make = (~result) => {
    <ul>
      {switch result {
      | Loading => "Carregando..."->s
      | Data(name) => <li> {`Name: ${name}`->s} </li>
      | Error => <p> {`Unexpected error...`->s} </p>
      | Empty => React.null
      }}
    </ul>
  }
}

@react.component
let make = () => {
  let result = Data("Gabe")

  <div>
    <p> {`List component:`->s} </p>
    <ListComponent result />

    // <p className=text>
    //   {
    //     let a = 1
    //     let message = a > 10 ? "X" : "Y"
    //     message->s
    //   }
    // </p>
  </div>
}
