{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE QuasiQuotes #-}

module HaskellLibTest.Wrapper where

import qualified Language.C.Inline as C

C.include "<lib.h>"

printName :: IO ()
printName = [C.exp| void { print_name() } |]
