open Render

// CSS inline
// module Styles = ReactDOM.Style
// let {make: styles} = module(ReactDOM.Style)

// let container = styles(~border="1px solid red", ~color="blue", ~padding="8px", ())

// @react.component
// let make = () => {
//   <div style=container> {`Styling`->s} </div>
// }

//----------------------------------------------------------------------------

//CSS In JS
// const Container = styled.div`...styles...`
// <Container />

//bs-css
// module Styles = {
//   open CssJs

//   let container = style(. [
//     //
//     display(#flex),
//     alignItems(#center),
//     justifyContent(#center),
//     border(px(1), solid, black),
//   ])

//   let text = style(. [
//     //
//     color(red),
//     fontSize(#rem(1.1)),
//   ])
// }

// -----------------------------------------------------------------

// Bindings locais para alguma lib de css in js (emotion, styled-components)
module Styles = {
  open Emotion

  let container = Emotion.Object.css({
    "display": "flex",
    "alignItems": "center",
    "justifyContent": "center",
    "border": "solid 1px black",
  })

  let text = Emotion.css(`
    color: green;
    font-size: 1.6rem;
  `)
}

@react.component
let make = () => {
  <div className=Styles.container>
    <p className=Styles.text> {`Hello from ReScript with CSS in ReScript`->s} </p>
  </div>
}
