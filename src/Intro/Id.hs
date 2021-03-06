module Intro.Id where

data Id a = Id a deriving (Eq, Show)

runId :: Id a -> a
runId (Id a) = a

mapId :: (a -> b) -> Id a -> Id b
mapId f (Id a)    = Id (f a)

bindId :: (a -> Id b) -> Id a -> Id b
bindId f (Id a) = f a
