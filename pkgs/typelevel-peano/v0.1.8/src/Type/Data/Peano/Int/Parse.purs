module Type.Data.Peano.Int.Parse where

import Prelude (unit)

import Type.Data.Boolean (class If)
import Type.Data.Peano.Int.Definition (IProxy, Neg, Pos, kind Int)
import Type.Data.Peano.Nat (class ParseNat)
import Type.Data.Symbol (class Cons, class Equals, SProxy)
import Unsafe.Coerce (unsafeCoerce)

-- Parsing

-- | Parse a Int from a Symbol 
-- |
-- | ```purescript
-- | ParseInt "-10" N10
-- | ParseInt "1337" P1337 -- P1137 would be type alias for Pos (Succ^1337 Z)
-- | ```
-- |
class ParseInt (sym :: Symbol) (int :: Int) | int -> sym, sym -> int

instance parseSigned :: 
   ( Equals "-" head isMinus
   , If isMinus (IProxy (Neg natValue)) (IProxy (Pos natValue)) (IProxy int)
   , If isMinus (SProxy tail) (SProxy sym) (SProxy numberSymbol)
   , Cons head tail sym
   , ParseNat numberSymbol natValue
   ) => ParseInt sym int

-- | parse Int a Value-Level
-- |
-- | ```purescript
-- | parseInt (undefined :: SProxy "-1337") N1337 
-- | 	-- N1137 would be type alias for Neg (Succ^1337 Z)
-- | ```
-- |
parseInt :: ∀a sym. ParseInt sym a => SProxy sym -> IProxy a
parseInt _ = unsafeCoerce unit