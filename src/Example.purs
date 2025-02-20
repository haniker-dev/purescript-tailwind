module Example where

import Tailwind

import Tailwind.Class.MapPrefix (class MapPrefix)

-- TODO Make this example a Halogen Example

-- Create a record to hold all your styles
style
  :: {
       -- Compiler can infer the correct combined CSS classes at compile time
       -- Tw "my-4 -mt-4 px-0.5 w-4/5 sm:mt-4 sm:bg-red-100 hover:mt-4 hover:bg-red-500 hover:p-[5px] [&:nth-child(3)]:mt-8 2xl:mt-10"
       -- TODO Replace below with type hole when pasting into README
       container :: Tw "my-4 -mt-4 px-0.5 w-4/5 sm:mt-4 sm:bg-red-100 hover:mt-4 hover:bg-red-500 hover:p-[5px] [&:nth-child(3)]:mt-8 2xl:mt-10"
     }
style =
  { container: tw -- Optional empty classname for nicer code formatting

      ~ my_4
      ~ _mt_4 -- "-mt-4" negative mt-4
      ~ px_0_dot_5 -- "px-0.5"
      ~ w_4_over_5 -- "w-4/5"
      ~ sm -- Easily add breakpoint
          ( tw
              ~ mt_4
              ~ bg_red_100
          )
      ~ hover -- Easily add pseduo-classes
          ( tw
              ~ mt_4
              ~ bg_red_500
              ~ arbitraryPadding -- Define and use your own arbitrary class
          )
      ~ arbitraryVariants -- Define and use your own arbitrary variant
          ( tw
              ~ mt_8
          )
      ~ _2xl -- names starting with number is prefixed with an underscore
          ( tw
              ~ mt_10
          )
  }

arbitraryPadding :: Tw "p-[5px]"
arbitraryPadding = Tw

arbitraryVariants :: ∀ a b. MapPrefix "[&:nth-child(3)]:" a b => Tw a -> Tw b
arbitraryVariants _ = Tw

