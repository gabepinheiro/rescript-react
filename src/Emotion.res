@module("@emotion/css") external css: string => string = "css"
@module("@emotion/css") external keyframes: string => string = "css"
@module("@emotion/css") external cx: array<string> => string = "cx"
@module("@emotion/css") external injectGlobal: string => unit = "injectGlobal"

module Object = {
  @module("@emotion/css") external css: {..} => string = "css"
  @module("@emotion/css") external keyframes: {..} => string = "css"
  @module("@emotion/css") external injectGlobal: {..} => unit = "injectGlobal"
}
