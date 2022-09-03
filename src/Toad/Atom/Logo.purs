module Toad.Atom.Logo (render) where

import Toad.Prelude hiding (bottom, top)

import Data.Maybe (fromMaybe)
import Halogen.HTML.Properties as HP
import Toad.Atom.Logo.Style (logoContainer, toadLogoUrl)
import Toad.Css as Css
import Toad.Html as HH

render :: ∀ w i. Maybe Css.CSS -> HH.HTML w i
render extra = HH.div
  [ Css.style do
      logoContainer
      fromMaybe (pure unit) extra
  ]
  [ HH.img
      [ Css.style do
          Css.height $ Css.pct 100.0
      , HP.src toadLogoUrl
      ]
  ]
