// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/networkmanager/v1beta1

package v1beta1

#SiteLocationObservation: {
	// Address of the location.
	address?: null | string @go(Address,*string)

	// Latitude of the location.
	latitude?: null | string @go(Latitude,*string)

	// Longitude of the location.
	longitude?: null | string @go(Longitude,*string)
}

#SiteLocationParameters: {
	// Address of the location.
	// +kubebuilder:validation:Optional
	address?: null | string @go(Address,*string)

	// Latitude of the location.
	// +kubebuilder:validation:Optional
	latitude?: null | string @go(Latitude,*string)

	// Longitude of the location.
	// +kubebuilder:validation:Optional
	longitude?: null | string @go(Longitude,*string)
}

#SiteObservation: {
	// Site Amazon Resource Name (ARN)
	arn?: null | string @go(Arn,*string)

	// Description of the Site.
	description?: null | string @go(Description,*string)

	// The ID of the Global Network to create the site in.
	globalNetworkId?: null | string @go(GlobalNetworkID,*string)
	id?:              null | string @go(ID,*string)

	// The site location as documented below.
	location?: [...#SiteLocationObservation] @go(Location,[]SiteLocationObservation)

	// Key-value map of resource tags.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.
	tagsAll?: {[string]: null | string} @go(TagsAll,map[string]*string)
}

#SiteParameters: {
	// Description of the Site.
	// +kubebuilder:validation:Optional
	description?: null | string @go(Description,*string)

	// The ID of the Global Network to create the site in.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/networkmanager/v1beta1.GlobalNetwork
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	globalNetworkId?: null | string @go(GlobalNetworkID,*string)

	// The site location as documented below.
	// +kubebuilder:validation:Optional
	location?: [...#SiteLocationParameters] @go(Location,[]SiteLocationParameters)

	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)

	// Key-value map of resource tags.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

// SiteSpec defines the desired state of Site
#SiteSpec: {
	forProvider: #SiteParameters @go(ForProvider)
}

// SiteStatus defines the observed state of Site.
#SiteStatus: {
	atProvider?: #SiteObservation @go(AtProvider)
}

// Site is the Schema for the Sites API. Creates a site in a global network.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#Site: {
	spec:    #SiteSpec   @go(Spec)
	status?: #SiteStatus @go(Status)
}

// SiteList contains a list of Sites
#SiteList: {
	items: [...#Site] @go(Items,[]Site)
}
