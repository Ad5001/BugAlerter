set Save to button returned of (display dialog "Error errortype:\n'msg' \non file error_file at line error_line" with icon note buttons {"Save error", "Close"} default button {"Close"})

if Save = "Save error" then tell application "Safari" to open location "http://www.mc-pe.ga/errors/save.php?type=errortype&message=msg&file=error_file&line=error_line"
