module Main where

import Data.List
import System.Random

main = do { let trainingInput = [[0, 0, 1], [1, 1, 1], [1, 0, 1], [0, 1, 1]]
          ; let trainingOutput = transpose [[0, 1, 1, 0]]
          ; let (p1, p2, p3, out) = getRandom
          ; let n = Neuron p1 p2 p3 out
          ; print $ "input " ++ show trainingInput
          ; print $ "output " ++ show trainingOutput }

getRandom :: (Float, Float, Float, Float)
getRandom = 
    let gen = (mkStdGen 2452345)
        range = (-1.0, 1.0)
        (p1, gen1) = randomR range gen
        (p2, gen2) = randomR range gen1
        (p3, gen3) = randomR range gen2
     in (p1, p2, p3, 0.0)

sigmoid :: Double -> Double
sigmoid x = 1 / (1 + exp(-x))

sigmoid' :: Double -> Double
sigmoid' x = x * (1 - x)

data Neuron = Neuron { input1 :: Float
                     , input2 :: Float
                     , input3 :: Float
                     , output :: Float
                     } deriving (Show)

