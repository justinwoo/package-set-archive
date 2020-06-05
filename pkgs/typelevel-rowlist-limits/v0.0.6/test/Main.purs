module Test.Main where

import Prelude (Unit, discard, unit)

import Effect (Effect)
import Type.RowList.Limits (class ExactCount, class ExactCountEight, class ExactCountEmpty, class ExactCountFive, class ExactCountFour, class ExactCountNine, class ExactCountOne, class ExactCountSeven, class ExactCountSix, class ExactCountTen, class ExactCountThree, class ExactCountTwo, class ExactCountZero, class LimitCount, class LimitCountEight, class LimitCountEmpty, class LimitCountFive, class LimitCountFour, class LimitCountNine, class LimitCountOne, class LimitCountSeven, class LimitCountSix, class LimitCountTen, class LimitCountThree, class LimitCountTwo, class LimitCountZero, class RowToList, Eight, Five, Four, Nine, One, Seven, Six, Ten, Three, Two, Zero)

foreign import undefined :: forall a. a
foreign import tests :: Unit ->
  { limitCountEmpty  :: forall r rl. LimitCountEmpty  rl => RowToList r rl => { | r } -> Effect Unit
  , limitCountZero   :: forall r rl. LimitCountZero   rl => RowToList r rl => { | r } -> Effect Unit
  , limitCountOne    :: forall r rl. LimitCountOne    rl => RowToList r rl => { | r } -> Effect Unit
  , limitCountTwo    :: forall r rl. LimitCountTwo    rl => RowToList r rl => { | r } -> Effect Unit
  , limitCountThree  :: forall r rl. LimitCountThree  rl => RowToList r rl => { | r } -> Effect Unit
  , limitCountFour   :: forall r rl. LimitCountFour   rl => RowToList r rl => { | r } -> Effect Unit
  , limitCountFive   :: forall r rl. LimitCountFive   rl => RowToList r rl => { | r } -> Effect Unit
  , limitCountSix    :: forall r rl. LimitCountSix    rl => RowToList r rl => { | r } -> Effect Unit
  , limitCountSeven  :: forall r rl. LimitCountSeven  rl => RowToList r rl => { | r } -> Effect Unit
  , limitCountEight  :: forall r rl. LimitCountEight  rl => RowToList r rl => { | r } -> Effect Unit
  , limitCountNine   :: forall r rl. LimitCountNine   rl => RowToList r rl => { | r } -> Effect Unit
  , limitCountTen    :: forall r rl. LimitCountTen    rl => RowToList r rl => { | r } -> Effect Unit
  , exactCountEmpty  :: forall r rl. ExactCountEmpty  rl => RowToList r rl => { | r } -> Effect Unit
  , exactCountZero   :: forall r rl. ExactCountZero   rl => RowToList r rl => { | r } -> Effect Unit
  , exactCountOne    :: forall r rl. ExactCountOne    rl => RowToList r rl => { | r } -> Effect Unit
  , exactCountTwo    :: forall r rl. ExactCountTwo    rl => RowToList r rl => { | r } -> Effect Unit
  , exactCountThree  :: forall r rl. ExactCountThree  rl => RowToList r rl => { | r } -> Effect Unit
  , exactCountFour   :: forall r rl. ExactCountFour   rl => RowToList r rl => { | r } -> Effect Unit
  , exactCountFive   :: forall r rl. ExactCountFive   rl => RowToList r rl => { | r } -> Effect Unit
  , exactCountSix    :: forall r rl. ExactCountSix    rl => RowToList r rl => { | r } -> Effect Unit
  , exactCountSeven  :: forall r rl. ExactCountSeven  rl => RowToList r rl => { | r } -> Effect Unit
  , exactCountEight  :: forall r rl. ExactCountEight  rl => RowToList r rl => { | r } -> Effect Unit
  , exactCountNine   :: forall r rl. ExactCountNine   rl => RowToList r rl => { | r } -> Effect Unit
  , exactCountTen    :: forall r rl. ExactCountTen    rl => RowToList r rl => { | r } -> Effect Unit
  , exactCount_Zero  :: forall r rl. ExactCount Zero  rl => RowToList r rl => { | r } -> Effect Unit
  , exactCount_One   :: forall r rl. ExactCount One   rl => RowToList r rl => { | r } -> Effect Unit
  , exactCount_Two   :: forall r rl. ExactCount Two   rl => RowToList r rl => { | r } -> Effect Unit
  , exactCount_Three :: forall r rl. ExactCount Three rl => RowToList r rl => { | r } -> Effect Unit
  , exactCount_Four  :: forall r rl. ExactCount Four  rl => RowToList r rl => { | r } -> Effect Unit
  , exactCount_Five  :: forall r rl. ExactCount Five  rl => RowToList r rl => { | r } -> Effect Unit
  , exactCount_Six   :: forall r rl. ExactCount Six   rl => RowToList r rl => { | r } -> Effect Unit
  , exactCount_Seven :: forall r rl. ExactCount Seven rl => RowToList r rl => { | r } -> Effect Unit
  , exactCount_Eight :: forall r rl. ExactCount Eight rl => RowToList r rl => { | r } -> Effect Unit
  , exactCount_Nine  :: forall r rl. ExactCount Nine  rl => RowToList r rl => { | r } -> Effect Unit
  , exactCount_Ten   :: forall r rl. ExactCount Ten   rl => RowToList r rl => { | r } -> Effect Unit
  , limitCount_Zero  :: forall r rl. LimitCount Zero  rl => RowToList r rl => { | r } -> Effect Unit
  , limitCount_One   :: forall r rl. LimitCount One   rl => RowToList r rl => { | r } -> Effect Unit
  , limitCount_Two   :: forall r rl. LimitCount Two   rl => RowToList r rl => { | r } -> Effect Unit
  , limitCount_Three :: forall r rl. LimitCount Three rl => RowToList r rl => { | r } -> Effect Unit
  , limitCount_Four  :: forall r rl. LimitCount Four  rl => RowToList r rl => { | r } -> Effect Unit
  , limitCount_Five  :: forall r rl. LimitCount Five  rl => RowToList r rl => { | r } -> Effect Unit
  , limitCount_Six   :: forall r rl. LimitCount Six   rl => RowToList r rl => { | r } -> Effect Unit
  , limitCount_Seven :: forall r rl. LimitCount Seven rl => RowToList r rl => { | r } -> Effect Unit
  , limitCount_Eight :: forall r rl. LimitCount Eight rl => RowToList r rl => { | r } -> Effect Unit
  , limitCount_Nine  :: forall r rl. LimitCount Nine  rl => RowToList r rl => { | r } -> Effect Unit
  , limitCount_Ten   :: forall r rl. LimitCount Ten   rl => RowToList r rl => { | r } -> Effect Unit
  }

main :: Effect Unit
main = do
  test.limitCountEmpty  {}

  test.limitCountZero   {}

  test.limitCountOne    {}
  test.limitCountOne    { one: "one" }

  test.limitCountTwo    {}
  test.limitCountTwo    { one: "one" }
  test.limitCountTwo    { one: "one", two: "two" }

  test.limitCountThree  {}
  test.limitCountThree  { one: "one" }
  test.limitCountThree  { one: "one", two: "two" }
  test.limitCountThree  { one: "one", two: "two", three: "three" }

  test.limitCountFour   {}
  test.limitCountFour   { one: "one" }
  test.limitCountFour   { one: "one", two: "two" }
  test.limitCountFour   { one: "one", two: "two", three: "three" }
  test.limitCountFour   { one: "one", two: "two", three: "three", four: "four" }

  test.limitCountFive   {}
  test.limitCountFive   { one: "one" }
  test.limitCountFive   { one: "one", two: "two" }
  test.limitCountFive   { one: "one", two: "two", three: "three" }
  test.limitCountFive   { one: "one", two: "two", three: "three", four: "four" }
  test.limitCountFive   { one: "one", two: "two", three: "three", four: "four", five: "five" }

  test.limitCountSix    {}
  test.limitCountSix    { one: "one" }
  test.limitCountSix    { one: "one", two: "two" }
  test.limitCountSix    { one: "one", two: "two", three: "three" }
  test.limitCountSix    { one: "one", two: "two", three: "three", four: "four" }
  test.limitCountSix    { one: "one", two: "two", three: "three", four: "four", five: "five" }
  test.limitCountSix    { one: "one", two: "two", three: "three", four: "four", five: "five", six: "six" }

  test.limitCountSeven  {}
  test.limitCountSeven  { one: "one" }
  test.limitCountSeven  { one: "one", two: "two" }
  test.limitCountSeven  { one: "one", two: "two", three: "three" }
  test.limitCountSeven  { one: "one", two: "two", three: "three", four: "four" }
  test.limitCountSeven  { one: "one", two: "two", three: "three", four: "four", five: "five" }
  test.limitCountSeven  { one: "one", two: "two", three: "three", four: "four", five: "five", six: "six" }
  test.limitCountSeven  { one: "one", two: "two", three: "three", four: "four", five: "five", six: "six", seven: "seven" }

  test.limitCountEight  {}
  test.limitCountEight  { one: "one" }
  test.limitCountEight  { one: "one", two: "two" }
  test.limitCountEight  { one: "one", two: "two", three: "three" }
  test.limitCountEight  { one: "one", two: "two", three: "three", four: "four" }
  test.limitCountEight  { one: "one", two: "two", three: "three", four: "four", five: "five" }
  test.limitCountEight  { one: "one", two: "two", three: "three", four: "four", five: "five", six: "six" }
  test.limitCountEight  { one: "one", two: "two", three: "three", four: "four", five: "five", six: "six", seven: "seven" }
  test.limitCountEight  { one: "one", two: "two", three: "three", four: "four", five: "five", six: "six", seven: "seven", eight: "eight" }

  test.limitCountNine   {}
  test.limitCountNine   { one: "one" }
  test.limitCountNine   { one: "one", two: "two" }
  test.limitCountNine   { one: "one", two: "two", three: "three" }
  test.limitCountNine   { one: "one", two: "two", three: "three", four: "four" }
  test.limitCountNine   { one: "one", two: "two", three: "three", four: "four", five: "five" }
  test.limitCountNine   { one: "one", two: "two", three: "three", four: "four", five: "five", six: "six" }
  test.limitCountNine   { one: "one", two: "two", three: "three", four: "four", five: "five", six: "six", seven: "seven" }
  test.limitCountNine   { one: "one", two: "two", three: "three", four: "four", five: "five", six: "six", seven: "seven", eight: "eight" }
  test.limitCountNine   { one: "one", two: "two", three: "three", four: "four", five: "five", six: "six", seven: "seven", eight: "eight", nine: "nine" }

  test.limitCountTen    {}
  test.limitCountTen    { one: "one" }
  test.limitCountTen    { one: "one", two: "two" }
  test.limitCountTen    { one: "one", two: "two", three: "three" }
  test.limitCountTen    { one: "one", two: "two", three: "three", four: "four" }
  test.limitCountTen    { one: "one", two: "two", three: "three", four: "four", five: "five" }
  test.limitCountTen    { one: "one", two: "two", three: "three", four: "four", five: "five", six: "six" }
  test.limitCountTen    { one: "one", two: "two", three: "three", four: "four", five: "five", six: "six", seven: "seven" }
  test.limitCountTen    { one: "one", two: "two", three: "three", four: "four", five: "five", six: "six", seven: "seven", eight: "eight" }
  test.limitCountTen    { one: "one", two: "two", three: "three", four: "four", five: "five", six: "six", seven: "seven", eight: "eight", nine: "nine" }
  test.limitCountTen    { one: "one", two: "two", three: "three", four: "four", five: "five", six: "six", seven: "seven", eight: "eight", nine: "nine", ten: "ten" }

  test.limitCount_Zero  {}

  test.limitCount_One   {}
  test.limitCount_One   { one: "one" }

  test.limitCount_Two   {}
  test.limitCount_Two   { one: "one" }
  test.limitCount_Two   { one: "one", two: "two" }

  test.limitCount_Three {}
  test.limitCount_Three { one: "one" }
  test.limitCount_Three { one: "one", two: "two" }
  test.limitCount_Three { one: "one", two: "two", three: "three" }

  test.limitCount_Four  {}
  test.limitCount_Four  { one: "one" }
  test.limitCount_Four  { one: "one", two: "two" }
  test.limitCount_Four  { one: "one", two: "two", three: "three" }
  test.limitCount_Four  { one: "one", two: "two", three: "three", four: "four" }

  test.limitCount_Five  {}
  test.limitCount_Five  { one: "one" }
  test.limitCount_Five  { one: "one", two: "two" }
  test.limitCount_Five  { one: "one", two: "two", three: "three" }
  test.limitCount_Five  { one: "one", two: "two", three: "three", four: "four" }
  test.limitCount_Five  { one: "one", two: "two", three: "three", four: "four", five: "five" }

  test.limitCount_Six   {}
  test.limitCount_Six   { one: "one" }
  test.limitCount_Six   { one: "one", two: "two" }
  test.limitCount_Six   { one: "one", two: "two", three: "three" }
  test.limitCount_Six   { one: "one", two: "two", three: "three", four: "four" }
  test.limitCount_Six   { one: "one", two: "two", three: "three", four: "four", five: "five" }
  test.limitCount_Six   { one: "one", two: "two", three: "three", four: "four", five: "five", six: "six" }

  test.limitCount_Seven {}
  test.limitCount_Seven { one: "one" }
  test.limitCount_Seven { one: "one", two: "two" }
  test.limitCount_Seven { one: "one", two: "two", three: "three" }
  test.limitCount_Seven { one: "one", two: "two", three: "three", four: "four" }
  test.limitCount_Seven { one: "one", two: "two", three: "three", four: "four", five: "five" }
  test.limitCount_Seven { one: "one", two: "two", three: "three", four: "four", five: "five", six: "six" }
  test.limitCount_Seven { one: "one", two: "two", three: "three", four: "four", five: "five", six: "six", seven: "seven" }

  test.limitCount_Eight {}
  test.limitCount_Eight { one: "one" }
  test.limitCount_Eight { one: "one", two: "two" }
  test.limitCount_Eight { one: "one", two: "two", three: "three" }
  test.limitCount_Eight { one: "one", two: "two", three: "three", four: "four" }
  test.limitCount_Eight { one: "one", two: "two", three: "three", four: "four", five: "five" }
  test.limitCount_Eight { one: "one", two: "two", three: "three", four: "four", five: "five", six: "six" }
  test.limitCount_Eight { one: "one", two: "two", three: "three", four: "four", five: "five", six: "six", seven: "seven" }
  test.limitCount_Eight { one: "one", two: "two", three: "three", four: "four", five: "five", six: "six", seven: "seven", eight: "eight" }

  test.limitCount_Nine  {}
  test.limitCount_Nine  { one: "one" }
  test.limitCount_Nine  { one: "one", two: "two" }
  test.limitCount_Nine  { one: "one", two: "two", three: "three" }
  test.limitCount_Nine  { one: "one", two: "two", three: "three", four: "four" }
  test.limitCount_Nine  { one: "one", two: "two", three: "three", four: "four", five: "five" }
  test.limitCount_Nine  { one: "one", two: "two", three: "three", four: "four", five: "five", six: "six" }
  test.limitCount_Nine  { one: "one", two: "two", three: "three", four: "four", five: "five", six: "six", seven: "seven" }
  test.limitCount_Nine  { one: "one", two: "two", three: "three", four: "four", five: "five", six: "six", seven: "seven", eight: "eight" }
  test.limitCount_Nine  { one: "one", two: "two", three: "three", four: "four", five: "five", six: "six", seven: "seven", eight: "eight", nine: "nine" }

  test.limitCount_Ten   {}
  test.limitCount_Ten   { one: "one" }
  test.limitCount_Ten   { one: "one", two: "two" }
  test.limitCount_Ten   { one: "one", two: "two", three: "three" }
  test.limitCount_Ten   { one: "one", two: "two", three: "three", four: "four" }
  test.limitCount_Ten   { one: "one", two: "two", three: "three", four: "four", five: "five" }
  test.limitCount_Ten   { one: "one", two: "two", three: "three", four: "four", five: "five", six: "six" }
  test.limitCount_Ten   { one: "one", two: "two", three: "three", four: "four", five: "five", six: "six", seven: "seven" }
  test.limitCount_Ten   { one: "one", two: "two", three: "three", four: "four", five: "five", six: "six", seven: "seven", eight: "eight" }
  test.limitCount_Ten   { one: "one", two: "two", three: "three", four: "four", five: "five", six: "six", seven: "seven", eight: "eight", nine: "nine" }
  test.limitCount_Ten   { one: "one", two: "two", three: "three", four: "four", five: "five", six: "six", seven: "seven", eight: "eight", nine: "nine", ten: "ten" }

  test.exactCountEmpty  {}
  test.exactCountZero   {}
  test.exactCountOne    { one: "one" }
  test.exactCountTwo    { one: "one", two: "two" }
  test.exactCountThree  { one: "one", two: "two", three: "three" }
  test.exactCountFour   { one: "one", two: "two", three: "three", four: "four" }
  test.exactCountFive   { one: "one", two: "two", three: "three", four: "four", five: "five" }
  test.exactCountSix    { one: "one", two: "two", three: "three", four: "four", five: "five", six: "six" }
  test.exactCountSeven  { one: "one", two: "two", three: "three", four: "four", five: "five", six: "six", seven: "seven" }
  test.exactCountEight  { one: "one", two: "two", three: "three", four: "four", five: "five", six: "six", seven: "seven", eight: "eight" }
  test.exactCountNine   { one: "one", two: "two", three: "three", four: "four", five: "five", six: "six", seven: "seven", eight: "eight", nine: "nine" }
  test.exactCountTen    { one: "one", two: "two", three: "three", four: "four", five: "five", six: "six", seven: "seven", eight: "eight", nine: "nine", ten: "ten" }

  test.exactCount_Zero  {}
  test.exactCount_One   { one: "one" }
  test.exactCount_Two   { one: "one", two: "two" }
  test.exactCount_Three { one: "one", two: "two", three: "three" }
  test.exactCount_Four  { one: "one", two: "two", three: "three", four: "four" }
  test.exactCount_Five  { one: "one", two: "two", three: "three", four: "four", five: "five" }
  test.exactCount_Six   { one: "one", two: "two", three: "three", four: "four", five: "five", six: "six" }
  test.exactCount_Seven { one: "one", two: "two", three: "three", four: "four", five: "five", six: "six", seven: "seven" }
  test.exactCount_Eight { one: "one", two: "two", three: "three", four: "four", five: "five", six: "six", seven: "seven", eight: "eight" }
  test.exactCount_Nine  { one: "one", two: "two", three: "three", four: "four", five: "five", six: "six", seven: "seven", eight: "eight", nine: "nine" }
  test.exactCount_Ten   { one: "one", two: "two", three: "three", four: "four", five: "five", six: "six", seven: "seven", eight: "eight", nine: "nine", ten: "ten" }
  where
    test = tests unit