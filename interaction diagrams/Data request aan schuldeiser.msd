#//# --------------------------------------------------------------------------------------
#//# Created using websequencediagrams.com
#//# --------------------------------------------------------------------------------------
# fiKks integratie overzicht voor schuldeisers

title "Data Reuse"
 
participant "fiKks back-end"     as BeRP
participant "Qiy Trust Network"  as QTN
participant "fiKks App"          as AppRP
participant "Schuldeiser"        as DP

	BeRP ->  QTN    : vragen consent
	QTN  ->  AppRP  : vragen consent
	QTN	 ->  DP	    : opvragen operatie

	QTN  ->  QTN    : registreren operatie
	QTN  --> BeRP   : data referentie

 loop gegevens opvragen 

	BeRP	-> QTN	: request met data referentie
	QTN		-> BeRP	: response met data

 end

