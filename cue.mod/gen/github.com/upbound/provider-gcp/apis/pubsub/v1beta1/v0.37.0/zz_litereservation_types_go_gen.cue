// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-gcp/apis/pubsub/v1beta1

package v1beta1

#LiteReservationInitParameters: {
	// The ID of the project in which the resource belongs.
	// If it is not provided, the provider project is used.
	project?: null | string @go(Project,*string)

	// The reserved throughput capacity. Every unit of throughput capacity is
	// equivalent to 1 MiB/s of published messages or 2 MiB/s of subscribed
	// messages.
	throughputCapacity?: null | float64 @go(ThroughputCapacity,*float64)
}

#LiteReservationObservation: {
	// an identifier for the resource with format projects/{{project}}/locations/{{region}}/reservations/{{name}}
	id?: null | string @go(ID,*string)

	// The ID of the project in which the resource belongs.
	// If it is not provided, the provider project is used.
	project?: null | string @go(Project,*string)

	// The region of the pubsub lite reservation.
	region?: null | string @go(Region,*string)

	// The reserved throughput capacity. Every unit of throughput capacity is
	// equivalent to 1 MiB/s of published messages or 2 MiB/s of subscribed
	// messages.
	throughputCapacity?: null | float64 @go(ThroughputCapacity,*float64)
}

#LiteReservationParameters: {
	// The ID of the project in which the resource belongs.
	// If it is not provided, the provider project is used.
	// +kubebuilder:validation:Optional
	project?: null | string @go(Project,*string)

	// The region of the pubsub lite reservation.
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)

	// The reserved throughput capacity. Every unit of throughput capacity is
	// equivalent to 1 MiB/s of published messages or 2 MiB/s of subscribed
	// messages.
	// +kubebuilder:validation:Optional
	throughputCapacity?: null | float64 @go(ThroughputCapacity,*float64)
}

// LiteReservationSpec defines the desired state of LiteReservation
#LiteReservationSpec: {
	forProvider: #LiteReservationParameters @go(ForProvider)

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
	initProvider?: #LiteReservationInitParameters @go(InitProvider)
}

// LiteReservationStatus defines the observed state of LiteReservation.
#LiteReservationStatus: {
	atProvider?: #LiteReservationObservation @go(AtProvider)
}

// LiteReservation is the Schema for the LiteReservations API. A named resource representing a shared pool of capacity.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,gcp}
#LiteReservation: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.throughputCapacity) || (has(self.initProvider) && has(self.initProvider.throughputCapacity))",message="spec.forProvider.throughputCapacity is a required parameter"
	spec:    #LiteReservationSpec   @go(Spec)
	status?: #LiteReservationStatus @go(Status)
}

// LiteReservationList contains a list of LiteReservations
#LiteReservationList: {
	items: [...#LiteReservation] @go(Items,[]LiteReservation)
}
