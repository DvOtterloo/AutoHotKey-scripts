^+!Up::incrementBrightness(15)
^+!Down::incrementBrightness(-15)

incrementBrightness(briInc)
{
    for light in [1, 2, 3, 4, 5]
    {
		http := ComObject("WinHttp.WinHttpRequest.5.1")
		http.Open("PUT", "http://<BRIDGE_URL>/api/<USERNAME>/lights/" . light . "/state", 0)
		http.SetRequestHeader("Content-Type", "application/json")
		bodyText := '{"bri_inc":' . briInc . ', "transitiontime":1}'
		http.Send(bodyText)
    }
    return
}
