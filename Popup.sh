#!bin/bash
yum install dialog
result=$(dialog --yesno 
  --defaultno "OK" 
  --yes-label "Save error" 
  --no-ok
  --title "errortype" 
  --textbox "'msg'\n in file error_file at line error_line")

# To save it

response=$?
case $response in
   0) if which xdg-open > /dev/null then
     xdg-open http://mc-pe.ga/errors/save.php?type=errortype&message=msg&file=error_file&line=error_line
   elif which gnome-open > /dev/null then
     gnome-openhttp://mc-pe.ga/errors/save.php?type=errortype&message=msg&file=error_file&line=error_line
   fi;;
   1);;
   255);;
esac
