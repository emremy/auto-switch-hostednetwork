@echo off


netsh wlan show hostednetwork|find "Status"|find "Started">nul && goto stop || goto start


:start
    
	netsh wlan start hostednetwork

	goto end


:stop
    
	netsh wlan stop hostednetwork

	goto end


:end 
    
	timeout 2
    exit