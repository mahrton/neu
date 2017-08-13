module Main where

import Data.List

main = do { let trainingInput = [[0, 0, 1], [1, 1, 1], [1, 0, 1], [0, 1, 1]]
          ; let trainingOutput = [0, 1, 1, 0]
          ; let n = Neuron 0.1 0.2 0.3 0
          ; print $ "input " ++ show trainingInput
          ; print $ "output " ++ show trainingOutput }

data Neuron = Neuron { input1 :: Float
                     , input2 :: Float
                     , input3 :: Float
                     , output :: Float
                     } deriving (Show)

