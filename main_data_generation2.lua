--- Script that generates training and validation files.
-- @see data_generation
-- @script main_data_generation
local filename = os.time()

if #arg == 0 then
  print("Please specify the street. 1 = preflop, 4 = river")
  return
end

local arguments = require 'Settings.arguments'
local data_generation = require 'DataGeneration.data_generation'

data_generation:generate_data(20000, filename, tonumber(arg[1]))
