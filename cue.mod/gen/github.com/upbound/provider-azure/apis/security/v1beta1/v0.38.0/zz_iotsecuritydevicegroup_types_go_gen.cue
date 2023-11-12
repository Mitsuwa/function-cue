// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/security/v1beta1

package v1beta1

#AllowRuleInitParameters: {
	// Specifies which IP is not allowed to be connected to in current device group for inbound connection.
	connectionFromIpsNotAllowed?: [...null | string] @go(ConnectionFromIpsNotAllowed,[]*string)

	// Specifies which IP is not allowed to be connected to in current device group for outbound connection.
	connectionToIpsNotAllowed?: [...null | string] @go(ConnectionToIpsNotAllowed,[]*string)

	// Specifies which local user is not allowed to login in current device group.
	localUsersNotAllowed?: [...null | string] @go(LocalUsersNotAllowed,[]*string)

	// Specifies which process is not allowed to be executed in current device group.
	processesNotAllowed?: [...null | string] @go(ProcessesNotAllowed,[]*string)
}

#AllowRuleObservation: {
	// Specifies which IP is not allowed to be connected to in current device group for inbound connection.
	connectionFromIpsNotAllowed?: [...null | string] @go(ConnectionFromIpsNotAllowed,[]*string)

	// Specifies which IP is not allowed to be connected to in current device group for outbound connection.
	connectionToIpsNotAllowed?: [...null | string] @go(ConnectionToIpsNotAllowed,[]*string)

	// Specifies which local user is not allowed to login in current device group.
	localUsersNotAllowed?: [...null | string] @go(LocalUsersNotAllowed,[]*string)

	// Specifies which process is not allowed to be executed in current device group.
	processesNotAllowed?: [...null | string] @go(ProcessesNotAllowed,[]*string)
}

#AllowRuleParameters: {
	// Specifies which IP is not allowed to be connected to in current device group for inbound connection.
	// +kubebuilder:validation:Optional
	connectionFromIpsNotAllowed?: [...null | string] @go(ConnectionFromIpsNotAllowed,[]*string)

	// Specifies which IP is not allowed to be connected to in current device group for outbound connection.
	// +kubebuilder:validation:Optional
	connectionToIpsNotAllowed?: [...null | string] @go(ConnectionToIpsNotAllowed,[]*string)

	// Specifies which local user is not allowed to login in current device group.
	// +kubebuilder:validation:Optional
	localUsersNotAllowed?: [...null | string] @go(LocalUsersNotAllowed,[]*string)

	// Specifies which process is not allowed to be executed in current device group.
	// +kubebuilder:validation:Optional
	processesNotAllowed?: [...null | string] @go(ProcessesNotAllowed,[]*string)
}

#IOTSecurityDeviceGroupInitParameters: {
	// an allow_rule blocks as defined below.
	allowRule?: [...#AllowRuleInitParameters] @go(AllowRule,[]AllowRuleInitParameters)

	// Specifies the name of the Device Security Group. Changing this forces a new resource to be created.
	name?: null | string @go(Name,*string)

	// One or more range_rule blocks as defined below.
	rangeRule?: [...#RangeRuleInitParameters] @go(RangeRule,[]RangeRuleInitParameters)
}

#IOTSecurityDeviceGroupObservation: {
	// an allow_rule blocks as defined below.
	allowRule?: [...#AllowRuleObservation] @go(AllowRule,[]AllowRuleObservation)

	// The ID of the Iot Security Device Group resource.
	id?: null | string @go(ID,*string)

	// The ID of the IoT Hub which to link the Security Device Group to. Changing this forces a new resource to be created.
	iothubId?: null | string @go(IOTHubID,*string)

	// Specifies the name of the Device Security Group. Changing this forces a new resource to be created.
	name?: null | string @go(Name,*string)

	// One or more range_rule blocks as defined below.
	rangeRule?: [...#RangeRuleObservation] @go(RangeRule,[]RangeRuleObservation)
}

#IOTSecurityDeviceGroupParameters: {
	// an allow_rule blocks as defined below.
	// +kubebuilder:validation:Optional
	allowRule?: [...#AllowRuleParameters] @go(AllowRule,[]AllowRuleParameters)

	// The ID of the IoT Hub which to link the Security Device Group to. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/devices/v1beta1.IOTHub
	// +crossplane:generate:reference:extractor=github.com/crossplane/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	iothubId?: null | string @go(IOTHubID,*string)

	// Specifies the name of the Device Security Group. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	name?: null | string @go(Name,*string)

	// One or more range_rule blocks as defined below.
	// +kubebuilder:validation:Optional
	rangeRule?: [...#RangeRuleParameters] @go(RangeRule,[]RangeRuleParameters)
}

#RangeRuleInitParameters: {
	// Specifies the time range. represented in ISO 8601 duration format.
	duration?: null | string @go(Duration,*string)

	// The maximum threshold in the given time window.
	max?: null | float64 @go(Max,*float64)

	// The minimum threshold in the given time window.
	min?: null | float64 @go(Min,*float64)

	// The type of supported rule type. Possible Values are ActiveConnectionsNotInAllowedRange, AmqpC2DMessagesNotInAllowedRange, MqttC2DMessagesNotInAllowedRange, HttpC2DMessagesNotInAllowedRange, AmqpC2DRejectedMessagesNotInAllowedRange, MqttC2DRejectedMessagesNotInAllowedRange, HttpC2DRejectedMessagesNotInAllowedRange, AmqpD2CMessagesNotInAllowedRange, MqttD2CMessagesNotInAllowedRange, HttpD2CMessagesNotInAllowedRange, DirectMethodInvokesNotInAllowedRange, FailedLocalLoginsNotInAllowedRange, FileUploadsNotInAllowedRange, QueuePurgesNotInAllowedRange, TwinUpdatesNotInAllowedRange and UnauthorizedOperationsNotInAllowedRange.
	type?: null | string @go(Type,*string)
}

#RangeRuleObservation: {
	// Specifies the time range. represented in ISO 8601 duration format.
	duration?: null | string @go(Duration,*string)

	// The maximum threshold in the given time window.
	max?: null | float64 @go(Max,*float64)

	// The minimum threshold in the given time window.
	min?: null | float64 @go(Min,*float64)

	// The type of supported rule type. Possible Values are ActiveConnectionsNotInAllowedRange, AmqpC2DMessagesNotInAllowedRange, MqttC2DMessagesNotInAllowedRange, HttpC2DMessagesNotInAllowedRange, AmqpC2DRejectedMessagesNotInAllowedRange, MqttC2DRejectedMessagesNotInAllowedRange, HttpC2DRejectedMessagesNotInAllowedRange, AmqpD2CMessagesNotInAllowedRange, MqttD2CMessagesNotInAllowedRange, HttpD2CMessagesNotInAllowedRange, DirectMethodInvokesNotInAllowedRange, FailedLocalLoginsNotInAllowedRange, FileUploadsNotInAllowedRange, QueuePurgesNotInAllowedRange, TwinUpdatesNotInAllowedRange and UnauthorizedOperationsNotInAllowedRange.
	type?: null | string @go(Type,*string)
}

#RangeRuleParameters: {
	// Specifies the time range. represented in ISO 8601 duration format.
	// +kubebuilder:validation:Optional
	duration?: null | string @go(Duration,*string)

	// The maximum threshold in the given time window.
	// +kubebuilder:validation:Optional
	max?: null | float64 @go(Max,*float64)

	// The minimum threshold in the given time window.
	// +kubebuilder:validation:Optional
	min?: null | float64 @go(Min,*float64)

	// The type of supported rule type. Possible Values are ActiveConnectionsNotInAllowedRange, AmqpC2DMessagesNotInAllowedRange, MqttC2DMessagesNotInAllowedRange, HttpC2DMessagesNotInAllowedRange, AmqpC2DRejectedMessagesNotInAllowedRange, MqttC2DRejectedMessagesNotInAllowedRange, HttpC2DRejectedMessagesNotInAllowedRange, AmqpD2CMessagesNotInAllowedRange, MqttD2CMessagesNotInAllowedRange, HttpD2CMessagesNotInAllowedRange, DirectMethodInvokesNotInAllowedRange, FailedLocalLoginsNotInAllowedRange, FileUploadsNotInAllowedRange, QueuePurgesNotInAllowedRange, TwinUpdatesNotInAllowedRange and UnauthorizedOperationsNotInAllowedRange.
	// +kubebuilder:validation:Optional
	type?: null | string @go(Type,*string)
}

// IOTSecurityDeviceGroupSpec defines the desired state of IOTSecurityDeviceGroup
#IOTSecurityDeviceGroupSpec: {
	forProvider: #IOTSecurityDeviceGroupParameters @go(ForProvider)

	// THIS IS A BETA FIELD. It will be honored
	// unless the Management Policies feature flag is disabled.
	// InitProvider holds the same fields as ForProvider, with the exception
	// of Identifier and other resource reference fields. The fields that are
	// in InitProvider are merged into ForProvider when the resource is created.
	// The same fields are also added to the terraform ignore_changes hook, to
	// avoid updating them after creation. This is useful for fields that are
	// required on creation, but we do not desire to update them after creation,
	// for example because of an external controller is managing them, like an
	// autoscaler.
	initProvider?: #IOTSecurityDeviceGroupInitParameters @go(InitProvider)
}

// IOTSecurityDeviceGroupStatus defines the observed state of IOTSecurityDeviceGroup.
#IOTSecurityDeviceGroupStatus: {
	atProvider?: #IOTSecurityDeviceGroupObservation @go(AtProvider)
}

// IOTSecurityDeviceGroup is the Schema for the IOTSecurityDeviceGroups API. Manages a Iot Security Device Group.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#IOTSecurityDeviceGroup: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.name) || (has(self.initProvider) && has(self.initProvider.name))",message="spec.forProvider.name is a required parameter"
	spec:    #IOTSecurityDeviceGroupSpec   @go(Spec)
	status?: #IOTSecurityDeviceGroupStatus @go(Status)
}

// IOTSecurityDeviceGroupList contains a list of IOTSecurityDeviceGroups
#IOTSecurityDeviceGroupList: {
	items: [...#IOTSecurityDeviceGroup] @go(Items,[]IOTSecurityDeviceGroup)
}
