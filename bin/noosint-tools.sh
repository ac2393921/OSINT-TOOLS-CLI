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
alias ERROR_CMD='clear && echo $ERROR_ASCII && sleep 3m;clear && echo "$menu" | _sf_main "$@"'
alias TOC_CMD='zsh $TOC && bash $TOC'

### [ Name of the function to be executed ] ####################################
menu="
   Manytools — Collection of tools to automate the repetitive jobs involved in webdevelopment and hacking.
   Gdown — When downloading files from Google Drive curl/wget fails (because of the security notice). But this problem is easily solved.
   Webdext — An intelligent and quick web data extractor for #GoogleChrome. Support data extraction from web pages containing a list of objects such as product listing, news listing, search result, etc
   Online Loudness Meter — allows to estimate the volume of noises in the room or to analyze the volume of sounds in a recording file.
   Download Sorter — simple tool that will help set up the distribution of files with different extensions into different folders in a minute and permanently put 'Downloads' folder in order.
   Z History Dump — Open chrome://history/ and download all links from browser history in json. This provides tremendous opportunities for visualization and analysis of information.
   Codesandbox — Great online environment for creating, testing, and researching written JavaScript tools (and #OSINT has many: social-analyzer, opencti, rengine, aleph).
   Voice Stress Test — tool analyzes the voice and determines a person's stress level.
   Scrapersnbots — A collection of a wide variety of online tools for #osint and not only: search for users with a specific name on different sites, one domain #Google Image search, YouTube tags viewer, url-extractor and much more
   Headlines.Sharethrough.com — analyzes headlines according to four indicators (strenghts, suggestions, engagement, impression) and gives a score from 1 to 100
   Miteru — Experimental phishing kit detection tool. It collects phishy URLs from phishing info feeds and checks each phishy URL whether it enables directory listing and contains a phishing kit (compressed file) or not
   Slideshare Downloader — A very simple and fast tool for downloading Slideshare presentations in PDF format (recommend to choose High quality at once)
   Web history stat — detailed statistics of your browser history
   @YTranslateBot — type text or resend messages to Telegram bot for translate it.
   Google Docs to Markdown online converter — just copy text to the site
   CloudHQ — A collection of several dozen extensions for #Chrome that allow you to extend the functionality of the standard #Gmail interface and maximize your #productivity. Tracking, sorting, sharing, saving, editing and much more.
   AHA Music — A very simple tool that helps you determine what track is playing in the current browser tab. What I like best about it is that it works when the sound is turned OFF (albeit with a slight delay)
   Talend API Tester Free Edition — tool that allows to quickly test requests to different APIs directly in the browser, send requests and inspect responses, validate API behavior
   Web--proxy — free web proxy
   RemindWhen — Simple app that reminds you on email if your favorite country opens for tourists from your country.
   Broken Link Checker — shows which links on the page are giving out errors. It helps to find sites that have been working recently but are no longer working.
   Binvis — lets you visually dissect and analyze binary files. It's the interactive grandchild of a static visualisation online tool
   Gdrive-copy — The standard functionality of #GoogleDrive does not allow you to copy an entire folder with all subfolders and files. But it can be done using third-party applications
   unscreen.com — remove the background from an uploaded video
   shellcheck.net — analyzes command-line scripts and explains in detail the errors found in them
   Archivebox — Create your own self-hosted web archive. Save pages from browser history, bookmarks, Pocket etc. Save html, js, css, media, pdf and other files
   Udemy Video Playback Speed — A simple extension that changes the speed of playing video courses on #Udemy.
   Magical. Text Expander — Create shortcuts in Google Chrome to reduce text entry time. For example: email templates, message templates for messengers, signatures and contact information, the names of people with complex spelling (lom -> Lomarrikkendd)
   coveryourtracks.eff.org — can tell a lot about your browser and computer, including showing a list of installed fonts on the system.
   Gephi — fast and easy to learn graph analytics tool with a lot of modules (plugins)
   Regular Expression Analyzer — super tool for those who forget to leave comments on their code or have to deal with someone else's code.
   Search Commands — Google Chrome extension provides a Swiss-knife style commands tool inside your browser’s address bar to enhance your search experience
   Smart ruler — Simple #GoogleChrome extension (200 000 users) for those who like to explore the design of different sites
   Developer search tool — Take the art of copy and paste from Stack Overflow to a new level of speed and productivity
   Online tools — 55 tools for calculation hash functions, calculation file checksum, encoding and decoding strings
   VERY QUICK and SIMPLE metadata online editor and remover
   HTTP Cat — free #API to get pictures with cats for different HTTP response codes
   Gitpod.io — run code from repositories on Github directly in a browser
   CrackStation.net — password hash cracker
   Run PHP functions online
   Siftrss.com — tool for filtering RSS feeds
   The Missing Package Manager for macOS (or Linux)
   HTTPIE.IO — command-line HTTP client
   JSON to CSV
   Windows 10 Online Emulator
   Parrot Security OS Online Emulator
   Open Multiple Links ☷ One Click
   Tobloef.com — text to mind map
   CyberChef — collection of more than a hundred online #tools for automating a wide variety of tasks (string coding, text comparison, double-space removal)
   Textise.net — convert the HTML code of a page to TXT
   Shadowcrypt Tools — 24 online tools for OSINT, network scanning, MD5 encryption and many others
   Google Docs Voice Comments — simple trick to save time. Voice comments in GoogleDocs, Sheets, Slides, and Forms.
   Text to ASCII Art Generator (TAAG) — This site will help you make atmospheric lettering for your command line tool or README.
   Cheat sheet maker — simple tool for creating cheat sheets
   Caloriemama — AI can identify the type of food from the photo and give information about its caloric value.
   Webmapper — Extension that create a map-visualization based by browser history. A visual representation of the most visited sites in 10, 20, 50 or 100 days. Zoomable and searchable.
  ﴚ [ BACK TO TOC ]
"

# CODE URL PUSH
_sf_0 ()  {  }
_sf_1 ()  {  }
_sf_2 ()  {  }
_sf_3 ()  {  }
_sf_4 ()  {  }
_sf_5 ()  {  }
_sf_6 ()  {  }
_sf_7 ()  {  }
_sf_8 ()  {  }
_sf_9 ()  {  }
_sf_10 () {  }
_sf_11 () {  }
_sf_12 () {  }
_sf_13 () {  }
_sf_14 () {  }
_sf_15 () {  }
_sf_16 () {  }
_sf_17 () {  }
_sf_18 () {  }
_sf_19 () {  }
_sf_20 () {  }
_sf_21 () {  }
_sf_22 () {  }
_sf_23 () {  }
_sf_24 () {  }
_sf_25 () {  }
_sf_26 () {  }
_sf_27 () {  }
_sf_28 () {  }
_sf_29 () {  }
_sf_30 () {  }
_sf_31 () {  }
_sf_32 () {  }
_sf_33 () {  }
_sf_34 () {  }
_sf_35 () {  }
_sf_36 () {  }
_sf_37 () {  }
_sf_38 () {  }
_sf_39 () {  }
_sf_40 () {  }
_sf_41 () {  }
_sf_42 () {  }
_sf_43 () {  }
_sf_44 () {  }
_sf_45 () {  }
_sf_46 () {  }
_sf_47 () {  }
_sf_48 () {  }
_sf_49 () {  }
_sf_50 () {  }
_sf_51 () {  }
_sf_52 () {  }
_sf_53 () {  }
_sf_54 () {  }
_sf_55 () {  }
_sf_56 () { TOC_CMD }

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
