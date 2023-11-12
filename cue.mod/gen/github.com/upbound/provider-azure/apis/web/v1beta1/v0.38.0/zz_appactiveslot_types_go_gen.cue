// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/web/v1beta1

package v1beta1

#AppActiveSlotInitParameters: {
	// The swap action should overwrite the Production slot's network configuration with the configuration from this slot. Defaults to true. Changing this forces a new resource to be created.
	// The swap action should overwrite the Production slot's network configuration with the configuration from this slot. Defaults to `true`.
	overwriteNetworkConfig?: null | bool @go(OverwriteNetworkConfig,*bool)
}

#AppActiveSlotObservation: {
	// The ID of the Web App Active Slot
	id?: null | string @go(ID,*string)

	// The timestamp of the last successful swap with Production.
	// The timestamp of the last successful swap with `Production`
	lastSuccessfulSwap?: null | string @go(LastSuccessfulSwap,*string)

	// The swap action should overwrite the Production slot's network configuration with the configuration from this slot. Defaults to true. Changing this forces a new resource to be created.
	// The swap action should overwrite the Production slot's network configuration with the configuration from this slot. Defaults to `true`.
	overwriteNetworkConfig?: null | bool @go(OverwriteNetworkConfig,*bool)

	// The ID of the Slot to swap with Production.
	// The ID of the Slot to swap with `Production`.
	slotId?: null | string @go(SlotID,*string)
}

#AppActiveSlotParameters: {
	// The swap action should overwrite the Production slot's network configuration with the configuration from this slot. Defaults to true. Changing this forces a new resource to be created.
	// The swap action should overwrite the Production slot's network configuration with the configuration from this slot. Defaults to `true`.
	// +kubebuilder:validation:Optional
	overwriteNetworkConfig?: null | bool @go(OverwriteNetworkConfig,*bool)

	// The ID of the Slot to swap with Production.
	// The ID of the Slot to swap with `Production`.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/web/v1beta1.WindowsWebAppSlot
	// +crossplane:generate:reference:extractor=github.com/crossplane/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	slotId?: null | string @go(SlotID,*string)
}

// AppActiveSlotSpec defines the desired state of AppActiveSlot
#AppActiveSlotSpec: {
	forProvider: #AppActiveSlotParameters @go(ForProvider)

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
	initProvider?: #AppActiveSlotInitParameters @go(InitProvider)
}

// AppActiveSlotStatus defines the observed state of AppActiveSlot.
#AppActiveSlotStatus: {
	atProvider?: #AppActiveSlotObservation @go(AtProvider)
}

// AppActiveSlot is the Schema for the AppActiveSlots API. Manages a Web App Active Slot.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#AppActiveSlot: {
	spec:    #AppActiveSlotSpec   @go(Spec)
	status?: #AppActiveSlotStatus @go(Status)
}

// AppActiveSlotList contains a list of AppActiveSlots
#AppActiveSlotList: {
	items: [...#AppActiveSlot] @go(Items,[]AppActiveSlot)
}
