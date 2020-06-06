<h1 align="center">
  Purescript Concur
</h1>
<p align="center">
   <img src="docs/logo.png" height="100">
</p>
<p align="center">
  <a href="https://gitter.im/concurhaskell" rel="nofollow">
      <img src="https://camo.githubusercontent.com/9fb4e2dde684214e7454d930a369f97190d1ecf2/68747470733a2f2f696d672e736869656c64732e696f2f62616467652f6769747465722d6a6f696e253230636861742532302545322538362541332d626c75652e737667" alt="Join the chat at https://gitter.im/concurhaskell" data-canonical-src="https://img.shields.io/badge/gitter-join%20chat%20%E2%86%A3-blue.svg" style="max-width:100%;">
   </a>
   <a href="https://www.reddit.com/r/concurhaskell/" rel="nofollow">
      <img src="https://img.shields.io/badge/reddit-join%20the%20discussion%20%E2%86%A3-1158c2.svg" alt="Join the chat at https://gitter.im/concurhaskell" style="max-width:100%;">
   </a>
   <a href="https://pursuit.purescript.org/packages/purescript-concur-react">
     <img src="https://pursuit.purescript.org/packages/purescript-concur-react/badge"
        alt="Purescript-Concur-React on Pursuit">
     </img>
   </a>
</p>

[Concur UI Lib](https://github.com/ajnsit/concur) is a brand new client side Web UI framework that explores an entirely new paradigm. It does not follow FRP (think Reflex or Reactive Banana), or Elm architecture, but aims to combine the best parts of both. This repo contains the Concur implementation for Purescript, using the React backend.

## Documentation

Work in progress tutorials are published in the [Concur Documentation site](https://github.com/ajnsit/concur-documentation/blob/master/README.md)

API documentation is [published on Pursuit](https://pursuit.purescript.org/packages/purescript-concur-react).

## Performance

Purescript-Concur is reasonably light. The [entire *uncompressed* JS bundle](https://github.com/purescript-concur/purescript-concur-react/blob/master/docs/index.prod.minified.0dfb135e.js), including react and all libraries, for the entire example application in this repo clocks in at 180KB. You can build this bundle yourself with the command `npm run prod` (*currently broken* due to the move to spago).

This leads to pretty fast initial load times. Running the Chrome audit on https://purescript-concur.github.io/purescript-concur-react/ produces -

<p align="center">
   <img src="docs/Purescript-Concur-Performance.png">
</p>

## Ports to other languages

Concur's model translates well to other platforms.

1. [Concur for Haskell](https://github.com/ajnsit/concur) - The original version of Concur written in Haskell.
2. [Concur for Javascript](https://github.com/ajnsit/concur-js) - An official but experimental port to Javascript.
3. [Concur for Python](https://github.com/potocpav/python-concur) - An unofficial and experimental port to Python. Uses ImgUI for graphics. Created and Maintained by [potocpav](https://github.com/potocpav).

## Installation

You can quickly get a production setup going (using Spago and Parcel) by cloning the [Purescript Concur Starter](https://github.com/purescript-concur/purescript-concur-starter).

Else, if you use Spago -

```bash
spago install purescript-concur-react
```

Or if you use Bower -

```bash
bower install purescript-concur-react
```

## Building examples from source

```bash
git clone https://github.com/purescript-concur/purescript-concur-react.git
cd purescript-concur-react
npm install
# Build library sources
npm run build
# Build examples
npm run examples
# Start a local server
npm run start
# Check examples
open localhost:1234 in the browser
```

## External React Components

It's easy to add external React components to Concur. Usually all you would require to wrap an external component is to import it as a `ReactClass`, and then wrapping it with one of the `el` functions.

For example, let's say you want to wrap the `Button` component provided by the material-ui library.

*Step 1*: First write an FFI module that exposes the `ReactClass` component -

```javascript
// Button.js
exports.classButton =  require('@material-ui/core/Button').default
```

And import it into your purescript program

```purescript
-- Button.purs
foreign import classButton :: forall a. ReactClass a
```

If you are using the [Purescript React MUI bindings](https://github.com/doolse/purescript-react-mui), then you can simply import the class component from the library without defining the FFI module -

```purescript
import MaterialUI.Button (classButton)
```

*Step 2*: Then wrap up the imported `ReactClass` into a widget to make it usable within Concur -

```purescript
import Concur.React.DOM (El, el')
import React (unsafeCreateElement)
import React.DOM.Props (unsafeFromPropsArray)

button :: El
button = el' (unsafeCreateElement classButton <<< unsafeFromPropsArray)
```

*Step 3*: Now you can use `button` normally within Concur. For example -

```purescript
import Concur.React.DOM as D
import Concur.React.Props as P

helloButton = button [P.onClick] [D.text "Hello World!"]
```

Note that you can mix in the default widgets and props with the MUI ones.


## Examples

[Demo](https://purescript-concur.github.io/purescript-concur-react/) and [Source](https://github.com/purescript-concur/purescript-concur-react/blob/master/examples/src/Main.purs) for composing all the examples in one page.

Individual example sources -

1. **Hello World!** Shows simple effectful widgets with state using StateT. [Source](https://github.com/purescript-concur/purescript-concur-react/blob/master/examples/src/Test/Hello.purs).
2. **A simple counter widget** without using StateT. [Source](https://github.com/purescript-concur/purescript-concur-react/blob/master/examples/src/Test/Counter.purs).
3. **Focus counter** demonstrates a stateful widget, with multiple event handlers, and no action types needed! [Source](https://github.com/purescript-concur/purescript-concur-react/blob/master/examples/src/Test/FocusCount.purs).
4. **Virtual Keyboard** An onscreen virtual keyboard. Demonstrates FFI as well as handling document level events inside nested widgets. [Source](https://github.com/purescript-concur/purescript-concur-react/blob/master/examples/src/Test/Keyboard.purs).
5. **A login widget**. [Source](https://github.com/purescript-concur/purescript-concur-react/blob/master/examples/src/Test/Login.purs).
6. Concur has Signals! Sample **counting widget implemented with Signals**! [Source](https://github.com/purescript-concur/purescript-concur-react/blob/master/examples/src/Test/Signals.purs).
7. A **Full-featured TodoMVC implementation with LocalStorage Persistence** built with Signals. [Source](https://github.com/purescript-concur/purescript-concur-react/blob/master/examples/src/Test/Todos.purs).
8. A **Fully editable tree** in ~30 lines of code (with Signals). [Source](https://github.com/purescript-concur/purescript-concur-react/blob/master/examples/src/Test/EditHeadings.purs).
9. A **Postfix calculator**. [Source](https://github.com/purescript-concur/purescript-concur-react/blob/master/examples/src/Test/Calc.purs).
10. Using **AJAX and handling JSON** responses. [Source](https://github.com/purescript-concur/purescript-concur-react/blob/master/examples/src/Test/Ajax.purs).
11. A small widget to **Visualise CSS color codes**. [Source](https://github.com/purescript-concur/purescript-concur-react/blob/master/examples/src/Test/Color.purs).
12. **Asynchronous timers** which can be cancelled. [Source](https://github.com/purescript-concur/purescript-concur-react/blob/master/examples/src/Test/Timers.purs).
13. A **Routed widget** which demonstrates routing. [Source](https://github.com/purescript-concur/purescript-concur-react/blob/master/examples/src/Test/Routing.purs).
14. **The Elm Architecture example** demonstrates how Concur subsumes "The Elm Architecture". [Source](https://github.com/purescript-concur/purescript-concur-react/blob/master/examples/src/Test/TheElmArchitecture.purs).
15. **Performance test** - A huge list of 50 thousand parallel buttons. This has two variants, fast (uses slightly lower level interface) and slow (idiomatic concur code). [Source](https://github.com/purescript-concur/purescript-concur-react/blob/master/examples/src/Test/SlowButtonList.purs).
16. **Tail Recursion demo** - Since Concur is purely functional in nature, its primary mode of iteration is via recursion. Purescript in general is NOT stack stafe with tail recursion; It uses tricks like tailRec and tailRecM. However, Concur performs trampolining to make monadic recursion completely stack safe. This example demonstrates that by making a huge number of tail recursive calls in a short span of time. [Source](https://github.com/purescript-concur/purescript-concur-react/blob/master/examples/src/Test/TailRec.purs).
