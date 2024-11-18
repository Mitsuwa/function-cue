// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/crossplane-contrib/provider-aws/apis/eks/v1alpha1

package v1alpha1

#AMITypes: string // #enumAMITypes

#enumAMITypes:
	#AMITypes_AL2_x86_64 |
	#AMITypes_AL2_x86_64_GPU |
	#AMITypes_AL2_ARM_64 |
	#AMITypes_CUSTOM |
	#AMITypes_BOTTLEROCKET_ARM_64 |
	#AMITypes_BOTTLEROCKET_x86_64 |
	#AMITypes_BOTTLEROCKET_ARM_64_NVIDIA |
	#AMITypes_BOTTLEROCKET_x86_64_NVIDIA |
	#AMITypes_WINDOWS_CORE_2019_x86_64 |
	#AMITypes_WINDOWS_FULL_2019_x86_64 |
	#AMITypes_WINDOWS_CORE_2022_x86_64 |
	#AMITypes_WINDOWS_FULL_2022_x86_64

#AMITypes_AL2_x86_64:                 #AMITypes & "AL2_x86_64"
#AMITypes_AL2_x86_64_GPU:             #AMITypes & "AL2_x86_64_GPU"
#AMITypes_AL2_ARM_64:                 #AMITypes & "AL2_ARM_64"
#AMITypes_CUSTOM:                     #AMITypes & "CUSTOM"
#AMITypes_BOTTLEROCKET_ARM_64:        #AMITypes & "BOTTLEROCKET_ARM_64"
#AMITypes_BOTTLEROCKET_x86_64:        #AMITypes & "BOTTLEROCKET_x86_64"
#AMITypes_BOTTLEROCKET_ARM_64_NVIDIA: #AMITypes & "BOTTLEROCKET_ARM_64_NVIDIA"
#AMITypes_BOTTLEROCKET_x86_64_NVIDIA: #AMITypes & "BOTTLEROCKET_x86_64_NVIDIA"
#AMITypes_WINDOWS_CORE_2019_x86_64:   #AMITypes & "WINDOWS_CORE_2019_x86_64"
#AMITypes_WINDOWS_FULL_2019_x86_64:   #AMITypes & "WINDOWS_FULL_2019_x86_64"
#AMITypes_WINDOWS_CORE_2022_x86_64:   #AMITypes & "WINDOWS_CORE_2022_x86_64"
#AMITypes_WINDOWS_FULL_2022_x86_64:   #AMITypes & "WINDOWS_FULL_2022_x86_64"

#AddonIssueCode: string // #enumAddonIssueCode

#enumAddonIssueCode:
	#AddonIssueCode_AccessDenied |
	#AddonIssueCode_InternalFailure |
	#AddonIssueCode_ClusterUnreachable |
	#AddonIssueCode_InsufficientNumberOfReplicas |
	#AddonIssueCode_ConfigurationConflict |
	#AddonIssueCode_AdmissionRequestDenied |
	#AddonIssueCode_UnsupportedAddonModification |
	#AddonIssueCode_K8sResourceNotFound

#AddonIssueCode_AccessDenied:                 #AddonIssueCode & "AccessDenied"
#AddonIssueCode_InternalFailure:              #AddonIssueCode & "InternalFailure"
#AddonIssueCode_ClusterUnreachable:           #AddonIssueCode & "ClusterUnreachable"
#AddonIssueCode_InsufficientNumberOfReplicas: #AddonIssueCode & "InsufficientNumberOfReplicas"
#AddonIssueCode_ConfigurationConflict:        #AddonIssueCode & "ConfigurationConflict"
#AddonIssueCode_AdmissionRequestDenied:       #AddonIssueCode & "AdmissionRequestDenied"
#AddonIssueCode_UnsupportedAddonModification: #AddonIssueCode & "UnsupportedAddonModification"
#AddonIssueCode_K8sResourceNotFound:          #AddonIssueCode & "K8sResourceNotFound"

#AddonStatus_SDK: string // #enumAddonStatus_SDK

#enumAddonStatus_SDK:
	#AddonStatus_SDK_CREATING |
	#AddonStatus_SDK_ACTIVE |
	#AddonStatus_SDK_CREATE_FAILED |
	#AddonStatus_SDK_UPDATING |
	#AddonStatus_SDK_DELETING |
	#AddonStatus_SDK_DELETE_FAILED |
	#AddonStatus_SDK_DEGRADED |
	#AddonStatus_SDK_UPDATE_FAILED

#AddonStatus_SDK_CREATING:      #AddonStatus_SDK & "CREATING"
#AddonStatus_SDK_ACTIVE:        #AddonStatus_SDK & "ACTIVE"
#AddonStatus_SDK_CREATE_FAILED: #AddonStatus_SDK & "CREATE_FAILED"
#AddonStatus_SDK_UPDATING:      #AddonStatus_SDK & "UPDATING"
#AddonStatus_SDK_DELETING:      #AddonStatus_SDK & "DELETING"
#AddonStatus_SDK_DELETE_FAILED: #AddonStatus_SDK & "DELETE_FAILED"
#AddonStatus_SDK_DEGRADED:      #AddonStatus_SDK & "DEGRADED"
#AddonStatus_SDK_UPDATE_FAILED: #AddonStatus_SDK & "UPDATE_FAILED"

#CapacityTypes: string // #enumCapacityTypes

#enumCapacityTypes:
	#CapacityTypes_ON_DEMAND |
	#CapacityTypes_SPOT

#CapacityTypes_ON_DEMAND: #CapacityTypes & "ON_DEMAND"
#CapacityTypes_SPOT:      #CapacityTypes & "SPOT"

#ClusterIssueCode: string // #enumClusterIssueCode

#enumClusterIssueCode:
	#ClusterIssueCode_AccessDenied |
	#ClusterIssueCode_ClusterUnreachable |
	#ClusterIssueCode_ConfigurationConflict |
	#ClusterIssueCode_InternalFailure |
	#ClusterIssueCode_ResourceLimitExceeded |
	#ClusterIssueCode_ResourceNotFound

#ClusterIssueCode_AccessDenied:          #ClusterIssueCode & "AccessDenied"
#ClusterIssueCode_ClusterUnreachable:    #ClusterIssueCode & "ClusterUnreachable"
#ClusterIssueCode_ConfigurationConflict: #ClusterIssueCode & "ConfigurationConflict"
#ClusterIssueCode_InternalFailure:       #ClusterIssueCode & "InternalFailure"
#ClusterIssueCode_ResourceLimitExceeded: #ClusterIssueCode & "ResourceLimitExceeded"
#ClusterIssueCode_ResourceNotFound:      #ClusterIssueCode & "ResourceNotFound"

#ClusterStatus: string // #enumClusterStatus

#enumClusterStatus:
	#ClusterStatus_CREATING |
	#ClusterStatus_ACTIVE |
	#ClusterStatus_DELETING |
	#ClusterStatus_FAILED |
	#ClusterStatus_UPDATING |
	#ClusterStatus_PENDING

#ClusterStatus_CREATING: #ClusterStatus & "CREATING"
#ClusterStatus_ACTIVE:   #ClusterStatus & "ACTIVE"
#ClusterStatus_DELETING: #ClusterStatus & "DELETING"
#ClusterStatus_FAILED:   #ClusterStatus & "FAILED"
#ClusterStatus_UPDATING: #ClusterStatus & "UPDATING"
#ClusterStatus_PENDING:  #ClusterStatus & "PENDING"

#ConfigStatus: string // #enumConfigStatus

#enumConfigStatus:
	#ConfigStatus_CREATING |
	#ConfigStatus_DELETING |
	#ConfigStatus_ACTIVE

#ConfigStatus_CREATING: #ConfigStatus & "CREATING"
#ConfigStatus_DELETING: #ConfigStatus & "DELETING"
#ConfigStatus_ACTIVE:   #ConfigStatus & "ACTIVE"

#ConnectorConfigProvider: string // #enumConnectorConfigProvider

#enumConnectorConfigProvider:
	#ConnectorConfigProvider_EKS_ANYWHERE |
	#ConnectorConfigProvider_ANTHOS |
	#ConnectorConfigProvider_GKE |
	#ConnectorConfigProvider_AKS |
	#ConnectorConfigProvider_OPENSHIFT |
	#ConnectorConfigProvider_TANZU |
	#ConnectorConfigProvider_RANCHER |
	#ConnectorConfigProvider_EC2 |
	#ConnectorConfigProvider_OTHER

#ConnectorConfigProvider_EKS_ANYWHERE: #ConnectorConfigProvider & "EKS_ANYWHERE"
#ConnectorConfigProvider_ANTHOS:       #ConnectorConfigProvider & "ANTHOS"
#ConnectorConfigProvider_GKE:          #ConnectorConfigProvider & "GKE"
#ConnectorConfigProvider_AKS:          #ConnectorConfigProvider & "AKS"
#ConnectorConfigProvider_OPENSHIFT:    #ConnectorConfigProvider & "OPENSHIFT"
#ConnectorConfigProvider_TANZU:        #ConnectorConfigProvider & "TANZU"
#ConnectorConfigProvider_RANCHER:      #ConnectorConfigProvider & "RANCHER"
#ConnectorConfigProvider_EC2:          #ConnectorConfigProvider & "EC2"
#ConnectorConfigProvider_OTHER:        #ConnectorConfigProvider & "OTHER"

#ErrorCode: string // #enumErrorCode

#enumErrorCode:
	#ErrorCode_SubnetNotFound |
	#ErrorCode_SecurityGroupNotFound |
	#ErrorCode_EniLimitReached |
	#ErrorCode_IpNotAvailable |
	#ErrorCode_AccessDenied |
	#ErrorCode_OperationNotPermitted |
	#ErrorCode_VpcIdNotFound |
	#ErrorCode_Unknown |
	#ErrorCode_NodeCreationFailure |
	#ErrorCode_PodEvictionFailure |
	#ErrorCode_InsufficientFreeAddresses |
	#ErrorCode_ClusterUnreachable |
	#ErrorCode_InsufficientNumberOfReplicas |
	#ErrorCode_ConfigurationConflict |
	#ErrorCode_AdmissionRequestDenied |
	#ErrorCode_UnsupportedAddonModification |
	#ErrorCode_K8sResourceNotFound

#ErrorCode_SubnetNotFound:               #ErrorCode & "SubnetNotFound"
#ErrorCode_SecurityGroupNotFound:        #ErrorCode & "SecurityGroupNotFound"
#ErrorCode_EniLimitReached:              #ErrorCode & "EniLimitReached"
#ErrorCode_IpNotAvailable:               #ErrorCode & "IpNotAvailable"
#ErrorCode_AccessDenied:                 #ErrorCode & "AccessDenied"
#ErrorCode_OperationNotPermitted:        #ErrorCode & "OperationNotPermitted"
#ErrorCode_VpcIdNotFound:                #ErrorCode & "VpcIdNotFound"
#ErrorCode_Unknown:                      #ErrorCode & "Unknown"
#ErrorCode_NodeCreationFailure:          #ErrorCode & "NodeCreationFailure"
#ErrorCode_PodEvictionFailure:           #ErrorCode & "PodEvictionFailure"
#ErrorCode_InsufficientFreeAddresses:    #ErrorCode & "InsufficientFreeAddresses"
#ErrorCode_ClusterUnreachable:           #ErrorCode & "ClusterUnreachable"
#ErrorCode_InsufficientNumberOfReplicas: #ErrorCode & "InsufficientNumberOfReplicas"
#ErrorCode_ConfigurationConflict:        #ErrorCode & "ConfigurationConflict"
#ErrorCode_AdmissionRequestDenied:       #ErrorCode & "AdmissionRequestDenied"
#ErrorCode_UnsupportedAddonModification: #ErrorCode & "UnsupportedAddonModification"
#ErrorCode_K8sResourceNotFound:          #ErrorCode & "K8sResourceNotFound"

#FargateProfileStatus: string // #enumFargateProfileStatus

#enumFargateProfileStatus:
	#FargateProfileStatus_CREATING |
	#FargateProfileStatus_ACTIVE |
	#FargateProfileStatus_DELETING |
	#FargateProfileStatus_CREATE_FAILED |
	#FargateProfileStatus_DELETE_FAILED

#FargateProfileStatus_CREATING:      #FargateProfileStatus & "CREATING"
#FargateProfileStatus_ACTIVE:        #FargateProfileStatus & "ACTIVE"
#FargateProfileStatus_DELETING:      #FargateProfileStatus & "DELETING"
#FargateProfileStatus_CREATE_FAILED: #FargateProfileStatus & "CREATE_FAILED"
#FargateProfileStatus_DELETE_FAILED: #FargateProfileStatus & "DELETE_FAILED"

#IPFamily: string // #enumIPFamily

#enumIPFamily:
	#IPFamily_ipv4 |
	#IPFamily_ipv6

#IPFamily_ipv4: #IPFamily & "ipv4"
#IPFamily_ipv6: #IPFamily & "ipv6"

#LogType: string // #enumLogType

#enumLogType:
	#LogType_api |
	#LogType_audit |
	#LogType_authenticator |
	#LogType_controllerManager |
	#LogType_scheduler

#LogType_api:               #LogType & "api"
#LogType_audit:             #LogType & "audit"
#LogType_authenticator:     #LogType & "authenticator"
#LogType_controllerManager: #LogType & "controllerManager"
#LogType_scheduler:         #LogType & "scheduler"

#NodegroupIssueCode: string // #enumNodegroupIssueCode

#enumNodegroupIssueCode:
	#NodegroupIssueCode_AutoScalingGroupNotFound |
	#NodegroupIssueCode_AutoScalingGroupInvalidConfiguration |
	#NodegroupIssueCode_Ec2SecurityGroupNotFound |
	#NodegroupIssueCode_Ec2SecurityGroupDeletionFailure |
	#NodegroupIssueCode_Ec2LaunchTemplateNotFound |
	#NodegroupIssueCode_Ec2LaunchTemplateVersionMismatch |
	#NodegroupIssueCode_Ec2SubnetNotFound |
	#NodegroupIssueCode_Ec2SubnetInvalidConfiguration |
	#NodegroupIssueCode_IamInstanceProfileNotFound |
	#NodegroupIssueCode_Ec2SubnetMissingIpv6Assignment |
	#NodegroupIssueCode_IamLimitExceeded |
	#NodegroupIssueCode_IamNodeRoleNotFound |
	#NodegroupIssueCode_NodeCreationFailure |
	#NodegroupIssueCode_AsgInstanceLaunchFailures |
	#NodegroupIssueCode_InstanceLimitExceeded |
	#NodegroupIssueCode_InsufficientFreeAddresses |
	#NodegroupIssueCode_AccessDenied |
	#NodegroupIssueCode_InternalFailure |
	#NodegroupIssueCode_ClusterUnreachable |
	#NodegroupIssueCode_AmiIdNotFound |
	#NodegroupIssueCode_AutoScalingGroupOptInRequired |
	#NodegroupIssueCode_AutoScalingGroupRateLimitExceeded |
	#NodegroupIssueCode_Ec2LaunchTemplateDeletionFailure |
	#NodegroupIssueCode_Ec2LaunchTemplateInvalidConfiguration |
	#NodegroupIssueCode_Ec2LaunchTemplateMaxLimitExceeded |
	#NodegroupIssueCode_Ec2SubnetListTooLong |
	#NodegroupIssueCode_IamThrottling |
	#NodegroupIssueCode_NodeTerminationFailure |
	#NodegroupIssueCode_PodEvictionFailure |
	#NodegroupIssueCode_SourceEc2LaunchTemplateNotFound |
	#NodegroupIssueCode_LimitExceeded |
	#NodegroupIssueCode_Unknown |
	#NodegroupIssueCode_AutoScalingGroupInstanceRefreshActive

#NodegroupIssueCode_AutoScalingGroupNotFound:              #NodegroupIssueCode & "AutoScalingGroupNotFound"
#NodegroupIssueCode_AutoScalingGroupInvalidConfiguration:  #NodegroupIssueCode & "AutoScalingGroupInvalidConfiguration"
#NodegroupIssueCode_Ec2SecurityGroupNotFound:              #NodegroupIssueCode & "Ec2SecurityGroupNotFound"
#NodegroupIssueCode_Ec2SecurityGroupDeletionFailure:       #NodegroupIssueCode & "Ec2SecurityGroupDeletionFailure"
#NodegroupIssueCode_Ec2LaunchTemplateNotFound:             #NodegroupIssueCode & "Ec2LaunchTemplateNotFound"
#NodegroupIssueCode_Ec2LaunchTemplateVersionMismatch:      #NodegroupIssueCode & "Ec2LaunchTemplateVersionMismatch"
#NodegroupIssueCode_Ec2SubnetNotFound:                     #NodegroupIssueCode & "Ec2SubnetNotFound"
#NodegroupIssueCode_Ec2SubnetInvalidConfiguration:         #NodegroupIssueCode & "Ec2SubnetInvalidConfiguration"
#NodegroupIssueCode_IamInstanceProfileNotFound:            #NodegroupIssueCode & "IamInstanceProfileNotFound"
#NodegroupIssueCode_Ec2SubnetMissingIpv6Assignment:        #NodegroupIssueCode & "Ec2SubnetMissingIpv6Assignment"
#NodegroupIssueCode_IamLimitExceeded:                      #NodegroupIssueCode & "IamLimitExceeded"
#NodegroupIssueCode_IamNodeRoleNotFound:                   #NodegroupIssueCode & "IamNodeRoleNotFound"
#NodegroupIssueCode_NodeCreationFailure:                   #NodegroupIssueCode & "NodeCreationFailure"
#NodegroupIssueCode_AsgInstanceLaunchFailures:             #NodegroupIssueCode & "AsgInstanceLaunchFailures"
#NodegroupIssueCode_InstanceLimitExceeded:                 #NodegroupIssueCode & "InstanceLimitExceeded"
#NodegroupIssueCode_InsufficientFreeAddresses:             #NodegroupIssueCode & "InsufficientFreeAddresses"
#NodegroupIssueCode_AccessDenied:                          #NodegroupIssueCode & "AccessDenied"
#NodegroupIssueCode_InternalFailure:                       #NodegroupIssueCode & "InternalFailure"
#NodegroupIssueCode_ClusterUnreachable:                    #NodegroupIssueCode & "ClusterUnreachable"
#NodegroupIssueCode_AmiIdNotFound:                         #NodegroupIssueCode & "AmiIdNotFound"
#NodegroupIssueCode_AutoScalingGroupOptInRequired:         #NodegroupIssueCode & "AutoScalingGroupOptInRequired"
#NodegroupIssueCode_AutoScalingGroupRateLimitExceeded:     #NodegroupIssueCode & "AutoScalingGroupRateLimitExceeded"
#NodegroupIssueCode_Ec2LaunchTemplateDeletionFailure:      #NodegroupIssueCode & "Ec2LaunchTemplateDeletionFailure"
#NodegroupIssueCode_Ec2LaunchTemplateInvalidConfiguration: #NodegroupIssueCode & "Ec2LaunchTemplateInvalidConfiguration"
#NodegroupIssueCode_Ec2LaunchTemplateMaxLimitExceeded:     #NodegroupIssueCode & "Ec2LaunchTemplateMaxLimitExceeded"
#NodegroupIssueCode_Ec2SubnetListTooLong:                  #NodegroupIssueCode & "Ec2SubnetListTooLong"
#NodegroupIssueCode_IamThrottling:                         #NodegroupIssueCode & "IamThrottling"
#NodegroupIssueCode_NodeTerminationFailure:                #NodegroupIssueCode & "NodeTerminationFailure"
#NodegroupIssueCode_PodEvictionFailure:                    #NodegroupIssueCode & "PodEvictionFailure"
#NodegroupIssueCode_SourceEc2LaunchTemplateNotFound:       #NodegroupIssueCode & "SourceEc2LaunchTemplateNotFound"
#NodegroupIssueCode_LimitExceeded:                         #NodegroupIssueCode & "LimitExceeded"
#NodegroupIssueCode_Unknown:                               #NodegroupIssueCode & "Unknown"
#NodegroupIssueCode_AutoScalingGroupInstanceRefreshActive: #NodegroupIssueCode & "AutoScalingGroupInstanceRefreshActive"

#NodegroupStatus: string // #enumNodegroupStatus

#enumNodegroupStatus:
	#NodegroupStatus_CREATING |
	#NodegroupStatus_ACTIVE |
	#NodegroupStatus_UPDATING |
	#NodegroupStatus_DELETING |
	#NodegroupStatus_CREATE_FAILED |
	#NodegroupStatus_DELETE_FAILED |
	#NodegroupStatus_DEGRADED

#NodegroupStatus_CREATING:      #NodegroupStatus & "CREATING"
#NodegroupStatus_ACTIVE:        #NodegroupStatus & "ACTIVE"
#NodegroupStatus_UPDATING:      #NodegroupStatus & "UPDATING"
#NodegroupStatus_DELETING:      #NodegroupStatus & "DELETING"
#NodegroupStatus_CREATE_FAILED: #NodegroupStatus & "CREATE_FAILED"
#NodegroupStatus_DELETE_FAILED: #NodegroupStatus & "DELETE_FAILED"
#NodegroupStatus_DEGRADED:      #NodegroupStatus & "DEGRADED"

#ResolveConflicts: string // #enumResolveConflicts

#enumResolveConflicts:
	#ResolveConflicts_OVERWRITE |
	#ResolveConflicts_NONE |
	#ResolveConflicts_PRESERVE

#ResolveConflicts_OVERWRITE: #ResolveConflicts & "OVERWRITE"
#ResolveConflicts_NONE:      #ResolveConflicts & "NONE"
#ResolveConflicts_PRESERVE:  #ResolveConflicts & "PRESERVE"

#TaintEffect: string // #enumTaintEffect

#enumTaintEffect:
	#TaintEffect_NO_SCHEDULE |
	#TaintEffect_NO_EXECUTE |
	#TaintEffect_PREFER_NO_SCHEDULE

#TaintEffect_NO_SCHEDULE:        #TaintEffect & "NO_SCHEDULE"
#TaintEffect_NO_EXECUTE:         #TaintEffect & "NO_EXECUTE"
#TaintEffect_PREFER_NO_SCHEDULE: #TaintEffect & "PREFER_NO_SCHEDULE"

#UpdateParamType: string // #enumUpdateParamType

#enumUpdateParamType:
	#UpdateParamType_Version |
	#UpdateParamType_PlatformVersion |
	#UpdateParamType_EndpointPrivateAccess |
	#UpdateParamType_EndpointPublicAccess |
	#UpdateParamType_ClusterLogging |
	#UpdateParamType_DesiredSize |
	#UpdateParamType_LabelsToAdd |
	#UpdateParamType_LabelsToRemove |
	#UpdateParamType_TaintsToAdd |
	#UpdateParamType_TaintsToRemove |
	#UpdateParamType_MaxSize |
	#UpdateParamType_MinSize |
	#UpdateParamType_ReleaseVersion |
	#UpdateParamType_PublicAccessCidrs |
	#UpdateParamType_LaunchTemplateName |
	#UpdateParamType_LaunchTemplateVersion |
	#UpdateParamType_IdentityProviderConfig |
	#UpdateParamType_EncryptionConfig |
	#UpdateParamType_AddonVersion |
	#UpdateParamType_ServiceAccountRoleArn |
	#UpdateParamType_ResolveConflicts |
	#UpdateParamType_MaxUnavailable |
	#UpdateParamType_MaxUnavailablePercentage

#UpdateParamType_Version:                  #UpdateParamType & "Version"
#UpdateParamType_PlatformVersion:          #UpdateParamType & "PlatformVersion"
#UpdateParamType_EndpointPrivateAccess:    #UpdateParamType & "EndpointPrivateAccess"
#UpdateParamType_EndpointPublicAccess:     #UpdateParamType & "EndpointPublicAccess"
#UpdateParamType_ClusterLogging:           #UpdateParamType & "ClusterLogging"
#UpdateParamType_DesiredSize:              #UpdateParamType & "DesiredSize"
#UpdateParamType_LabelsToAdd:              #UpdateParamType & "LabelsToAdd"
#UpdateParamType_LabelsToRemove:           #UpdateParamType & "LabelsToRemove"
#UpdateParamType_TaintsToAdd:              #UpdateParamType & "TaintsToAdd"
#UpdateParamType_TaintsToRemove:           #UpdateParamType & "TaintsToRemove"
#UpdateParamType_MaxSize:                  #UpdateParamType & "MaxSize"
#UpdateParamType_MinSize:                  #UpdateParamType & "MinSize"
#UpdateParamType_ReleaseVersion:           #UpdateParamType & "ReleaseVersion"
#UpdateParamType_PublicAccessCidrs:        #UpdateParamType & "PublicAccessCidrs"
#UpdateParamType_LaunchTemplateName:       #UpdateParamType & "LaunchTemplateName"
#UpdateParamType_LaunchTemplateVersion:    #UpdateParamType & "LaunchTemplateVersion"
#UpdateParamType_IdentityProviderConfig:   #UpdateParamType & "IdentityProviderConfig"
#UpdateParamType_EncryptionConfig:         #UpdateParamType & "EncryptionConfig"
#UpdateParamType_AddonVersion:             #UpdateParamType & "AddonVersion"
#UpdateParamType_ServiceAccountRoleArn:    #UpdateParamType & "ServiceAccountRoleArn"
#UpdateParamType_ResolveConflicts:         #UpdateParamType & "ResolveConflicts"
#UpdateParamType_MaxUnavailable:           #UpdateParamType & "MaxUnavailable"
#UpdateParamType_MaxUnavailablePercentage: #UpdateParamType & "MaxUnavailablePercentage"

#UpdateStatus: string // #enumUpdateStatus

#enumUpdateStatus:
	#UpdateStatus_InProgress |
	#UpdateStatus_Failed |
	#UpdateStatus_Cancelled |
	#UpdateStatus_Successful

#UpdateStatus_InProgress: #UpdateStatus & "InProgress"
#UpdateStatus_Failed:     #UpdateStatus & "Failed"
#UpdateStatus_Cancelled:  #UpdateStatus & "Cancelled"
#UpdateStatus_Successful: #UpdateStatus & "Successful"

#UpdateType: string // #enumUpdateType

#enumUpdateType:
	#UpdateType_VersionUpdate |
	#UpdateType_EndpointAccessUpdate |
	#UpdateType_LoggingUpdate |
	#UpdateType_ConfigUpdate |
	#UpdateType_AssociateIdentityProviderConfig |
	#UpdateType_DisassociateIdentityProviderConfig |
	#UpdateType_AssociateEncryptionConfig |
	#UpdateType_AddonUpdate

#UpdateType_VersionUpdate:                      #UpdateType & "VersionUpdate"
#UpdateType_EndpointAccessUpdate:               #UpdateType & "EndpointAccessUpdate"
#UpdateType_LoggingUpdate:                      #UpdateType & "LoggingUpdate"
#UpdateType_ConfigUpdate:                       #UpdateType & "ConfigUpdate"
#UpdateType_AssociateIdentityProviderConfig:    #UpdateType & "AssociateIdentityProviderConfig"
#UpdateType_DisassociateIdentityProviderConfig: #UpdateType & "DisassociateIdentityProviderConfig"
#UpdateType_AssociateEncryptionConfig:          #UpdateType & "AssociateEncryptionConfig"
#UpdateType_AddonUpdate:                        #UpdateType & "AddonUpdate"
