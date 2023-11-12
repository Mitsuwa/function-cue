// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/location/v1beta1

package v1beta1

#GeofenceCollectionObservation: {
	// The Amazon Resource Name (ARN) for the geofence collection resource. Used when you need to specify a resource across all AWS.
	collectionArn?: null | string @go(CollectionArn,*string)

	// The timestamp for when the geofence collection resource was created in ISO 8601 format.
	createTime?: null | string @go(CreateTime,*string)
	id?:         null | string @go(ID,*string)
	tagsAll?: {[string]: null | string} @go(TagsAll,map[string]*string)

	// The timestamp for when the geofence collection resource was last updated in ISO 8601 format.
	updateTime?: null | string @go(UpdateTime,*string)
}

#GeofenceCollectionParameters: {
	// The optional description for the geofence collection.
	// +kubebuilder:validation:Optional
	description?: null | string @go(Description,*string)

	// A key identifier for an AWS KMS customer managed key assigned to the Amazon Location resource.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/kms/v1beta1.Key
	// +kubebuilder:validation:Optional
	kmsKeyId?: null | string @go(KMSKeyID,*string)

	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)

	// Key-value map of resource tags.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

// GeofenceCollectionSpec defines the desired state of GeofenceCollection
#GeofenceCollectionSpec: {
	forProvider: #GeofenceCollectionParameters @go(ForProvider)
}

// GeofenceCollectionStatus defines the observed state of GeofenceCollection.
#GeofenceCollectionStatus: {
	atProvider?: #GeofenceCollectionObservation @go(AtProvider)
}

// GeofenceCollection is the Schema for the GeofenceCollections API.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#GeofenceCollection: {
	spec:    #GeofenceCollectionSpec   @go(Spec)
	status?: #GeofenceCollectionStatus @go(Status)
}

// GeofenceCollectionList contains a list of GeofenceCollections
#GeofenceCollectionList: {
	items: [...#GeofenceCollection] @go(Items,[]GeofenceCollection)
}
