// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/web/v1beta1

package v1beta1

#FunctionAppActiveSlotInitParameters: {
	// The swap action should overwrite the Production slot's network configuration with the configuration from this slot. Defaults to true. Changing this forces a new resource to be created.
	// The swap action should overwrite the Production slot's network configuration with the configuration from this slot. Defaults to `true`.
	overwriteNetworkConfig?: null | bool @go(OverwriteNetworkConfig,*bool)
}

#FunctionAppActiveSlotObservation: {
	// The ID of the Function App Active Slot
	id?: null | string @go(ID,*string)

	// The timestamp of the last successful swap with Production
	// The timestamp of the last successful swap with `Production`
	lastSuccessfulSwap?: null | string @go(LastSuccessfulSwap,*string)

	// The swap action should overwrite the Production slot's network configuration with the configuration from this slot. Defaults to true. Changing this forces a new resource to be created.
	// The swap action should overwrite the Production slot's network configuration with the configuration from this slot. Defaults to `true`.
	overwriteNetworkConfig?: null | bool @go(OverwriteNetworkConfig,*bool)

	// The ID of the Slot to swap with Production.
	// The ID of the Slot to swap with `Production`.
	slotId?: null | string @go(SlotID,*string)
}

#FunctionAppActiveSlotParameters: {
	// The swap action should overwrite the Production slot's network configuration with the configuration from this slot. Defaults to true. Changing this forces a new resource to be created.
	// The swap action should overwrite the Production slot's network configuration with the configuration from this slot. Defaults to `true`.
	// +kubebuilder:validation:Optional
	overwriteNetworkConfig?: null | bool @go(OverwriteNetworkConfig,*bool)

	// The ID of the Slot to swap with Production.
	// The ID of the Slot to swap with `Production`.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/web/v1beta1.WindowsFunctionAppSlot
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	slotId?: null | string @go(SlotID,*string)
}

// FunctionAppActiveSlotSpec defines the desired state of FunctionAppActiveSlot
#FunctionAppActiveSlotSpec: {
	forProvider: #FunctionAppActiveSlotParameters @go(ForProvider)

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
	initProvider?: #FunctionAppActiveSlotInitParameters @go(InitProvider)
}

// FunctionAppActiveSlotStatus defines the observed state of FunctionAppActiveSlot.
#FunctionAppActiveSlotStatus: {
	atProvider?: #FunctionAppActiveSlotObservation @go(AtProvider)
}

// FunctionAppActiveSlot is the Schema for the FunctionAppActiveSlots API. Manages a Function App Active Slot.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#FunctionAppActiveSlot: {
	spec:    #FunctionAppActiveSlotSpec   @go(Spec)
	status?: #FunctionAppActiveSlotStatus @go(Status)
}

// FunctionAppActiveSlotList contains a list of FunctionAppActiveSlots
#FunctionAppActiveSlotList: {
	items: [...#FunctionAppActiveSlot] @go(Items,[]FunctionAppActiveSlot)
}
