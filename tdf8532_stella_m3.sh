#!/bin/sh
CRESET='\e[0m'
CRED='\e[38;5;203m'
CYELLOW='\e[38;5;184m'
CCYAN='\e[38;5;39m'

echo "${CCYAN}Initialize TDF8532!"

#**********************************************************
echo "\n${CYELLOW}GET_IDENTIFICATION_REQ${CRESET}"
wcom=$(i2ctransfer -y -f 5 w5@0x6C 0x02 0x00 0x02 0x80 0xE0)
echo "i2ctransfer -y -f 5 w5@0x6C 0x02 0x00 0x02 0x80 0xE0"
echo $wcom
rcom=$(i2ctransfer -y -f 5 r3@0x6C)
echo "i2ctransfer -y -f 5 r3@0x6C --> "
echo $rcom
echo "\n${CYELLOW}GET_IDENTIFICATION_REPL${CRESET}"
rcom=$(i2ctransfer -y -f 5 r11@0x6C)
echo "i2ctransfer -y -f 5 r11@0x6C --> "
echo $rcom
#**********************************************************

echo "\n${CYELLOW}SET_DEVICE_CONFIG${CRESET}"
wcom=$(i2ctransfer -y -f 5 w12@0x6C 0x02 0x00 0x09 0x80 0x12 0x01 0x03 0x40 0x01 0x03 0x01 0x00)
echo "i2ctransfer -y -f 5 w12@0x6C 0x02 0x00 0x09 0x80 0x12 0x01 0x03 0x40 0x01 0x03 0x01 0x00"
echo $wcom

#**********************************************************
echo "\n${CYELLOW}GET_IDENTIFICATION_REQ${CRESET}"
wcom=$(i2ctransfer -y -f 5 w5@0x6C 0x02 0x00 0x02 0x80 0xE0)
echo "i2ctransfer -y -f 5 w5@0x6C 0x02 0x00 0x02 0x80 0xE0"
echo $wcom
rcom=$(i2ctransfer -y -f 5 r3@0x6C)
echo "i2ctransfer -y -f 5 r3@0x6C --> "
echo $rcom
echo "\n${CYELLOW}GET_IDENTIFICATION_REPL${CRESET}"
rcom=$(i2ctransfer -y -f 5 r11@0x6C)
echo "i2ctransfer -y -f 5 r11@0x6C --> "
echo $rcom
#**********************************************************

echo "\n${CYELLOW}SET_CHANNEL_CONFIG${CRESET}"
wcom=$(i2ctransfer -y -f 5 w50@0x6C 0x02 0x00 0x2F 0x80 0x24 0x04 0x01 0x32 0x01 0x00 0x02 0xA5 0xC5 0x02 0x00 0x24 0x00 0x02 0x32 0x01 0x00 0x02 0xA5 0xC5 0x02 0x00 0x24 0x00 0x03 0x32 0x01 0x00 0x02 0xA5 0xC5 0x02 0x00 0x24 0x00 0x04 0x32 0x01 0x00 0x02 0xA5 0xC5 0x02 0x00 0x24 0x00)
echo "i2ctransfer -y -f 5 w50@0x6C 0x02 0x00 0x2F 0x80 0x24 0x04 0x01 0x32 0x01 0x00 0x02 0xA5 0xC5 0x02 0x00 0x24 0x00 0x02 0x32 0x01 0x00 0x02 0xA5 0xC5 0x02 0x00 0x24 0x00 0x03 0x32 0x01 0x00 0x02 0xA5 0xC5 0x02 0x00 0x24 0x00 0x04 0x32 0x01 0x00 0x02 0xA5 0xC5 0x02 0x00 0x24 0x00"
echo $wcom

echo "\n${CYELLOW}SET_FILTER_DIAG_CONFIG${CRESET}"
wcom=$(i2ctransfer -y -f 5 w7@0x6C 0x02 0x00 0x04 0x80 0x8B 0xFF 0x1A)
echo "i2ctransfer -y -f 5 w7@0x6C 0x02 0x00 0x04 0x80 0x8B 0xFF 0x1A"
echo $wcom

echo "\n${CYELLOW}SET_MODSCHEME_CONFIG${CRESET}"
wcom=$(i2ctransfer -y -f 5 w14@0x6C 0x02 0x00 0x0B 0x80 0x20 0x04 0x01 0x01 0x02 0x01 0x03 0x01 0x04 0x01)
echo "i2ctransfer -y -f 5 w14@0x6C 0x02 0x00 0x0B 0x80 0x20 0x04 0x01 0x01 0x02 0x01 0x03 0x01 0x04 0x01"
echo $wcom
#**********************************************************
echo "\n${CYELLOW}GET_IDENTIFICATION_REQ${CRESET}"
wcom=$(i2ctransfer -y -f 5 w5@0x6C 0x02 0x00 0x02 0x80 0xE0)
echo "i2ctransfer -y -f 5 w5@0x6C 0x02 0x00 0x02 0x80 0xE0"
echo $wcom
rcom=$(i2ctransfer -y -f 5 r3@0x6C)
echo "i2ctransfer -y -f 5 r3@0x6C --> "
echo $rcom
echo "\n${CYELLOW}GET_IDENTIFICATION_REPL${CRESET}"
rcom=$(i2ctransfer -y -f 5 r11@0x6C)
echo "i2ctransfer -y -f 5 r11@0x6C --> "
echo $rcom
#**********************************************************

echo "\n${CYELLOW}SET_PWM_FREQ${CRESET}"
wcom=$(i2ctransfer -y -f 5 w8@0x6C 0x02 0x00 0x05 0x80 0x16 0x05 0x00 0x00)
echo "i2ctransfer -y -f 5 w8@0x6C 0x02 0x00 0x05 0x80 0x16 0x05 0x00 0x00"
echo $wcom

echo "\n${CYELLOW}SET_AUDIOROUTING_CONFIG${CRESET}"
wcom=$(i2ctransfer -y -f 5 w13@0x6C 0x02 0x00 0x0A 0x80 0x28 0x00 0x01 0x00 0x01 0x00 0x01 0x00 0x01)
echo "i2ctransfer -y -f 5 w13@0x6C 0x02 0x00 0x0A 0x80 0x28 0x00 0x01 0x00 0x01 0x00 0x01 0x00 0x01"
echo $wcom

echo "\n${CYELLOW}SET_DCLOADDETECTION_CONFIG${CRESET}"
wcom=$(i2ctransfer -y -f 5 w22@0x6C 0x02 0x00 0x13 0x80 0x22 0x04 0x01 0x04 0x00 0x00 0x02 0x04 0x00 0x00 0x03 0x04 0x00 0x00 0x04 0x04 0x00 0x00)
echo "i2ctransfer -y -f 5 w22@0x6C 0x02 0x00 0x13 0x80 0x22 0x04 0x01 0x04 0x00 0x00 0x02 0x04 0x00 0x00 0x03 0x04 0x00 0x00 0x04 0x04 0x00 0x00"
echo $wcom

echo "\n${CYELLOW}SET_ACLOADDETECTION_CONFIG${CRESET}"
wcom=$(i2ctransfer -y -f 5 w27@0x6C 0x02 0x00 0x18 0x80 0x23 0x04 0x09 0x01 0x02 0x00 0x00 0x00 0x02 0x02 0x00 0x00 0x00 0x03 0x02 0x00 0x00 0x00 0x04 0x02 0x00 0x00 0x00)
echo "i2ctransfer -y -f 5 w27@0x6C 0x02 0x00 0x18 0x80 0x23 0x04 0x09 0x01 0x02 0x00 0x00 0x00 0x02 0x02 0x00 0x00 0x00 0x03 0x02 0x00 0x00 0x00 0x04 0x02 0x00 0x00 0x00"
echo $wcom

echo "\n${CYELLOW}SET_STARTUPDIAG${CRESET}"
wcom=$(i2ctransfer -y -f 5 w8@0x6C 0x02 0x00 0x05 0x80 0x32 0x03 0x00 0x0F)
echo "i2ctransfer -y -f 5 w8@0x6C 0x02 0x00 0x05 0x80 0x32 0x03 0x00 0x0F"
echo $wcom
#**********************************************************
echo "\n${CYELLOW}GET_IDENTIFICATION_REQ${CRESET}"
wcom=$(i2ctransfer -y -f 5 w5@0x6C 0x02 0x00 0x02 0x80 0xE0)
echo "i2ctransfer -y -f 5 w5@0x6C 0x02 0x00 0x02 0x80 0xE0"
echo $wcom
rcom=$(i2ctransfer -y -f 5 r3@0x6C)
echo "i2ctransfer -y -f 5 r3@0x6C --> "
echo $rcom
echo "\n${CYELLOW}GET_IDENTIFICATION_REPL${CRESET}"
rcom=$(i2ctransfer -y -f 5 r11@0x6C)
echo "i2ctransfer -y -f 5 r11@0x6C --> "
echo $rcom
#**********************************************************

echo "\n${CYELLOW}SET_AUDIO_CONFIG${CRESET}"
wcom=$(i2ctransfer -y -f 5 w11@0x6C 0x02 0x00 0x08 0x80 0x1C 0x00 0x01 0x00 0x04 0x00 0x01)
echo "i2ctransfer -y -f 5 w11@0x6C 0x02 0x00 0x08 0x80 0x1C 0x00 0x01 0x00 0x04 0x00 0x01"
echo $wcom

#**********************************************************
echo "\n${CYELLOW}GET_IDENTIFICATION_REQ${CRESET}"
wcom=$(i2ctransfer -y -f 5 w5@0x6C 0x02 0x00 0x02 0x80 0xE0)
echo "i2ctransfer -y -f 5 w5@0x6C 0x02 0x00 0x02 0x80 0xE0"
echo $wcom
rcom=$(i2ctransfer -y -f 5 r3@0x6C)
echo "i2ctransfer -y -f 5 r3@0x6C --> "
echo $rcom
echo "\n${CYELLOW}GET_IDENTIFICATION_REPL${CRESET}"
rcom=$(i2ctransfer -y -f 5 r11@0x6C)
echo "i2ctransfer -y -f 5 r11@0x6C --> "
echo $rcom
#**********************************************************

echo "\n${CYELLOW}SET_CLOCK_STATE (On)${CRESET}"
wcom=$(i2ctransfer -y -f 5 w6@0x6C 0x02 0x00 0x03 0x80 0x1A 0x01)
echo "i2ctransfer -y -f 5 w6@0x6C 0x02 0x00 0x03 0x80 0x1A 0x01"
echo $wcom


echo "\n${CYELLOW}Poll Timer Started ::1000 milliseconds...${CRESET}"

echo "\n${CYELLOW}GET_AUDIOSTATUS_REQ${CRESET}"
wcom=$(i2ctransfer -y -f 5 w5@0x6C 0x02 0x00 0x02 0x80 0x90)
echo "i2ctransfer -y -f 5 w5@0x6C 0x02 0x00 0x02 0x80 0x90"
echo $wcom
rcom=$(i2ctransfer -y -f 5 r3@0x6C)
echo "i2ctransfer -y -f 5 r3@0x6C --> "
echo $rcom
echo "\n${CYELLOW}GET_AUDIOSTATUS_REPL${CRESET}"
rcom=$(i2ctransfer -y -f 5 r6@0x6C)
echo "i2ctransfer -y -f 5 r6@0x6C --> "
echo $rcom

echo "\n${CYELLOW}GET_DEVICESTATUS_REQ${CRESET}"
wcom=$(i2ctransfer -y -f 5 w5@0x6C 0x02 0x00 0x02 0x80 0x80)
echo "i2ctransfer -y -f 5 w5@0x6C 0x02 0x00 0x02 0x80 0x80"
echo $wcom
rcom=$(i2ctransfer -y -f 5 r3@0x6C)
echo "i2ctransfer -y -f 5 r3@0x6C --> "
echo $rcom
echo "\n${CYELLOW}GET_DEVICESTATUS_REPL${CRESET}"
rcom=$(i2ctransfer -y -f 5 r6@0x6C)
echo "i2ctransfer -y -f 5 r6@0x6C --> "
echo $rcom

echo "\n${CYELLOW}GET_SUPPLYVOLTAGE_REQ${CRESET}"
wcom=$(i2ctransfer -y -f 5 w7@0x6C 0x02 0x00 0x04 0x80 0x82 0x2F 0x50)
echo "i2ctransfer -y -f 5 w7@0x6C 0x02 0x00 0x04 0x80 0x82 0x2F 0x50"
echo $wcom
rcom=$(i2ctransfer -y -f 5 r3@0x6C)
echo "i2ctransfer -y -f 5 r3@0x6C --> "
echo $rcom
echo "\n${CYELLOW}GET_SUPPLYVOLTAGE_REPL${CRESET}"
rcom=$(i2ctransfer -y -f 5 r7@0x6C)
echo "i2ctransfer -y -f 5 r7@0x6C --> "
echo $rcom

echo "\n${CYELLOW}GET_TEMPERATURE_REQ${CRESET}"
wcom=$(i2ctransfer -y -f 5 w5@0x6C 0x02 0x00 0x02 0x80 0x84)
echo "i2ctransfer -y -f 5 w5@0x6C 0x02 0x00 0x02 0x80 0x84"
echo $wcom
rcom=$(i2ctransfer -y -f 5 r3@0x6C)
echo "i2ctransfer -y -f 5 r3@0x6C --> "
echo $rcom
echo "\n${CYELLOW}GET_TEMPERATURE_REPL${CRESET}"
rcom=$(i2ctransfer -y -f 5 r7@0x6C)
echo "i2ctransfer -y -f 5 r7@0x6C --> "
echo $rcom

echo "\n${CYELLOW}GET_CHANNELSTATUS_REQ${CRESET}"
wcom=$(i2ctransfer -y -f 5 w5@0x6C 0x02 0x00 0x02 0x80 0x88)
echo "i2ctransfer -y -f 5 w5@0x6C 0x02 0x00 0x02 0x80 0x88"
echo $wcom
rcom=$(i2ctransfer -y -f 5 r3@0x6C)
echo "i2ctransfer -y -f 5 r3@0x6C --> "
echo $rcom
echo "\n${CYELLOW}GET_CHANNELSTATUS_REPL${CRESET}"
rcom=$(i2ctransfer -y -f 5 r30@0x6C)
echo "i2ctransfer -y -f 5 r30@0x6C --> "
echo $rcom

echo "\n${CYELLOW}GET_FAULTSTATUS_REQ${CRESET}"
wcom=$(i2ctransfer -y -f 5 w5@0x6C 0x02 0x00 0x02 0x80 0x81)
echo "i2ctransfer -y -f 5 w5@0x6C 0x02 0x00 0x02 0x80 0x81"
echo $wcom
rcom=$(i2ctransfer -y -f 5 r3@0x6C)
echo "i2ctransfer -y -f 5 r3@0x6C --> "
echo $rcom
echo "\n${CYELLOW}GET_FAULTSTATUS_REPL${CRESET}"
rcom=$(i2ctransfer -y -f 5 r9@0x6C)
echo "i2ctransfer -y -f 5 r9@0x6C --> "
echo $rcom

echo "\n${CYELLOW}GET_ACLOADDETECTIONRESULT_REQ${CRESET}"
wcom=$(i2ctransfer -y -f 5 w5@0x6C 0x02 0x00 0x02 0x80 0x87)
echo "i2ctransfer -y -f 5 w5@0x6C 0x02 0x00 0x02 0x80 0x87"
echo $wcom
rcom=$(i2ctransfer -y -f 5 r3@0x6C)
echo "i2ctransfer -y -f 5 r3@0x6C --> "
echo $rcom
echo "\n${CYELLOW}GET_ACLOADDETECTIONRESULT_REPL${CRESET}"
rcom=$(i2ctransfer -y -f 5 r38@0x6C)
echo "i2ctransfer -y -f 5 r38@0x6C --> "
echo $rcom

echo "\n${CYELLOW}GET_DCLOADDETECTIONRESULT_REQ${CRESET}"
wcom=$(i2ctransfer -y -f 5 w5@0x6C 0x02 0x00 0x02 0x80 0x86)
echo "i2ctransfer -y -f 5 w5@0x6C 0x02 0x00 0x02 0x80 0x86"
echo $wcom
rcom=$(i2ctransfer -y -f 5 r3@0x6C)
echo "i2ctransfer -y -f 5 r3@0x6C --> "
echo $rcom
echo "\n${CYELLOW}GET_DCLOADDETECTIONRESULT_REPL${CRESET}"
rcom=$(i2ctransfer -y -f 5 r34@0x6C)
echo "i2ctransfer -y -f 5 r34@0x6C --> "
echo $rcom

echo "\n${CYELLOW}GET_FILTER_DIAG_RESULT_REQ${CRESET}"
wcom=$(i2ctransfer -y -f 5 w5@0x6C 0x02 0x00 0x02 0x80 0x8A)
echo "i2ctransfer -y -f 5 w5@0x6C 0x02 0x00 0x02 0x80 0x8A"
echo $wcom
rcom=$(i2ctransfer -y -f 5 r3@0x6C)
echo "i2ctransfer -y -f 5 r3@0x6C --> "
echo $rcom
echo "\n${CYELLOW}GET_FILTER_DIAG_RESULT_REPL${CRESET}"
rcom=$(i2ctransfer -y -f 5 r26@0x6C)
echo "i2ctransfer -y -f 5 r26@0x6C --> "
echo $rcom


# 2019.Feb.26th added.... Kevin init...
echo "\n${CYELLOW}Filter Diagnostic --> SET_FILTER_DIAG_CONFIG --> Enabled ${CRESET}"
wcom=$(i2ctransfer -y -f 5 w7@0x6C 0x02 0x00 0x04 0x80 0x8B 0xFF 0x1A)
echo "i2ctransfer -y -f 5 w7@0x6C 0x02 0x00 0x04 0x80 0x8B 0xFF 0x1A"
echo $wcom

echo "\n${CYELLOW}Audio Routing --> SET_AUDIOROUTING_CONFIG --> slot 1${CRESET}"
wcom=$(i2ctransfer -y -f 5 w13@0x6C 0x02 0x00 0x0A 0x80 0x28 0x00 0x01 0x00 0x01 0x00 0x01 0x00 0x01)
echo "i2ctransfer -y -f 5 w13@0x6C 0x02 0x00 0x0A 0x80 0x28 0x00 0x01 0x00 0x01 0x00 0x01 0x00 0x01"
echo $wcom

echo "\n${CYELLOW}DC load detection --> SET_DCLOADDETECTION_CONFIG --> 4 Ohms${CRESET}"
wcom=$(i2ctransfer -y -f 5 w22@0x6C 0x02 0x00 0x13 0x80 0x22 0x04 0x01 0x04 0x00 0x00 0x02 0x04 0x00 0x00 0x03 0x04 0x00 0x00 0x04 0x04 0x00 0x00)
echo "i2ctransfer -y -f 5 w22@0x6C 0x02 0x00 0x13 0x80 0x22 0x04 0x01 0x04 0x00 0x00 0x02 0x04 0x00 0x00 0x03 0x04 0x00 0x00 0x04 0x04 0x00 0x00"
echo $wcom
# =======================

# 2019.Feb.26th added.... channel enable/disable
echo "\n${CYELLOW}Stella modified: Set channel disabled... ${CRESET}"
echo "\n${CYELLOW}SET_CHANNEL_DISABLE${CRESET}"
wcom=$(i2ctransfer -y -f 5 w6@0x6C 0x02 0x00 0x03 0x80 0x27 0x5F)
echo "i2ctransfer -y -f 5 w6@0x6C 0x02 0x00 0x03 0x80 0x27 0x5F"
echo $wcom

sleep 2
echo "\n${CYELLOW}Stella modified: Set channel enabled... ${CRESET}"
echo "\n${CYELLOW}SET_CHANNEL_ENABLE --> ch1${CRESET}"
wcom=$(i2ctransfer -y -f 5 w6@0x6C 0x02 0x00 0x03 0x80 0x26 0x51)
echo "i2ctransfer -y -f 5 w6@0x6C 0x02 0x00 0x03 0x80 0x26 0x51"
echo $wcom

echo "\n${CYELLOW}Stella modified: SET_CHANNEL_DISABLE --> ch2/3/4${CRESET}"
wcom=$(i2ctransfer -y -f 5 w6@0x6C 0x02 0x00 0x03 0x80 0x27 0x5E)
echo "i2ctransfer -y -f 5 w6@0x6C 0x02 0x00 0x03 0x80 0x27 0x5E"
echo $wcom

sleep 2
echo "\n${CYELLOW}Stella modified: Set channel enabled... ${CRESET}"
echo "\n${CYELLOW}SET_CHANNEL_ENABLE --> ch1/2${CRESET}"
wcom=$(i2ctransfer -y -f 5 w6@0x6C 0x02 0x00 0x03 0x80 0x26 0x53)
echo "i2ctransfer -y -f 5 w6@0x6C 0x02 0x00 0x03 0x80 0x26 0x53"
echo $wcom

echo "\n${CYELLOW}Stella modified: SET_CHANNEL_DISABLE --> ch3/4${CRESET}"
wcom=$(i2ctransfer -y -f 5 w6@0x6C 0x02 0x00 0x03 0x80 0x27 0x5C)
echo "i2ctransfer -y -f 5 w6@0x6C 0x02 0x00 0x03 0x80 0x27 0x5C"
echo $wcom

sleep 2
echo "\n${CYELLOW}Stella modified: Set channel enabled... ${CRESET}"
echo "\n${CYELLOW}SET_CHANNEL_ENABLE --> ch1/2/3${CRESET}"
wcom=$(i2ctransfer -y -f 5 w6@0x6C 0x02 0x00 0x03 0x80 0x26 0x57)
echo "i2ctransfer -y -f 5 w6@0x6C 0x02 0x00 0x03 0x80 0x26 0x57"
echo $wcom

echo "\n${CYELLOW}Stella modified: SET_CHANNEL_DISABLE --> ch4${CRESET}"
wcom=$(i2ctransfer -y -f 5 w6@0x6C 0x02 0x00 0x03 0x80 0x27 0x58)
echo "i2ctransfer -y -f 5 w6@0x6C 0x02 0x00 0x03 0x80 0x27 0x58"
echo $wcom

sleep 2
echo "\n${CYELLOW}Stella modified: Set channel enabled... ${CRESET}"
echo "\n${CYELLOW}SET_CHANNEL_ENABLE --> ch1/2/3/4${CRESET}"
wcom=$(i2ctransfer -y -f 5 w6@0x6C 0x02 0x00 0x03 0x80 0x26 0x5F)
echo "i2ctransfer -y -f 5 w6@0x6C 0x02 0x00 0x03 0x80 0x26 0x5F"
echo $wcom

sleep 1
echo "\n${CYELLOW}SET_CHANNEL_UNMUTE${CRESET}"
wcom=$(i2ctransfer -y -f 5 w6@0x6C 0x02 0x00 0x03 0x80 0x43 0x5F)
echo "i2ctransfer -y -f 5 w6@0x6C 0x02 0x00 0x03 0x80 0x43 0x5F"
echo $wcom
# =======================

