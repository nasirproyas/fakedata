{-# LANGUAGE TemplateHaskell #-}

module Faker.Book where

import Data.Text
import Faker
import Faker.Internal
import Faker.Provider.Book
import Faker.TH

$(generateFakeField "book" "title")

author :: Fake Text
author =
  Fake (unresolvedResolverWithoutVector bookAuthorProvider resolveBookText)

$(generateFakeField "book" "publisher")

$(generateFakeField "book" "genre")
