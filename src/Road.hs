module Road
where

import Control.Monad
import qualified Data.BitSet.Dynamic as Bits
import Data.BitSet.Dynamic (BitSet)

data RoadBits = RoadBits { _road_bits :: BitSet Int }

isRoad :: RoadBits  -> Int ->  Bool
isRoad rbits i = Bits.member i (_road_bits rbits)

instance Show RoadBits where
  show = showRoadBits

showRoadBits :: RoadBits -> String
showRoadBits rbits = map go [0]
  where go i = if isRoad rbits 0 then 'X' else '.'

-- this segfaults in ghci:
test = RoadBits $ Bits.fromList [0..63]  -- 62 works

test2 = do
  let bset = Bits.fromList [0..63]
  forM_ [0..10] $ \i -> do
    putChar $ if Bits.member i bset then 'X' else '.'
  putStrLn ""

