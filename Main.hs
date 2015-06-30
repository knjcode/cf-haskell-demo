{-# LANGUAGE OverloadedStrings #-}
import Control.Applicative ((<$>))
import System.Environment  (getEnv)
import Web.Scotty

main = do
  port <- read <$> getEnv "PORT"
  scotty port $ do
    get "/" $ do
      html "Hello World!\nThis is Haskell on Cloud Foundry."
