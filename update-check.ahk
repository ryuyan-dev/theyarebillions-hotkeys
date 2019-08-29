#Include JSON.ahk

version := "v1.0.1"

http := ComObjCreate("WinHttp.WinHttpRequest.5.1")
http.Open("GET", "https://api.github.com/repos/c64-ryan/theyarebillions-hotkeys/releases", false)
http.Send(data)
if (http.Status = 200) {
	result := JSON.Load(http.ResponseText)
	if (result[1].tag_name <> version) {
		MsgBox, 4, New Version Available, % "New version released: " result[1].tag_name "`nYour version: " version "`nWould you like to visit the download page?"
	IfMsgBox Yes
		Run % result[1].html_url
	}
}