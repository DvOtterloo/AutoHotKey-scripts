http := ComObjCreate("WinHTTP.WinHttpRequest.5.1")
lights := [1,2,3,4,5]
increment := 20
    
^!Up::
    for _, light in lights
        updateBrightness(light, increment, http)
    return

^!Down::
    for _, light in lights
        updateBrightness(light, increment * -1, http)
    return
    
updateBrightness(light, bri_inc, ByRef http){
    http.Open("PUT", "http://<BRIDGE_URL>/api/<USERNAME>/lights/" . light . "/state", 0)
    bodytext = {"bri_inc" : %bri_inc%, "transitiontime" : 1}
    http.Send(bodytext)
}