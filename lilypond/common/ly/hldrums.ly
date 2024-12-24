#(define hldrums '(
                    (crashcymbal    cross   #f            6) ; cymc
                    (hihat			    cross   #f            5) ; hh
                    (closedhihat		cross   stopped       5) ; hhc
                    (halfopenhihat  cross   halfopen      5) ; hhho
                    (openhihat	   	cross   open          5) ; hho
                    (ridecymbal     cross   #f            4) ; cymr
                    (hightom		    default #f            3) ; tomh
                    (himidtom		    default #f	          2) ; tommh
                    (snare			    default #f            1) ; sn
                    (sideStick      cross   #f            0) ; ss
                    (lowtom         default #f           -1) ; toml
                    (bassdrum		    default	#f           -3) ; bd
                    (pedalhihat     cross   #f           -5) ; hhp
                  ))

midiDrumPitches.bassdrum = 35 % Pearl-22-Kick
midiDrumPitches.snare = 38 % Pearl-14-Snare
midiDrumPitches.hihat = 42 % Sabian-13-Hatclosed
midiDrumPitches.closedhihat = 42 % Sabian-13-Hatclosed
midiDrumPitches.pedalhihat = 44 % Sabian-13-Hatpedal
midiDrumPitches.openhihat = 46 % Sabian-13-Hatopen
midiDrumPitches.halfopenhihat = 46 % Sabian-13-Hatopen
midiDrumPitches.hightom = 50 % Pearl-10-Tom
midiDrumPitches.himidtom = 48 % Pearl-12-Tom
midiDrumPitches.ridecymbal = 51 % Sabian-20-Ride
midiDrumPitches.crashcymbal = 57 % Sabian-17-Crash
midiDrumPitches.sideStick = 37 % Pearl-14-SideStick
midiDrumPitches.lowtom = 45 % Pearl-14-FloorTom