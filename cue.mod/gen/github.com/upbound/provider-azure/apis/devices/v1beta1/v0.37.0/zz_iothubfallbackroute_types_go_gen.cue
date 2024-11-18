// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/devices/v1beta1

package v1beta1

#IOTHubFallbackRouteInitParameters: {
	// The condition that is evaluated to apply the routing rule. If no condition is provided, it evaluates to true by default. For grammar, see: https://docs.microsoft.com/azure/iot-hub/iot-hub-devguide-query-language.
	condition?: null | string @go(Condition,*string)

	// Used to specify whether the fallback route is enabled.
	enabled?: null | bool @go(Enabled,*bool)

	// The source that the routing rule is to be applied to. Possible values include: DeviceConnectionStateEvents, DeviceJobLifecycleEvents, DeviceLifecycleEvents, DeviceMessages, DigitalTwinChangeEvents, Invalid, TwinChangeEvents.
	source?: null | string @go(Source,*string)
}

#IOTHubFallbackRouteObservation: {
	// The condition that is evaluated to apply the routing rule. If no condition is provided, it evaluates to true by default. For grammar, see: https://docs.microsoft.com/azure/iot-hub/iot-hub-devguide-query-language.
	condition?: null | string @go(Condition,*string)

	// Used to specify whether the fallback route is enabled.
	enabled?: null | bool @go(Enabled,*bool)

	// The endpoints to which messages that satisfy the condition are routed. Currently only 1 endpoint is allowed.
	endpointNames?: [...null | string] @go(EndpointNames,[]*string)

	// The ID of the IoTHub Fallback Route.
	id?: null | string @go(ID,*string)

	// The name of the IoTHub to which this Fallback Route belongs. Changing this forces a new resource to be created.
	iothubName?: null | string @go(IOTHubName,*string)

	// The name of the resource group under which the IotHub Storage Container Endpoint resource has to be created. Changing this forces a new resource to be created.
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// The source that the routing rule is to be applied to. Possible values include: DeviceConnectionStateEvents, DeviceJobLifecycleEvents, DeviceLifecycleEvents, DeviceMessages, DigitalTwinChangeEvents, Invalid, TwinChangeEvents.
	source?: null | string @go(Source,*string)
}

#IOTHubFallbackRouteParameters: {
	// The condition that is evaluated to apply the routing rule. If no condition is provided, it evaluates to true by default. For grammar, see: https://docs.microsoft.com/azure/iot-hub/iot-hub-devguide-query-language.
	// +kubebuilder:validation:Optional
	condition?: null | string @go(Condition,*string)

	// Used to specify whether the fallback route is enabled.
	// +kubebuilder:validation:Optional
	enabled?: null | bool @go(Enabled,*bool)

	// The endpoints to which messages that satisfy the condition are routed. Currently only 1 endpoint is allowed.
	// +crossplane:generate:reference:type=IOTHubEndpointStorageContainer
	// +kubebuilder:validation:Optional
	endpointNames?: [...null | string] @go(EndpointNames,[]*string)

	// The name of the IoTHub to which this Fallback Route belongs. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=IOTHub
	// +kubebuilder:validation:Optional
	iothubName?: null | string @go(IOTHubName,*string)

	// The name of the resource group under which the IotHub Storage Container Endpoint resource has to be created. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/azure/v1beta1.ResourceGroup
	// +kubebuilder:validation:Optional
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// The source that the routing rule is to be applied to. Possible values include: DeviceConnectionStateEvents, DeviceJobLifecycleEvents, DeviceLifecycleEvents, DeviceMessages, DigitalTwinChangeEvents, Invalid, TwinChangeEvents.
	// +kubebuilder:validation:Optional
	source?: null | string @go(Source,*string)
}

// IOTHubFallbackRouteSpec defines the desired state of IOTHubFallbackRoute
#IOTHubFallbackRouteSpec: {
	forProvider: #IOTHubFallbackRouteParameters @go(ForProvider)

	// THIS IS AN ALPHA FIELD. Do not use it in production. It is not honored
	// unless the relevant Crossplane feature flag is enabled, and may be
	// changed or removed without notice.
	// InitProvider holds the same fields as ForProvider, with the exception
	// of Identifier and other resource reference fields. The fields that are
	// in InitProvider are merged into ForProvider when the resource is created.
	// The same fields are also added to the terraform ignore_changes hook, to
	// avoid updating them after creation. This is useful for fields that are
	// required on creation, but we do not desire to update them after creation,
	// for example because of an external controller is managing them, like an
	// autoscaler.
	initProvider?: #IOTHubFallbackRouteInitParameters @go(InitProvider)
}

// IOTHubFallbackRouteStatus defines the observed state of IOTHubFallbackRoute.
#IOTHubFallbackRouteStatus: {
	atProvider?: #IOTHubFallbackRouteObservation @go(AtProvider)
}

// IOTHubFallbackRoute is the Schema for the IOTHubFallbackRoutes API. Manages an IotHub Fallback Route
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#IOTHubFallbackRoute: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.enabled) || (has(self.initProvider) && has(self.initProvider.enabled))",message="spec.forProvider.enabled is a required parameter"
	spec:    #IOTHubFallbackRouteSpec   @go(Spec)
	status?: #IOTHubFallbackRouteStatus @go(Status)
}

// IOTHubFallbackRouteList contains a list of IOTHubFallbackRoutes
#IOTHubFallbackRouteList: {
	items: [...#IOTHubFallbackRoute] @go(Items,[]IOTHubFallbackRoute)
}
