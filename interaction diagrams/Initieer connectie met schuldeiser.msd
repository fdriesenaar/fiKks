#//# --------------------------------------------------------------------------------------
#//# Created using websequencediagrams.com
#//# --------------------------------------------------------------------------------------
# fiKks integratie overzicht voor schuldeisers

title "Verbinding nodes Betrokkene en Schuldeiser"
 
participant "fiKks App"       as AppRP
participant "User node" as NodeUser
participant "Qiy Trust Framework" as QTF
participant "Schuldeiser" as DP
participant "Schuldeiser node" as NodeDP


	AppRP 	 ->  NodeUser : get token
	NodeUser ->  QTF	  : get token
	QTF      --> NodeUser : token
	NodeUser --> AppRP 	  : token
	AppRP 	 ->  DP 	  : redirect (token + returnURL)
	DP 		 ->  NodeDP   : connect
	NodeDP 	 ->  QTF 	  : connect
	QTF 	 ->  NodeUser : notify connection
	NodeUser ->  AppRP    : notify connection

