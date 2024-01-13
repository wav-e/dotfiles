#!/bin/bash
#

# this settings valid for:
# * default ubuntu 23.10
# * Apple magic trackpad 2
# * libinput 1.24
# * gnome X(!) session
# * regular dpi (24 inch display 1080) screen



# argument {1} - xinput device id

ID=${1}
#STEP=${2}

# xinput list
# xinput list-props ${ID}
# xinput set-prop ${ID} "libinput Scrolling Pixel Distance" 50
#
#xinput set-prop ${ID} "libinput Accel Custom Motion Points" 0.0, 0.5


ACCEL_POINTS="
0.0
   0.5203
   0.9440
   1.3293
   1.8497
   2.5240
   3.1407
   3.7380
   4.4700
   4.9133
   5.5300
   6.3970
   6.9170
   7.3410
   7.6880
   7.9577
   8.2273
   8.4780
   8.6707
   8.7860
   8.8823
   8.9787
   9.0750
   9.1713
   9.2293
   9.2677
   9.2100
   9.1713
   9.1330
   9.0943
   9.0560
   8.9597
   8.8633
   8.7860
   8.6897
   8.5743
   8.4780
   8.3430
   8.2273
   8.0540
   7.9383
   7.8033
   7.6880
   7.5723
   7.4567
   7.3410
   7.2447
   7.1483
   7.0520
   6.9557
"



#scroll like macos with linear acceleration
xinput set-prop ${ID} "libinput Accel Custom Fallback Points" 0.0 0.05
xinput set-prop ${ID} "libinput Accel Custom Fallback Step" 1.0

xinput set-prop ${ID} "libinput Accel Custom Motion Points" $ACCEL_POINTS
xinput set-prop ${ID} "libinput Accel Custom Motion Step" 2.0

#enable custom acceleration profile
xinput set-prop ${ID} "libinput Accel Profile Enabled" 0, 0, 1
