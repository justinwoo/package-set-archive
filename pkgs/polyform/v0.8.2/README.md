# purescript-polyform

Validation toolkit plus alternative codec type formulation.

Sorry for this sparse docs. I hope to extend them soon. Till then it is just better to take a look at the real world examples (json duals etc.) in the `lambdaterms/purescript-polyform-validators` repo.

## Core types

### `Validator`

It provides an `Applicative` instance which allow composition in the `Reader` spirit - all `Validators` "work" on the same input. It is accumulative because it is build on top of `V`.
There is also a `Category` instance which allows you to build validation chains combining this applicative steps.

```
newtype Validator m e i o = Validator (Star (Compose m (V e)) i o)

```

### `Exceptor`

This type is nearly `Star (Except e m)` but there is no `Semigroup e` constraint in its `Alt` instance (consistent with `Either`).


```
newtype Exceptor m e i o = Exceptor (Star (ExceptT e m) i o)
```

### `Dual`

Additionally it provides basic types for bidirectional validation and serialization through `Polyform.Dual` type.

```purescript
data DualD p i o o' = DualD (p i o') (o → i)

newtype Dual p i o = Dual (DualD p i o o)
```

## Name

 `polyform` initialy was intended to provide some basic mechanism for html form validation. It was polyomrphic on the form type hence the name. After the last rewrite this name has probably no sens any more, but you now - "naming is the..."
