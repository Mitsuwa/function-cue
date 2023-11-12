// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-gcp/apis/networkconnectivity/v1beta1

package v1beta1

#HubInitParameters: {
	// An optional description of the hub.
	description?: null | string @go(Description,*string)

	// Optional labels in key:value format. For more information about labels, see Requirements for labels.
	labels?: {[string]: null | string} @go(Labels,map[string]*string)

	// Immutable. The name of the hub. Hub names must be unique. They use the following form: projects/{project_number}/locations/global/hubs/{hub_id}
	name?: null | string @go(Name,*string)

	// The project for the resource
	project?: null | string @go(Project,*string)
}

#HubObservation: {
	// Output only. The time the hub was created.
	createTime?: null | string @go(CreateTime,*string)

	// An optional description of the hub.
	description?: null | string @go(Description,*string)

	// an identifier for the resource with format projects/{{project}}/locations/global/hubs/{{name}}
	id?: null | string @go(ID,*string)

	// Optional labels in key:value format. For more information about labels, see Requirements for labels.
	labels?: {[string]: null | string} @go(Labels,map[string]*string)

	// Immutable. The name of the hub. Hub names must be unique. They use the following form: projects/{project_number}/locations/global/hubs/{hub_id}
	name?: null | string @go(Name,*string)

	// The project for the resource
	project?: null | string @go(Project,*string)

	// The VPC network associated with this hub's spokes. All of the VPN tunnels, VLAN attachments, and router appliance instances referenced by this hub's spokes must belong to this VPC network. This field is read-only. Network Connectivity Center automatically populates it based on the set of spokes attached to the hub.
	routingVpcs?: [...#RoutingVpcsObservation] @go(RoutingVpcs,[]RoutingVpcsObservation)

	// Output only. The current lifecycle state of this hub. Possible values: STATE_UNSPECIFIED, CREATING, ACTIVE, DELETING
	state?: null | string @go(State,*string)

	// Output only. The Google-generated UUID for the hub. This value is unique across all hub resources. If a hub is deleted and another with the same name is created, the new hub is assigned a different unique_id.
	uniqueId?: null | string @go(UniqueID,*string)

	// Output only. The time the hub was last updated.
	updateTime?: null | string @go(UpdateTime,*string)
}

#HubParameters: {
	// An optional description of the hub.
	// +kubebuilder:validation:Optional
	description?: null | string @go(Description,*string)

	// Optional labels in key:value format. For more information about labels, see Requirements for labels.
	// +kubebuilder:validation:Optional
	labels?: {[string]: null | string} @go(Labels,map[string]*string)

	// Immutable. The name of the hub. Hub names must be unique. They use the following form: projects/{project_number}/locations/global/hubs/{hub_id}
	// +kubebuilder:validation:Optional
	name?: null | string @go(Name,*string)

	// The project for the resource
	// +kubebuilder:validation:Optional
	project?: null | string @go(Project,*string)
}

#RoutingVpcsInitParameters: {
}

#RoutingVpcsObservation: {
	uri?: null | string @go(URI,*string)
}

#RoutingVpcsParameters: {
}

// HubSpec defines the desired state of Hub
#HubSpec: {
	forProvider: #HubParameters @go(ForProvider)

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
	initProvider?: #HubInitParameters @go(InitProvider)
}

// HubStatus defines the observed state of Hub.
#HubStatus: {
	atProvider?: #HubObservation @go(AtProvider)
}

// Hub is the Schema for the Hubs API. The NetworkConnectivity Hub resource
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,gcp}
#Hub: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.name) || has(self.initProvider.name)",message="name is a required parameter"
	spec:    #HubSpec   @go(Spec)
	status?: #HubStatus @go(Status)
}

// HubList contains a list of Hubs
#HubList: {
	items: [...#Hub] @go(Items,[]Hub)
}
