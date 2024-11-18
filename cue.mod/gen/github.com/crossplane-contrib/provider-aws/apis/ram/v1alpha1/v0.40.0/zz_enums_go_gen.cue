// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/crossplane-contrib/provider-aws/apis/ram/v1alpha1

package v1alpha1

#ResourceOwner: string // #enumResourceOwner

#enumResourceOwner:
	#ResourceOwner_SELF |
	#ResourceOwner_OTHER_ACCOUNTS

#ResourceOwner_SELF:           #ResourceOwner & "SELF"
#ResourceOwner_OTHER_ACCOUNTS: #ResourceOwner & "OTHER-ACCOUNTS"

#ResourceRegionScope: string // #enumResourceRegionScope

#enumResourceRegionScope:
	#ResourceRegionScope_REGIONAL |
	#ResourceRegionScope_GLOBAL

#ResourceRegionScope_REGIONAL: #ResourceRegionScope & "REGIONAL"
#ResourceRegionScope_GLOBAL:   #ResourceRegionScope & "GLOBAL"

#ResourceRegionScopeFilter: string // #enumResourceRegionScopeFilter

#enumResourceRegionScopeFilter:
	#ResourceRegionScopeFilter_ALL |
	#ResourceRegionScopeFilter_REGIONAL |
	#ResourceRegionScopeFilter_GLOBAL

#ResourceRegionScopeFilter_ALL:      #ResourceRegionScopeFilter & "ALL"
#ResourceRegionScopeFilter_REGIONAL: #ResourceRegionScopeFilter & "REGIONAL"
#ResourceRegionScopeFilter_GLOBAL:   #ResourceRegionScopeFilter & "GLOBAL"

#ResourceShareAssociationStatus: string // #enumResourceShareAssociationStatus

#enumResourceShareAssociationStatus:
	#ResourceShareAssociationStatus_ASSOCIATING |
	#ResourceShareAssociationStatus_ASSOCIATED |
	#ResourceShareAssociationStatus_FAILED |
	#ResourceShareAssociationStatus_DISASSOCIATING |
	#ResourceShareAssociationStatus_DISASSOCIATED

#ResourceShareAssociationStatus_ASSOCIATING:    #ResourceShareAssociationStatus & "ASSOCIATING"
#ResourceShareAssociationStatus_ASSOCIATED:     #ResourceShareAssociationStatus & "ASSOCIATED"
#ResourceShareAssociationStatus_FAILED:         #ResourceShareAssociationStatus & "FAILED"
#ResourceShareAssociationStatus_DISASSOCIATING: #ResourceShareAssociationStatus & "DISASSOCIATING"
#ResourceShareAssociationStatus_DISASSOCIATED:  #ResourceShareAssociationStatus & "DISASSOCIATED"

#ResourceShareAssociationType: string // #enumResourceShareAssociationType

#enumResourceShareAssociationType:
	#ResourceShareAssociationType_PRINCIPAL |
	#ResourceShareAssociationType_RESOURCE

#ResourceShareAssociationType_PRINCIPAL: #ResourceShareAssociationType & "PRINCIPAL"
#ResourceShareAssociationType_RESOURCE:  #ResourceShareAssociationType & "RESOURCE"

#ResourceShareFeatureSet: string // #enumResourceShareFeatureSet

#enumResourceShareFeatureSet:
	#ResourceShareFeatureSet_CREATED_FROM_POLICY |
	#ResourceShareFeatureSet_PROMOTING_TO_STANDARD |
	#ResourceShareFeatureSet_STANDARD

#ResourceShareFeatureSet_CREATED_FROM_POLICY:   #ResourceShareFeatureSet & "CREATED_FROM_POLICY"
#ResourceShareFeatureSet_PROMOTING_TO_STANDARD: #ResourceShareFeatureSet & "PROMOTING_TO_STANDARD"
#ResourceShareFeatureSet_STANDARD:              #ResourceShareFeatureSet & "STANDARD"

#ResourceShareInvitationStatus: string // #enumResourceShareInvitationStatus

#enumResourceShareInvitationStatus:
	#ResourceShareInvitationStatus_PENDING |
	#ResourceShareInvitationStatus_ACCEPTED |
	#ResourceShareInvitationStatus_REJECTED |
	#ResourceShareInvitationStatus_EXPIRED

#ResourceShareInvitationStatus_PENDING:  #ResourceShareInvitationStatus & "PENDING"
#ResourceShareInvitationStatus_ACCEPTED: #ResourceShareInvitationStatus & "ACCEPTED"
#ResourceShareInvitationStatus_REJECTED: #ResourceShareInvitationStatus & "REJECTED"
#ResourceShareInvitationStatus_EXPIRED:  #ResourceShareInvitationStatus & "EXPIRED"

#ResourceShareStatus_SDK: string // #enumResourceShareStatus_SDK

#enumResourceShareStatus_SDK:
	#ResourceShareStatus_SDK_PENDING |
	#ResourceShareStatus_SDK_ACTIVE |
	#ResourceShareStatus_SDK_FAILED |
	#ResourceShareStatus_SDK_DELETING |
	#ResourceShareStatus_SDK_DELETED

#ResourceShareStatus_SDK_PENDING:  #ResourceShareStatus_SDK & "PENDING"
#ResourceShareStatus_SDK_ACTIVE:   #ResourceShareStatus_SDK & "ACTIVE"
#ResourceShareStatus_SDK_FAILED:   #ResourceShareStatus_SDK & "FAILED"
#ResourceShareStatus_SDK_DELETING: #ResourceShareStatus_SDK & "DELETING"
#ResourceShareStatus_SDK_DELETED:  #ResourceShareStatus_SDK & "DELETED"

#ResourceStatus: string // #enumResourceStatus

#enumResourceStatus:
	#ResourceStatus_AVAILABLE |
	#ResourceStatus_ZONAL_RESOURCE_INACCESSIBLE |
	#ResourceStatus_LIMIT_EXCEEDED |
	#ResourceStatus_UNAVAILABLE |
	#ResourceStatus_PENDING

#ResourceStatus_AVAILABLE:                   #ResourceStatus & "AVAILABLE"
#ResourceStatus_ZONAL_RESOURCE_INACCESSIBLE: #ResourceStatus & "ZONAL_RESOURCE_INACCESSIBLE"
#ResourceStatus_LIMIT_EXCEEDED:              #ResourceStatus & "LIMIT_EXCEEDED"
#ResourceStatus_UNAVAILABLE:                 #ResourceStatus & "UNAVAILABLE"
#ResourceStatus_PENDING:                     #ResourceStatus & "PENDING"
