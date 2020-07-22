!/bin/sh
while :
do
  cd /content/deeper-stacker/Source
  /content/torch/install/bin/th DataGeneration/main_data_generation2.lua 4
  cd /content/deeper-stacker/Data/TrainSamples/NoLimit/river_raw/
  current_time=$(date "+%Y%m%d-%H%M")
  zip $current_time.river.zip *
  mv *.zip /content/gdrive/'My Drive'/river/
  rm /content/deeper-stacker/Data/TrainSamples/NoLimit/river_raw/*.inputs
  rm /content/deeper-stacker/Data/TrainSamples/NoLimit/river_raw/*.targets
done
