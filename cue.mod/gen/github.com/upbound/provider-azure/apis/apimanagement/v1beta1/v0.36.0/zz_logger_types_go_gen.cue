// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/apimanagement/v1beta1

package v1beta1

#ApplicationInsightsInitParameters: {
}

#ApplicationInsightsObservation: {
}

#EventHubInitParameters: {
	// The name of an EventHub.
	name?: null | string @go(Name,*string)
}

#EventHubObservation: {
	// The name of an EventHub.
	name?: null | string @go(Name,*string)
}

#EventHubParameters: {
	// The name of an EventHub.
	// +kubebuilder:validation:Optional
	name?: null | string @go(Name,*string)
}

#LoggerInitParameters: {
	// An application_insights block as documented below. Changing this forces a new resource to be created.
	applicationInsights?: [...#ApplicationInsightsInitParameters] @go(ApplicationInsights,[]ApplicationInsightsInitParameters)

	// Specifies whether records should be buffered in the Logger prior to publishing. Defaults to true.
	buffered?: null | bool @go(Buffered,*bool)

	// A description of this Logger.
	description?: null | string @go(Description,*string)

	// An eventhub block as documented below. Changing this forces a new resource to be created.
	eventhub?: [...#EventHubInitParameters] @go(EventHub,[]EventHubInitParameters)
}

#LoggerObservation: {
	// The name of the API Management Service. Changing this forces a new resource to be created.
	apiManagementName?: null | string @go(APIManagementName,*string)

	// Specifies whether records should be buffered in the Logger prior to publishing. Defaults to true.
	buffered?: null | bool @go(Buffered,*bool)

	// A description of this Logger.
	description?: null | string @go(Description,*string)

	// An eventhub block as documented below. Changing this forces a new resource to be created.
	eventhub?: [...#EventHubObservation] @go(EventHub,[]EventHubObservation)

	// The ID of the API Management Logger.
	id?: null | string @go(ID,*string)

	// The name of the Resource Group in which the API Management Service exists. Changing this forces a new resource to be created.
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// The target resource id which will be linked in the API-Management portal page. Changing this forces a new resource to be created.
	resourceId?: null | string @go(ResourceID,*string)
}

#LoggerParameters: {
	// The name of the API Management Service. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/apimanagement/v1beta1.Management
	// +kubebuilder:validation:Optional
	apiManagementName?: null | string @go(APIManagementName,*string)

	// Specifies whether records should be buffered in the Logger prior to publishing. Defaults to true.
	// +kubebuilder:validation:Optional
	buffered?: null | bool @go(Buffered,*bool)

	// A description of this Logger.
	// +kubebuilder:validation:Optional
	description?: null | string @go(Description,*string)

	// An eventhub block as documented below. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	eventhub?: [...#EventHubParameters] @go(EventHub,[]EventHubParameters)

	// The name of the Resource Group in which the API Management Service exists. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/azure/v1beta1.ResourceGroup
	// +kubebuilder:validation:Optional
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// The target resource id which will be linked in the API-Management portal page. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/insights/v1beta1.ApplicationInsights
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	resourceId?: null | string @go(ResourceID,*string)
}

// LoggerSpec defines the desired state of Logger
#LoggerSpec: {
	forProvider: #LoggerParameters @go(ForProvider)

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
	initProvider?: #LoggerInitParameters @go(InitProvider)
}

// LoggerStatus defines the observed state of Logger.
#LoggerStatus: {
	atProvider?: #LoggerObservation @go(AtProvider)
}

// Logger is the Schema for the Loggers API. Manages a Logger within an API Management Service.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#Logger: {
	spec:    #LoggerSpec   @go(Spec)
	status?: #LoggerStatus @go(Status)
}

// LoggerList contains a list of Loggers
#LoggerList: {
	items: [...#Logger] @go(Items,[]Logger)
}
