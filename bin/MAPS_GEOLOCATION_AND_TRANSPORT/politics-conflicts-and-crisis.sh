#!/bin/sh

### [ DON'T TOUCH ] ############################################################
. sentaku -n

_SENTAKU_SEPARATOR=$'\n'
_SENTAKU_NOHEADER=1
_SENTAKU_NONUMBER=1
shopt -s expand_aliases

ERROR_ASCII='\e[31;5;7m
                                                                                                          
  ███████╗██████╗ ██╗   ██╗    ███╗   ██╗ ██████╗ ████████╗    ██████╗ ███████╗ █████╗ ██████╗ ██╗   ██╗  
  ██╔════╝██╔══██╗╚██╗ ██╔╝    ████╗  ██║██╔═══██╗╚══██╔══╝    ██╔══██╗██╔════╝██╔══██╗██╔══██╗╚██╗ ██╔╝  
  ███████╗██████╔╝ ╚████╔╝     ██╔██╗ ██║██║   ██║   ██║       ██████╔╝█████╗  ███████║██║  ██║ ╚████╔╝   
  ╚════██║██╔══██╗  ╚██╔╝      ██║╚██╗██║██║   ██║   ██║       ██╔══██╗██╔══╝  ██╔══██║██║  ██║  ╚██╔╝    
  ███████║██║  ██║   ██║▄█╗    ██║ ╚████║╚██████╔╝   ██║       ██║  ██║███████╗██║  ██║██████╔╝   ██║     
  ╚══════╝╚═╝  ╚═╝   ╚═╝╚═╝    ╚═╝  ╚═══╝ ╚═════╝    ╚═╝       ╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝╚═════╝    ╚═╝     
                                                                                                          
\e[m
'

EXIT_ASCII='\e[32;5;7m
                                                                        
   ██████╗  ██████╗  ██████╗ ██████╗     ██████╗ ██╗   ██╗███████╗██╗   
  ██╔════╝ ██╔═══██╗██╔═══██╗██╔══██╗    ██╔══██╗╚██╗ ██╔╝██╔════╝██║   
  ██║  ███╗██║   ██║██║   ██║██║  ██║    ██████╔╝ ╚████╔╝ █████╗  ██║   
  ██║   ██║██║   ██║██║   ██║██║  ██║    ██╔══██╗  ╚██╔╝  ██╔══╝  ╚═╝   
  ╚██████╔╝╚██████╔╝╚██████╔╝██████╔╝    ██████╔╝   ██║   ███████╗██╗   
   ╚═════╝  ╚═════╝  ╚═════╝ ╚═════╝     ╚═════╝    ╚═╝   ╚══════╝╚═╝   
                                                                        
\e[31m
'
### [ Error hiding and alias loading in shopt ] ################################
clear && source $HOME/dotfiles/.zshrc

### [ Aliases ] ################################################################
alias MAPS_GEOLOCATION_AND_TRANSPORT_CMD='zsh $MAPS_GEOLOCATION_AND_TRANSPORT && bash $MAPS_GEOLOCATION_AND_TRANSPORT'

alias ERROR_CMD='clear && echo $ERROR_ASCII && sleep 3m;clear && echo "$menu" | _sf_main "$@"'
alias EXIT_CMD='clear && echo $EXIT_ASCII && sleep 3m;kill $! wait $! 2>/dev/null sleep 1'

### [ Name of the function to be executed ] ####################################
menu="
   Freedomhouse.org — map of the world that shows the scores of different countries on the following indicators (on a scale of 1 to 100)
   Crimemapping.com — pick a state, a police agency, and what crimes and where were committed in the territory under its control in the last 24 hours, a week, or a month.
   Citizen.com — live map of incidents (mainly shooting) that happened in the last hours in major U.S. cities
   MARITIME AWARENESS PROJECT — detailed map of maritime borders of states, economic zones with statistical data on ports and many other objects
   Monitor Tracking Civic Space Worldwide Map — Civicus (@CIVICUSalliance) — the global civil society alliance, constitutes an influential network of organisations at the local, national, regional and international levels of civil society.
   Hungermap — Worldwide Hunger Map
   Native-land.ca — click on the point on the map and find out: - what nation this area used to belong to; - what language was once spoken there; - a historical event that resulted in a nation losing their territory.
   RiskMap
   Liveuamap
   Crisisgroup
   Hate Map
   emmeline.carto.com
   Global Conflict Tracker
   Acled data crisis map
   Frontex Migratory Map — click on a country or region to see how many illegal border crossings have been reported there in the last six months.
  ← [ BACK TO MAPS_GEOLOCATION_AND_TRANSPORT ]
"

# SNS URL PUSH
_sf_0 ()  { echo "test0" }
_sf_1 ()  { echo "test1" }
_sf_2 ()  { echo "test2" }
_sf_3 ()  { echo "test3" }
_sf_4 ()  { echo "test4" }
_sf_5 ()  { echo "test5" }
_sf_6 ()  { echo "test6" }
_sf_7 ()  { echo "test7" }
_sf_8 ()  { echo "test8" }
_sf_9 ()  { echo "test9" }
_sf_10 () { echo "test10" }
_sf_11 () { echo "test11" }
_sf_12 () { echo "test12" }
_sf_13 () { echo "test13" }
_sf_14 () { echo "test14" }
_sf_15 () { MAPS_GEOLOCATION_AND_TRANSPORT_CMD }

# Search for a selected number of lines
func (){
  for i in `seq 0 99`
    do
    _sf_ + $i () {
      _s_current_n=$i
      _s_break=1
    }
    done
}

# Run the selected function.
_sf_select () {
  # The number of functions
  for i in `seq 0 99`
    do
      if   [ $_s_current_n -eq $i ];then
        _sf_$i
      fi
    done
}

echo "$menu" | _sf_main "$@"
