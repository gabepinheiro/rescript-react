module Array = Js.Array2

let s = React.string

let map = (items, fn) => 
    items
    ->Array.mapi((item, index) => fn(item, index->Js.Int.toString))
    ->React.array