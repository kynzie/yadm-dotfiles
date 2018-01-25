#! /bin/bash

CMD="notmuch config set query."
echo "Create notmuch queries for neomutt virtual mailbox"

${CMD}lse-mls "tag:EPITA/LSE/ML-current or tag:EPITA/LSE/ML-permanents"

${CMD}epita-adm "tag:EPITA or tag:EPITA/EPITA/Com or tag:EPITA/ADM"

${CMD}acu-yaka "tag:EPITA/ACU-YAKA or tag:EPITA/ACU-YAKA/Gitlab"

${CMD}lec-prep	"tag:EPITA/LecturesPreparation or \
		tag:EPITA/LecturesPreparation/SAND"

${CMD}family	"tag:tag:Family/Loche or tag:Family/Mignot or tag:Family/Penel"

${CMD}friends	"tag:Friends or tag:Friends/Dogs or tag:Friends/EPITA or 	\
		tag:Friends/JDR-GN or tag:Friends/PrepaClass or	\
		tag:Friends/sjbranleurs"

${CMD}lkml	"tag:KERNEL or tag:KERNEL/KernelNewbies		\
		tag:KERNEL/LKML or tag:KERNEL/LinuxEmbedded"

${CMD}bank	"tag:PersonalManagement/Bank or 			\
		tag:PersonalManagement/Bank/SG"

${CMD}flat	"tag:PersonalManagement/Flat or 			\
		tag:PersonalManagement/Flat/EDF-GDF or	\
		tag:PersonalManagement/Flat/Insurances or	\
		tag:PersonalManagement/Flat/Rent"

${CMD}internet-phone	"tag:PersonalManagement/Cellphone or	\
			tag:PersonalManagement/Cellphone/Free or	\
			tag:PersonalManagement/Flat/Internet or	\
			tag:PersonalManagement/Flat/Internet/SFR"


${CMD}shopping	"tag:E-shops or tag:E-shops/Alixexpress or 		\
		tag:E-shops/Alloresto or tag:E-shops/Amazon or 		\
		tag:E-shops/CDiscount or tag:E-shops/Ebay or 		\
		tag:E-shops/Paypal or tag:E-shops/PriceMinister or 	\
		tag:E-shops/RueDuCommerce or tag:E-shops/Uber or 	\
		tag:E-shops/VideoGames"

${CMD}homelab	"tag:Homelab or tag:Homelab/Services"

${CMD}perso-others	"tag:PersonalManagement/EmployeeSavings or
			tag:PersonalManagement/Tignes"

${CMD}studies-epita-adm	"tag:Studies/EPITA/ADM or 			\
			tag:Studies/EPITA/Business or	\
			tag:Studies/EPITA/Com or	\
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
		tag:Studies/EPITA/ING1/Projects/RushJeuVideo or \
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
		tag:Work/Genymobile/PaySlips or tag:Work/IonisTutoring or \
		tag:Work/IonisTutoring/Students or			\
		tag:Studies/EPITA/Business/Interships/Offers or 	\
		tag:Work/Playdigious or tag:Work/Thales"

${CMD}perso-old	"tag:PersonalManagement/Car or			\
		tag:PersonalManagement/Flat/Internet/Free or	\
		tag:PersonalManagement/Cellphone/SFR or	\
		tag:PersonalManagement/Flat/CAF"

${CMD}epita-old	"tag:EPITA/FinishedMissions or 			\
		tag:EPITA/FinishedMissions/Apprentices-2017 or	\
		tag:EPITA/FinishedMissions/Apprentices-2017/Engineers or \
		tag:EPITA/FinishedMissions/Apprentices-2017/Experts or \
		tag:EPITA/FinishedMissions/Apprentices-2018 or	\
		tag:EPITA/FinishedMissions/Apprentices-2018/Engineers or \
		tag:EPITA/FinishedMissions/Apprentices-2018/Experts or   \
		tag:EPITA/FinishedMissions/Apprentices-2019 or	\
		tag:EPITA/FinishedMissions/Apprentices-2019/Engineers or \
		tag:EPITA/FinishedMissions/Apprentices-2019/Experts or   \
		tag:EPITA/FinishedMissions/Cumulatifs or		\
		tag:EPITA/FinishedMissions/EvaluationBook or	\
		tag:EPITA/FinishedMissions/ING1ExamsProofreading or    \
		tag:EPITA/FinishedMissions/SAND-2015 or		\
		tag:EPITA/FinishedMissions/SAND-2016 or		\
		tag:EPITA/FinishedMissions/SAND-2017"

${CMD}web-accounts	"tag:Web or tag:Web/Facebook or tag:Web/Twitter or \
			tag:Web/Others "


