#! /bin/bash

CMD="notmuch config set query."
echo "Create notmuch queries for neomutt virtual mailbox"

${CMD}lse-mls "tag:\"EPITA/LSE/ML current\" or tag:\"EPITA/LSE/ML permanents\""

${CMD}acu-yaka "tag:EPITA/ACU-YAKA or tag:EPITA/ACU-YAKA/Gitlab"

${CMD}lec-prep	"tag:\"EPITA/Lectures preparation\" or \
		tag:\"EPITA/Lectures preparation/SAND\""

${CMD}family	"tag:tag:Family/Loche or tag:Family/Mignot or tag:Family/Penel"

${CMD}friends	"tag:Friends or tag:Friends/Dogs or Friends/EPITA or 	\
		Friends/JDR-GN or tag:\"Friends/Prepa class\" or	\
		tag:Friends/sjbranleurs"

${CMD}lkml	"tag:KERNEL or tag:\"KERNEL/Kernel newbies\"		\
		tag:KERNEL\LKML or tag:\"KERNEL/Linux embedded\""

${CMD}bank	"tag:\"Personal management/Bank\" or 			\
		tag:\"Personal management/Bank/SG\""

${CMD}flat	"tag:\"Personal management/Flat\" or 			\
		tag:\"Personal management/Flat/EDF-GDF\" or	\
		tag:\"Personal management/Flat/Insurances\" or	\
		tag:\"Personal management/Flat/Rent\""

${CMD}internet-phone	"tag:\"Personal management/Cellphone\" or	\
			tag:\"Personal management/Cellphone/Free\" or	\
			tag:\"Personal management/Flat/Internet\" or	\
			tag:\"Personal management/Flat/Internet/SFR\""


${CMD}shopping	"tag:E-shops or tag:E-shops/Alixexpress or 		\
		tag:E-shops/Alloresto or tag:E-shops/Amazon or 		\
		tag:E-shops/CDiscount or tag:E-shops/Ebay or 		\
		tag:E-shops/Paypal or tag:E-shops/PriceMinister or 	\
		tag:E-shops/RueDuCommerce or tag:E-shops/Uber or 	\
		tag:\"E-shops/Video games\""

${CMD}homelab	"tag:Homelab or tag:Homelab/Services"

${CMD}perso-others	"tag:\"Personal management/Employee savings\" or
			tag:\"Personal management/Tignes\""

${CMD}studies-epita-adm	"tag:Studies/EPITA/ADM or 			\
			tag:Studies/EPITA/Business or	\
			tag:Studies/EPITA/Com' or	\
			tag:Studies/EPITA/Intranet or	\
			tag:Studies/EPITA/MSDNA"

${CMD}studies-epita-assos	"tag:Studies/EPITA/Assos or		\
				tag:Studies/EPITA/Assos/EPTV or	\
				tag:Studies/EPITA/Assos/Ephemere or	\
				tag:Studies/EPITA/Assos/Others"

${CMD}studies-epita-gistre	"tag:Studies/EPITA/GISTRE or 		\
				tag:Studies/EPITA/GISTRE/ML or
				tag:Studies/EPITA/GISTRE/Kaneton or 	\
				tag:Studies/EPITA/GISTRE/PFE"

${CMD}studies-epita-ing1	"tag:Studies/EPITA/ING1 or 		\
				tag:Studies/EPITA/ING1/ACU-YAKA"

${CMD}project	"tag:Studies/EPITA/ING1/Projects or 			\
		tag:Studies/EPITA/ING1/Projects/42SH or			\
		tag:Studies/EPITA/ING1/Projects/AtelierC++ or	\
		tag:Studies/EPITA/ING1/Projects/Chess or 		\
		tag:Studies/EPITA/ING1/Projects/Corewar or		\
	       	tag:Studies/EPITA/ING1/Projects/Epitar or 		\
		tag:Studies/EPITA/ING1/Projects/JDV or			\
		tag:Studies/EPITA/ING1/Projects/K or 			\
		tag:Studies/EPITA/ING1/Projects/Piscine or		\
		tag:Studies/EPITA/ING1/Projects/RushJeuVideo\" or \
		tag:Studies/EPITA/ING1/Projects/Tiger or		\
		tag:Studies/EPITA/ING1/Projects/YakHospital or		\
		tag:Studies/EPITA/ING1/Projects/Zik-end or		\
		tag:Studies/EPITA/ING1/Projects/libstream or		\
		tag:Studies/EPITA/ING1/Projects/malloc or		\
		tag:Studies/EPITA/ING1/Projects/minimake or		\
		tag:Studies/EPITA/ING1/Projects/myCipher or		\
		tag:Studies/EPITA/ING1/Projects/myHTTPd  or		\
		tag:Studies/EPITA/ING1/Projects/myReadISO"

${CMD}work	"tag:Work or tag:Work/Genymobile or 			\
		tag:Work/Genymobile/PaySlips or tag:\"Work/Ionis Tutoring\" or \
		tag:\"Work/Ionis Tutoring/Students\" or			\
		tag:Studies/EPITA/Business/Interships/Offers or 	\
		tag:Work/Playdigious or tag:Work/Thales"

${CMD}perso-old	"tag:\"Personal management/Car\" or			\
		tag:\"Personal management/Flat/Internet/Free\" or	\
		tag:\"Personal management/Cellphone/SFR\" or	\
		tag:\"Personal management/Flat/CAF\""

${CMD}epita-old	"tag:\"EPITA/Finished missions\" or 			\
		tag:\"EPITA/Finished missions/Apprentices-2017\" or	\
		tag:\"EPITA/Finished missions/Apprentices-2017/Engineers\" or \
		tag:\"EPITA/Finished missions/Apprentices-2017/Experts\" or \
		tag:\"EPITA/Finished missions/Apprentices-2018\" or	\
		tag:\"EPITA/Finished missions/Apprentices-2018/Engineers\" or \
		tag:\"EPITA/Finished missions/Apprentices-2018/Experts\" or   \
		tag:\"EPITA/Finished missions/Apprentices-2019\" or	\
		tag:\"EPITA/Finished missions/Apprentices-2019/Engineers\" or \
		tag:\"EPITA/Finished missions/Apprentices-2019/Experts\" or   \
		tag:\"EPITA/Finished missions/Cumulatifs\" or		\
		tag:\"EPITA/Finished missions/Evaluation book\" or	\
		tag:\"EPITA/Finished missions/ING1 exams proofreading\" or    \
		tag:\"EPITA/Finished missions/SAND-2015\" or		\
		tag:\"EPITA/Finished missions/SAND-2016\" or		\
		tag:\"EPITA/Finished missions/SAND-2017\""

${CMD}web-accounts	"tag:Web or tag:Web/Facebook or tag:Web/Twitter or \
			tag:Web/Others "


