// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-gcp/apis/bigquery/v1beta1

package v1beta1

#AutoscaleObservation: {
	// (Output)
	// The slot capacity added to this reservation when autoscale happens. Will be between [0, max_slots].
	currentSlots?: null | float64 @go(CurrentSlots,*float64)

	// Number of slots to be scaled when needed.
	maxSlots?: null | float64 @go(MaxSlots,*float64)
}

#AutoscaleParameters: {
	// Number of slots to be scaled when needed.
	// +kubebuilder:validation:Optional
	maxSlots?: null | float64 @go(MaxSlots,*float64)
}

#ReservationObservation: {
	// The configuration parameters for the auto scaling feature.
	// Structure is documented below.
	autoscale?: [...#AutoscaleObservation] @go(Autoscale,[]AutoscaleObservation)

	// Maximum number of queries that are allowed to run concurrently in this reservation. This is a soft limit due to asynchronous nature of the system and various optimizations for small queries. Default value is 0 which means that concurrency will be automatically set based on the reservation size.
	concurrency?: null | float64 @go(Concurrency,*float64)

	// The edition type. Valid values are STANDARD, ENTERPRISE, ENTERPRISE_PLUS
	edition?: null | string @go(Edition,*string)

	// an identifier for the resource with format projects/{{project}}/locations/{{location}}/reservations/{{name}}
	id?: null | string @go(ID,*string)

	// If false, any query using this reservation will use idle slots from other reservations within
	// the same admin project. If true, a query using this reservation will execute with the slot
	// capacity specified above at most.
	ignoreIdleSlots?: null | bool @go(IgnoreIdleSlots,*bool)

	// The geographic location where the transfer config should reside.
	// Examples: US, EU, asia-northeast1. The default value is US.
	location?: null | string @go(Location,*string)

	// Applicable only for reservations located within one of the BigQuery multi-regions (US or EU).
	// If set to true, this reservation is placed in the organization's secondary region which is designated for disaster recovery purposes. If false, this reservation is placed in the organization's default region.
	multiRegionAuxiliary?: null | bool @go(MultiRegionAuxiliary,*bool)

	// The ID of the project in which the resource belongs.
	// If it is not provided, the provider project is used.
	project?: null | string @go(Project,*string)

	// Minimum slots available to this reservation. A slot is a unit of computational power in BigQuery, and serves as the
	// unit of parallelism. Queries using this reservation might use more slots during runtime if ignoreIdleSlots is set to false.
	slotCapacity?: null | float64 @go(SlotCapacity,*float64)
}

#ReservationParameters: {
	// The configuration parameters for the auto scaling feature.
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	autoscale?: [...#AutoscaleParameters] @go(Autoscale,[]AutoscaleParameters)

	// Maximum number of queries that are allowed to run concurrently in this reservation. This is a soft limit due to asynchronous nature of the system and various optimizations for small queries. Default value is 0 which means that concurrency will be automatically set based on the reservation size.
	// +kubebuilder:validation:Optional
	concurrency?: null | float64 @go(Concurrency,*float64)

	// The edition type. Valid values are STANDARD, ENTERPRISE, ENTERPRISE_PLUS
	// +kubebuilder:validation:Optional
	edition?: null | string @go(Edition,*string)

	// If false, any query using this reservation will use idle slots from other reservations within
	// the same admin project. If true, a query using this reservation will execute with the slot
	// capacity specified above at most.
	// +kubebuilder:validation:Optional
	ignoreIdleSlots?: null | bool @go(IgnoreIdleSlots,*bool)

	// The geographic location where the transfer config should reside.
	// Examples: US, EU, asia-northeast1. The default value is US.
	// +kubebuilder:validation:Optional
	location?: null | string @go(Location,*string)

	// Applicable only for reservations located within one of the BigQuery multi-regions (US or EU).
	// If set to true, this reservation is placed in the organization's secondary region which is designated for disaster recovery purposes. If false, this reservation is placed in the organization's default region.
	// +kubebuilder:validation:Optional
	multiRegionAuxiliary?: null | bool @go(MultiRegionAuxiliary,*bool)

	// The ID of the project in which the resource belongs.
	// If it is not provided, the provider project is used.
	// +kubebuilder:validation:Optional
	project?: null | string @go(Project,*string)

	// Minimum slots available to this reservation. A slot is a unit of computational power in BigQuery, and serves as the
	// unit of parallelism. Queries using this reservation might use more slots during runtime if ignoreIdleSlots is set to false.
	// +kubebuilder:validation:Optional
	slotCapacity?: null | float64 @go(SlotCapacity,*float64)
}

// ReservationSpec defines the desired state of Reservation
#ReservationSpec: {
	forProvider: #ReservationParameters @go(ForProvider)
}

// ReservationStatus defines the observed state of Reservation.
#ReservationStatus: {
	atProvider?: #ReservationObservation @go(AtProvider)
}

// Reservation is the Schema for the Reservations API. A reservation is a mechanism used to guarantee BigQuery slots to users.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,gcp}
#Reservation: {
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.slotCapacity)",message="slotCapacity is a required parameter"
	spec:    #ReservationSpec   @go(Spec)
	status?: #ReservationStatus @go(Status)
}

// ReservationList contains a list of Reservations
#ReservationList: {
	items: [...#Reservation] @go(Items,[]Reservation)
}
