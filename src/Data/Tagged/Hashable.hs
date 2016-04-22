{-# LANGUAGE CPP #-}

{-# OPTIONS_GHC -fno-warn-orphans #-}

#if __GLASGOW_HASKELL__ >= 702
{-# LANGUAGE Safe #-}
#endif

#if __GLASGOW_HASKELL__ >= 706
{-# LANGUAGE PolyKinds #-}
#endif

module Data.Tagged.Hashable
    ()
where

-- hashable ------------------------------------------------------------------
import           Data.Hashable (Hashable, hashWithSalt)


-- tagged ---------------------------------------------------------------------
import           Data.Tagged (Tagged (Tagged))


------------------------------------------------------------------------------
instance Hashable a => Hashable (Tagged s a) where
    hashWithSalt s (Tagged a) = hashWithSalt s a
