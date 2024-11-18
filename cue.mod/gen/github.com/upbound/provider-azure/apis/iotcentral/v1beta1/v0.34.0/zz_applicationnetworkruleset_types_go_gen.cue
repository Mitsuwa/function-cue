// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/iotcentral/v1beta1

package v1beta1

#ApplicationNetworkRuleSetObservation: {
	// Whether these IP Rules apply for device connectivity to IoT Hub and Device Provisioning Service associated with this IoT Central Application. Possible values are true, false. Defaults to true
	applyToDevice?: null | bool @go(ApplyToDevice,*bool)

	// Specifies the default action for the IoT Central Application Network Rule Set. Possible values are Allow and Deny. Defaults to Deny.
	defaultAction?: null | string @go(DefaultAction,*string)

	// The ID of the IoT Central Application Network Rule Set.
	id?: null | string @go(ID,*string)

	// One or more ip_rule blocks as defined below.
	ipRule?: [...#IPRuleObservation] @go(IPRule,[]IPRuleObservation)

	// The ID of the IoT Central Application. Changing this forces a new resource to be created.
	iotcentralApplicationId?: null | string @go(IotcentralApplicationID,*string)
}

#ApplicationNetworkRuleSetParameters: {
	// Whether these IP Rules apply for device connectivity to IoT Hub and Device Provisioning Service associated with this IoT Central Application. Possible values are true, false. Defaults to true
	// +kubebuilder:validation:Optional
	applyToDevice?: null | bool @go(ApplyToDevice,*bool)

	// Specifies the default action for the IoT Central Application Network Rule Set. Possible values are Allow and Deny. Defaults to Deny.
	// +kubebuilder:validation:Optional
	defaultAction?: null | string @go(DefaultAction,*string)

	// One or more ip_rule blocks as defined below.
	// +kubebuilder:validation:Optional
	ipRule?: [...#IPRuleParameters] @go(IPRule,[]IPRuleParameters)

	// The ID of the IoT Central Application. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/iotcentral/v1beta1.Application
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	iotcentralApplicationId?: null | string @go(IotcentralApplicationID,*string)
}

#IPRuleObservation: {
	// The IP address range in CIDR notation for the IP Rule.
	ipMask?: null | string @go(IPMask,*string)

	// The name of the IP Rule
	name?: null | string @go(Name,*string)
}

#IPRuleParameters: {
	// The IP address range in CIDR notation for the IP Rule.
	// +kubebuilder:validation:Required
	ipMask?: null | string @go(IPMask,*string)

	// The name of the IP Rule
	// +kubebuilder:validation:Required
	name?: null | string @go(Name,*string)
}

// ApplicationNetworkRuleSetSpec defines the desired state of ApplicationNetworkRuleSet
#ApplicationNetworkRuleSetSpec: {
	forProvider: #ApplicationNetworkRuleSetParameters @go(ForProvider)
}

// ApplicationNetworkRuleSetStatus defines the observed state of ApplicationNetworkRuleSet.
#ApplicationNetworkRuleSetStatus: {
	atProvider?: #ApplicationNetworkRuleSetObservation @go(AtProvider)
}

// ApplicationNetworkRuleSet is the Schema for the ApplicationNetworkRuleSets API. Manages an IoT Central Application Network Rule Set.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#ApplicationNetworkRuleSet: {
	spec:    #ApplicationNetworkRuleSetSpec   @go(Spec)
	status?: #ApplicationNetworkRuleSetStatus @go(Status)
}

// ApplicationNetworkRuleSetList contains a list of ApplicationNetworkRuleSets
#ApplicationNetworkRuleSetList: {
	items: [...#ApplicationNetworkRuleSet] @go(Items,[]ApplicationNetworkRuleSet)
}
