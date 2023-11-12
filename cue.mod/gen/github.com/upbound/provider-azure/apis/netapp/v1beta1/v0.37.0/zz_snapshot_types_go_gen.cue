// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/netapp/v1beta1

package v1beta1

#SnapshotInitParameters: {
	// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
	location?: null | string @go(Location,*string)
}

#SnapshotObservation: {
	// The name of the NetApp account in which the NetApp Pool should be created. Changing this forces a new resource to be created.
	accountName?: null | string @go(AccountName,*string)

	// The ID of the NetApp Snapshot.
	id?: null | string @go(ID,*string)

	// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
	location?: null | string @go(Location,*string)

	// The name of the NetApp pool in which the NetApp Volume should be created. Changing this forces a new resource to be created.
	poolName?: null | string @go(PoolName,*string)

	// The name of the resource group where the NetApp Snapshot should be created. Changing this forces a new resource to be created.
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// The name of the NetApp volume in which the NetApp Snapshot should be created. Changing this forces a new resource to be created.
	volumeName?: null | string @go(VolumeName,*string)
}

#SnapshotParameters: {
	// The name of the NetApp account in which the NetApp Pool should be created. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=Account
	// +kubebuilder:validation:Optional
	accountName?: null | string @go(AccountName,*string)

	// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	location?: null | string @go(Location,*string)

	// The name of the NetApp pool in which the NetApp Volume should be created. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=Pool
	// +kubebuilder:validation:Optional
	poolName?: null | string @go(PoolName,*string)

	// The name of the resource group where the NetApp Snapshot should be created. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/azure/v1beta1.ResourceGroup
	// +kubebuilder:validation:Optional
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// The name of the NetApp volume in which the NetApp Snapshot should be created. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=Volume
	// +kubebuilder:validation:Optional
	volumeName?: null | string @go(VolumeName,*string)
}

// SnapshotSpec defines the desired state of Snapshot
#SnapshotSpec: {
	forProvider: #SnapshotParameters @go(ForProvider)

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
	initProvider?: #SnapshotInitParameters @go(InitProvider)
}

// SnapshotStatus defines the observed state of Snapshot.
#SnapshotStatus: {
	atProvider?: #SnapshotObservation @go(AtProvider)
}

// Snapshot is the Schema for the Snapshots API. Manages a NetApp Snapshot.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#Snapshot: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.location) || (has(self.initProvider) && has(self.initProvider.location))",message="spec.forProvider.location is a required parameter"
	spec:    #SnapshotSpec   @go(Spec)
	status?: #SnapshotStatus @go(Status)
}

// SnapshotList contains a list of Snapshots
#SnapshotList: {
	items: [...#Snapshot] @go(Items,[]Snapshot)
}
