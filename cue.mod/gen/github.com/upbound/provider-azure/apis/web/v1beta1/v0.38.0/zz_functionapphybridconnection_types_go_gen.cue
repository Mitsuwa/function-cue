// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/web/v1beta1

package v1beta1

#FunctionAppHybridConnectionInitParameters: {
	// The hostname of the endpoint.
	// The hostname of the endpoint.
	hostname?: null | string @go(HostName,*string)

	// The port to use for the endpoint
	// The port to use for the endpoint
	port?: null | float64 @go(Port,*float64)

	// The name of the Relay key with Send permission to use. Defaults to RootManageSharedAccessKey
	// The name of the Relay key with `Send` permission to use. Defaults to `RootManageSharedAccessKey`
	sendKeyName?: null | string @go(SendKeyName,*string)
}

#FunctionAppHybridConnectionObservation: {
	// The ID of the Function App for this Hybrid Connection. Changing this forces a new resource to be created.
	// The ID of the Function App for this Hybrid Connection.
	functionAppId?: null | string @go(FunctionAppID,*string)

	// The hostname of the endpoint.
	// The hostname of the endpoint.
	hostname?: null | string @go(HostName,*string)

	// The ID of the Function App Hybrid Connection
	id?: null | string @go(ID,*string)

	// The name of the Relay Namespace.
	// The name of the Relay Namespace.
	namespaceName?: null | string @go(NamespaceName,*string)

	// The port to use for the endpoint
	// The port to use for the endpoint
	port?: null | float64 @go(Port,*float64)

	// The ID of the Relay Hybrid Connection to use. Changing this forces a new resource to be created.
	// The ID of the Relay Hybrid Connection to use.
	relayId?: null | string @go(RelayID,*string)

	// The name of the Relay in use.
	// The name of the Relay in use.
	relayName?: null | string @go(RelayName,*string)

	// The name of the Relay key with Send permission to use. Defaults to RootManageSharedAccessKey
	// The name of the Relay key with `Send` permission to use. Defaults to `RootManageSharedAccessKey`
	sendKeyName?: null | string @go(SendKeyName,*string)

	// The Service Bus Namespace.
	// The Service Bus Namespace.
	serviceBusNamespace?: null | string @go(ServiceBusNamespace,*string)

	// The suffix for the endpoint.
	// The suffix for the endpoint.
	serviceBusSuffix?: null | string @go(ServiceBusSuffix,*string)
}

#FunctionAppHybridConnectionParameters: {
	// The ID of the Function App for this Hybrid Connection. Changing this forces a new resource to be created.
	// The ID of the Function App for this Hybrid Connection.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/web/v1beta1.WindowsFunctionApp
	// +crossplane:generate:reference:extractor=github.com/upbound/provider-azure/apis/rconfig.ExtractResourceID()
	// +kubebuilder:validation:Optional
	functionAppId?: null | string @go(FunctionAppID,*string)

	// The hostname of the endpoint.
	// The hostname of the endpoint.
	// +kubebuilder:validation:Optional
	hostname?: null | string @go(HostName,*string)

	// The port to use for the endpoint
	// The port to use for the endpoint
	// +kubebuilder:validation:Optional
	port?: null | float64 @go(Port,*float64)

	// The ID of the Relay Hybrid Connection to use. Changing this forces a new resource to be created.
	// The ID of the Relay Hybrid Connection to use.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/relay/v1beta1.HybridConnection
	// +crossplane:generate:reference:extractor=github.com/crossplane/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	relayId?: null | string @go(RelayID,*string)

	// The name of the Relay key with Send permission to use. Defaults to RootManageSharedAccessKey
	// The name of the Relay key with `Send` permission to use. Defaults to `RootManageSharedAccessKey`
	// +kubebuilder:validation:Optional
	sendKeyName?: null | string @go(SendKeyName,*string)
}

// FunctionAppHybridConnectionSpec defines the desired state of FunctionAppHybridConnection
#FunctionAppHybridConnectionSpec: {
	forProvider: #FunctionAppHybridConnectionParameters @go(ForProvider)

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
	initProvider?: #FunctionAppHybridConnectionInitParameters @go(InitProvider)
}

// FunctionAppHybridConnectionStatus defines the observed state of FunctionAppHybridConnection.
#FunctionAppHybridConnectionStatus: {
	atProvider?: #FunctionAppHybridConnectionObservation @go(AtProvider)
}

// FunctionAppHybridConnection is the Schema for the FunctionAppHybridConnections API. Manages a Function App Hybrid Connection.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#FunctionAppHybridConnection: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.hostname) || (has(self.initProvider) && has(self.initProvider.hostname))",message="spec.forProvider.hostname is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.port) || (has(self.initProvider) && has(self.initProvider.port))",message="spec.forProvider.port is a required parameter"
	spec:    #FunctionAppHybridConnectionSpec   @go(Spec)
	status?: #FunctionAppHybridConnectionStatus @go(Status)
}

// FunctionAppHybridConnectionList contains a list of FunctionAppHybridConnections
#FunctionAppHybridConnectionList: {
	items: [...#FunctionAppHybridConnection] @go(Items,[]FunctionAppHybridConnection)
}
