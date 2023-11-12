// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/crossplane-contrib/provider-aws/apis/mwaa/v1alpha1

package v1alpha1

#EnvironmentStatus_SDK: string // #enumEnvironmentStatus_SDK

#enumEnvironmentStatus_SDK:
	#EnvironmentStatus_SDK_CREATING |
	#EnvironmentStatus_SDK_CREATE_FAILED |
	#EnvironmentStatus_SDK_AVAILABLE |
	#EnvironmentStatus_SDK_UPDATING |
	#EnvironmentStatus_SDK_DELETING |
	#EnvironmentStatus_SDK_DELETED |
	#EnvironmentStatus_SDK_UNAVAILABLE |
	#EnvironmentStatus_SDK_UPDATE_FAILED |
	#EnvironmentStatus_SDK_ROLLING_BACK |
	#EnvironmentStatus_SDK_CREATING_SNAPSHOT

#EnvironmentStatus_SDK_CREATING:          #EnvironmentStatus_SDK & "CREATING"
#EnvironmentStatus_SDK_CREATE_FAILED:     #EnvironmentStatus_SDK & "CREATE_FAILED"
#EnvironmentStatus_SDK_AVAILABLE:         #EnvironmentStatus_SDK & "AVAILABLE"
#EnvironmentStatus_SDK_UPDATING:          #EnvironmentStatus_SDK & "UPDATING"
#EnvironmentStatus_SDK_DELETING:          #EnvironmentStatus_SDK & "DELETING"
#EnvironmentStatus_SDK_DELETED:           #EnvironmentStatus_SDK & "DELETED"
#EnvironmentStatus_SDK_UNAVAILABLE:       #EnvironmentStatus_SDK & "UNAVAILABLE"
#EnvironmentStatus_SDK_UPDATE_FAILED:     #EnvironmentStatus_SDK & "UPDATE_FAILED"
#EnvironmentStatus_SDK_ROLLING_BACK:      #EnvironmentStatus_SDK & "ROLLING_BACK"
#EnvironmentStatus_SDK_CREATING_SNAPSHOT: #EnvironmentStatus_SDK & "CREATING_SNAPSHOT"

#LoggingLevel: string // #enumLoggingLevel

#enumLoggingLevel:
	#LoggingLevel_CRITICAL |
	#LoggingLevel_ERROR |
	#LoggingLevel_WARNING |
	#LoggingLevel_INFO |
	#LoggingLevel_DEBUG

#LoggingLevel_CRITICAL: #LoggingLevel & "CRITICAL"
#LoggingLevel_ERROR:    #LoggingLevel & "ERROR"
#LoggingLevel_WARNING:  #LoggingLevel & "WARNING"
#LoggingLevel_INFO:     #LoggingLevel & "INFO"
#LoggingLevel_DEBUG:    #LoggingLevel & "DEBUG"

#Unit: string // #enumUnit

#enumUnit:
	#Unit_Seconds |
	#Unit_Microseconds |
	#Unit_Milliseconds |
	#Unit_Bytes |
	#Unit_Kilobytes |
	#Unit_Megabytes |
	#Unit_Gigabytes |
	#Unit_Terabytes |
	#Unit_Bits |
	#Unit_Kilobits |
	#Unit_Megabits |
	#Unit_Gigabits |
	#Unit_Terabits |
	#Unit_Percent |
	#Unit_Count |
	#Unit_Bytes_Second |
	#Unit_Kilobytes_Second |
	#Unit_Megabytes_Second |
	#Unit_Gigabytes_Second |
	#Unit_Terabytes_Second |
	#Unit_Bits_Second |
	#Unit_Kilobits_Second |
	#Unit_Megabits_Second |
	#Unit_Gigabits_Second |
	#Unit_Terabits_Second |
	#Unit_Count_Second |
	#Unit_None

#Unit_Seconds:          #Unit & "Seconds"
#Unit_Microseconds:     #Unit & "Microseconds"
#Unit_Milliseconds:     #Unit & "Milliseconds"
#Unit_Bytes:            #Unit & "Bytes"
#Unit_Kilobytes:        #Unit & "Kilobytes"
#Unit_Megabytes:        #Unit & "Megabytes"
#Unit_Gigabytes:        #Unit & "Gigabytes"
#Unit_Terabytes:        #Unit & "Terabytes"
#Unit_Bits:             #Unit & "Bits"
#Unit_Kilobits:         #Unit & "Kilobits"
#Unit_Megabits:         #Unit & "Megabits"
#Unit_Gigabits:         #Unit & "Gigabits"
#Unit_Terabits:         #Unit & "Terabits"
#Unit_Percent:          #Unit & "Percent"
#Unit_Count:            #Unit & "Count"
#Unit_Bytes_Second:     #Unit & "Bytes/Second"
#Unit_Kilobytes_Second: #Unit & "Kilobytes/Second"
#Unit_Megabytes_Second: #Unit & "Megabytes/Second"
#Unit_Gigabytes_Second: #Unit & "Gigabytes/Second"
#Unit_Terabytes_Second: #Unit & "Terabytes/Second"
#Unit_Bits_Second:      #Unit & "Bits/Second"
#Unit_Kilobits_Second:  #Unit & "Kilobits/Second"
#Unit_Megabits_Second:  #Unit & "Megabits/Second"
#Unit_Gigabits_Second:  #Unit & "Gigabits/Second"
#Unit_Terabits_Second:  #Unit & "Terabits/Second"
#Unit_Count_Second:     #Unit & "Count/Second"
#Unit_None:             #Unit & "None"

#UpdateStatus: string // #enumUpdateStatus

#enumUpdateStatus:
	#UpdateStatus_SUCCESS |
	#UpdateStatus_PENDING |
	#UpdateStatus_FAILED

#UpdateStatus_SUCCESS: #UpdateStatus & "SUCCESS"
#UpdateStatus_PENDING: #UpdateStatus & "PENDING"
#UpdateStatus_FAILED:  #UpdateStatus & "FAILED"

#WebserverAccessMode: string // #enumWebserverAccessMode

#enumWebserverAccessMode:
	#WebserverAccessMode_PRIVATE_ONLY |
	#WebserverAccessMode_PUBLIC_ONLY

#WebserverAccessMode_PRIVATE_ONLY: #WebserverAccessMode & "PRIVATE_ONLY"
#WebserverAccessMode_PUBLIC_ONLY:  #WebserverAccessMode & "PUBLIC_ONLY"
