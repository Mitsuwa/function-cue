// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/crossplane-contrib/provider-aws/apis/cloudwatchlogs/v1alpha1

package v1alpha1

#DataProtectionStatus: string // #enumDataProtectionStatus

#enumDataProtectionStatus:
	#DataProtectionStatus_ACTIVATED |
	#DataProtectionStatus_DELETED |
	#DataProtectionStatus_ARCHIVED |
	#DataProtectionStatus_DISABLED

#DataProtectionStatus_ACTIVATED: #DataProtectionStatus & "ACTIVATED"
#DataProtectionStatus_DELETED:   #DataProtectionStatus & "DELETED"
#DataProtectionStatus_ARCHIVED:  #DataProtectionStatus & "ARCHIVED"
#DataProtectionStatus_DISABLED:  #DataProtectionStatus & "DISABLED"

#Distribution: string // #enumDistribution

#enumDistribution:
	#Distribution_Random |
	#Distribution_ByLogStream

#Distribution_Random:      #Distribution & "Random"
#Distribution_ByLogStream: #Distribution & "ByLogStream"

#ExportTaskStatusCode: string // #enumExportTaskStatusCode

#enumExportTaskStatusCode:
	#ExportTaskStatusCode_CANCELLED |
	#ExportTaskStatusCode_COMPLETED |
	#ExportTaskStatusCode_FAILED |
	#ExportTaskStatusCode_PENDING |
	#ExportTaskStatusCode_PENDING_CANCEL |
	#ExportTaskStatusCode_RUNNING

#ExportTaskStatusCode_CANCELLED:      #ExportTaskStatusCode & "CANCELLED"
#ExportTaskStatusCode_COMPLETED:      #ExportTaskStatusCode & "COMPLETED"
#ExportTaskStatusCode_FAILED:         #ExportTaskStatusCode & "FAILED"
#ExportTaskStatusCode_PENDING:        #ExportTaskStatusCode & "PENDING"
#ExportTaskStatusCode_PENDING_CANCEL: #ExportTaskStatusCode & "PENDING_CANCEL"
#ExportTaskStatusCode_RUNNING:        #ExportTaskStatusCode & "RUNNING"

#InheritedProperty: string // #enumInheritedProperty

#enumInheritedProperty:
	#InheritedProperty_ACCOUNT_DATA_PROTECTION

#InheritedProperty_ACCOUNT_DATA_PROTECTION: #InheritedProperty & "ACCOUNT_DATA_PROTECTION"

#OrderBy: string // #enumOrderBy

#enumOrderBy:
	#OrderBy_LogStreamName |
	#OrderBy_LastEventTime

#OrderBy_LogStreamName: #OrderBy & "LogStreamName"
#OrderBy_LastEventTime: #OrderBy & "LastEventTime"

#PolicyType: string // #enumPolicyType

#enumPolicyType:
	#PolicyType_DATA_PROTECTION_POLICY

#PolicyType_DATA_PROTECTION_POLICY: #PolicyType & "DATA_PROTECTION_POLICY"

#QueryStatus: string // #enumQueryStatus

#enumQueryStatus:
	#QueryStatus_Scheduled |
	#QueryStatus_Running |
	#QueryStatus_Complete |
	#QueryStatus_Failed |
	#QueryStatus_Cancelled |
	#QueryStatus_Timeout |
	#QueryStatus_Unknown

#QueryStatus_Scheduled: #QueryStatus & "Scheduled"
#QueryStatus_Running:   #QueryStatus & "Running"
#QueryStatus_Complete:  #QueryStatus & "Complete"
#QueryStatus_Failed:    #QueryStatus & "Failed"
#QueryStatus_Cancelled: #QueryStatus & "Cancelled"
#QueryStatus_Timeout:   #QueryStatus & "Timeout"
#QueryStatus_Unknown:   #QueryStatus & "Unknown"

#Scope: string // #enumScope

#enumScope:
	#Scope_ALL

#Scope_ALL: #Scope & "ALL"

#StandardUnit: string // #enumStandardUnit

#enumStandardUnit:
	#StandardUnit_Seconds |
	#StandardUnit_Microseconds |
	#StandardUnit_Milliseconds |
	#StandardUnit_Bytes |
	#StandardUnit_Kilobytes |
	#StandardUnit_Megabytes |
	#StandardUnit_Gigabytes |
	#StandardUnit_Terabytes |
	#StandardUnit_Bits |
	#StandardUnit_Kilobits |
	#StandardUnit_Megabits |
	#StandardUnit_Gigabits |
	#StandardUnit_Terabits |
	#StandardUnit_Percent |
	#StandardUnit_Count |
	#StandardUnit_Bytes_Second |
	#StandardUnit_Kilobytes_Second |
	#StandardUnit_Megabytes_Second |
	#StandardUnit_Gigabytes_Second |
	#StandardUnit_Terabytes_Second |
	#StandardUnit_Bits_Second |
	#StandardUnit_Kilobits_Second |
	#StandardUnit_Megabits_Second |
	#StandardUnit_Gigabits_Second |
	#StandardUnit_Terabits_Second |
	#StandardUnit_Count_Second |
	#StandardUnit_None

#StandardUnit_Seconds:          #StandardUnit & "Seconds"
#StandardUnit_Microseconds:     #StandardUnit & "Microseconds"
#StandardUnit_Milliseconds:     #StandardUnit & "Milliseconds"
#StandardUnit_Bytes:            #StandardUnit & "Bytes"
#StandardUnit_Kilobytes:        #StandardUnit & "Kilobytes"
#StandardUnit_Megabytes:        #StandardUnit & "Megabytes"
#StandardUnit_Gigabytes:        #StandardUnit & "Gigabytes"
#StandardUnit_Terabytes:        #StandardUnit & "Terabytes"
#StandardUnit_Bits:             #StandardUnit & "Bits"
#StandardUnit_Kilobits:         #StandardUnit & "Kilobits"
#StandardUnit_Megabits:         #StandardUnit & "Megabits"
#StandardUnit_Gigabits:         #StandardUnit & "Gigabits"
#StandardUnit_Terabits:         #StandardUnit & "Terabits"
#StandardUnit_Percent:          #StandardUnit & "Percent"
#StandardUnit_Count:            #StandardUnit & "Count"
#StandardUnit_Bytes_Second:     #StandardUnit & "Bytes/Second"
#StandardUnit_Kilobytes_Second: #StandardUnit & "Kilobytes/Second"
#StandardUnit_Megabytes_Second: #StandardUnit & "Megabytes/Second"
#StandardUnit_Gigabytes_Second: #StandardUnit & "Gigabytes/Second"
#StandardUnit_Terabytes_Second: #StandardUnit & "Terabytes/Second"
#StandardUnit_Bits_Second:      #StandardUnit & "Bits/Second"
#StandardUnit_Kilobits_Second:  #StandardUnit & "Kilobits/Second"
#StandardUnit_Megabits_Second:  #StandardUnit & "Megabits/Second"
#StandardUnit_Gigabits_Second:  #StandardUnit & "Gigabits/Second"
#StandardUnit_Terabits_Second:  #StandardUnit & "Terabits/Second"
#StandardUnit_Count_Second:     #StandardUnit & "Count/Second"
#StandardUnit_None:             #StandardUnit & "None"
