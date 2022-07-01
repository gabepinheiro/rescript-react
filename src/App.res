open Render

// const Message = () => <div>Hello ReScript and React</div>
module Message = {
  @react.component
  let make = (~message="Hello from ReScript") => <div>{React.string(message)}</div>
}

// const Input = ({ placeholder }) => <input placeholder={placeholder} />
module Input = {
  @react.component
  let make = (~placeholder=?) => <input ?placeholder />
}

module Container = {
  @react.component
  let make = (~children) => <div>{children}</div>
}

module MessageWithChildren = {
  @react.component
  let make = (~children) => <p>{children}</p>
}

module MessageLoading = {
  @react.component
  let make = (~loading=false) => {
    <p>
      {React.string(loading ? "Loading..." : "Hello")}
    </p>
  }
}

// string => React.element
let s = React.string

module Text = {
  @react.component
  let make = (~children) => React.string(children)
}

// module Array = Js.Array2

// let elements = Array.mapi((name, key) => <li key={key->Js.Int.toString}>{name->s}</li>, names)

// let map = (items, fn) => items->Array.mapi((item, index) => fn(item, index->Js.Int.toString))->React.array

let names = ["Gabe", "Marcola"]

// const App = () => <div> ... </div>
@react.component
let make = () => {
  <Container> 
    <Message message="Hello" /> 

    <MessageWithChildren>
      {"Hello from <MessageWithChildrenString />"->s}
    </MessageWithChildren>

    <MessageWithChildren>
      <Text>"Text"</Text>
    </MessageWithChildren>

    <MessageLoading loading=true />

    <Input placeholder="Hello" />

    <ul>{names->map((name, key) => <li key=key>{name->s}</li>)}</ul>
  </Container>
}