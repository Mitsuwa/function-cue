// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-gcp/apis/gkehub/v1beta1

package v1beta1

#AuthorityInitParameters: {
	// A JSON Web Token (JWT) issuer URI. issuer must start with https:// and // be a valid
	// with length <2000 characters. For example: https://container.googleapis.com/v1/projects/my-project/locations/us-west1/clusters/my-cluster (must be locations rather than zones).googleapis.com/v1/${google_container_cluster.my-cluster.id}".
	issuer?: null | string @go(Issuer,*string)
}

#AuthorityObservation: {
	// A JSON Web Token (JWT) issuer URI. issuer must start with https:// and // be a valid
	// with length <2000 characters. For example: https://container.googleapis.com/v1/projects/my-project/locations/us-west1/clusters/my-cluster (must be locations rather than zones).googleapis.com/v1/${google_container_cluster.my-cluster.id}".
	issuer?: null | string @go(Issuer,*string)
}

#AuthorityParameters: {
	// A JSON Web Token (JWT) issuer URI. issuer must start with https:// and // be a valid
	// with length <2000 characters. For example: https://container.googleapis.com/v1/projects/my-project/locations/us-west1/clusters/my-cluster (must be locations rather than zones).googleapis.com/v1/${google_container_cluster.my-cluster.id}".
	// +kubebuilder:validation:Optional
	issuer?: null | string @go(Issuer,*string)
}

#EndpointInitParameters: {
	// If this Membership is a Kubernetes API server hosted on GKE, this is a self link to its GCP resource.
	// Structure is documented below.
	gkeCluster?: [...#GkeClusterInitParameters] @go(GkeCluster,[]GkeClusterInitParameters)
}

#EndpointObservation: {
	// If this Membership is a Kubernetes API server hosted on GKE, this is a self link to its GCP resource.
	// Structure is documented below.
	gkeCluster?: [...#GkeClusterObservation] @go(GkeCluster,[]GkeClusterObservation)
}

#EndpointParameters: {
	// If this Membership is a Kubernetes API server hosted on GKE, this is a self link to its GCP resource.
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	gkeCluster?: [...#GkeClusterParameters] @go(GkeCluster,[]GkeClusterParameters)
}

#GkeClusterInitParameters: {
}

#GkeClusterObservation: {
	// Self-link of the GCP resource for the GKE cluster.
	// For example: //container.googleapis.com/projects/my-project/zones/us-west1-a/clusters/my-cluster.
	// It can be at the most 1000 characters in length.googleapis.com/${google_container_cluster.my-cluster.id}" or
	// google_container_cluster.my-cluster.id.
	resourceLink?: null | string @go(ResourceLink,*string)
}

#GkeClusterParameters: {
	// Self-link of the GCP resource for the GKE cluster.
	// For example: //container.googleapis.com/projects/my-project/zones/us-west1-a/clusters/my-cluster.
	// It can be at the most 1000 characters in length.googleapis.com/${google_container_cluster.my-cluster.id}" or
	// google_container_cluster.my-cluster.id.
	// +crossplane:generate:reference:type=github.com/upbound/provider-gcp/apis/container/v1beta1.Cluster
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	resourceLink?: null | string @go(ResourceLink,*string)
}

#MembershipInitParameters: {
	// Authority encodes how Google will recognize identities from this Membership.
	// See the workload identity documentation for more details:
	// https://cloud.google.com/kubernetes-engine/docs/how-to/workload-identity
	// Structure is documented below.
	authority?: [...#AuthorityInitParameters] @go(Authority,[]AuthorityInitParameters)

	// If this Membership is a Kubernetes API server hosted on GKE, this is a self link to its GCP resource.
	// Structure is documented below.
	endpoint?: [...#EndpointInitParameters] @go(Endpoint,[]EndpointInitParameters)

	// Labels to apply to this membership.
	labels?: {[string]: null | string} @go(Labels,map[string]*string)

	// The ID of the project in which the resource belongs.
	// If it is not provided, the provider project is used.
	project?: null | string @go(Project,*string)
}

#MembershipObservation: {
	// Authority encodes how Google will recognize identities from this Membership.
	// See the workload identity documentation for more details:
	// https://cloud.google.com/kubernetes-engine/docs/how-to/workload-identity
	// Structure is documented below.
	authority?: [...#AuthorityObservation] @go(Authority,[]AuthorityObservation)

	// If this Membership is a Kubernetes API server hosted on GKE, this is a self link to its GCP resource.
	// Structure is documented below.
	endpoint?: [...#EndpointObservation] @go(Endpoint,[]EndpointObservation)

	// an identifier for the resource with format projects/{{project}}/locations/global/memberships/{{membership_id}}
	id?: null | string @go(ID,*string)

	// Labels to apply to this membership.
	labels?: {[string]: null | string} @go(Labels,map[string]*string)

	// The unique identifier of the membership.
	name?: null | string @go(Name,*string)

	// The ID of the project in which the resource belongs.
	// If it is not provided, the provider project is used.
	project?: null | string @go(Project,*string)
}

#MembershipParameters: {
	// Authority encodes how Google will recognize identities from this Membership.
	// See the workload identity documentation for more details:
	// https://cloud.google.com/kubernetes-engine/docs/how-to/workload-identity
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	authority?: [...#AuthorityParameters] @go(Authority,[]AuthorityParameters)

	// If this Membership is a Kubernetes API server hosted on GKE, this is a self link to its GCP resource.
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	endpoint?: [...#EndpointParameters] @go(Endpoint,[]EndpointParameters)

	// Labels to apply to this membership.
	// +kubebuilder:validation:Optional
	labels?: {[string]: null | string} @go(Labels,map[string]*string)

	// The ID of the project in which the resource belongs.
	// If it is not provided, the provider project is used.
	// +kubebuilder:validation:Optional
	project?: null | string @go(Project,*string)
}

// MembershipSpec defines the desired state of Membership
#MembershipSpec: {
	forProvider: #MembershipParameters @go(ForProvider)

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
	initProvider?: #MembershipInitParameters @go(InitProvider)
}

// MembershipStatus defines the observed state of Membership.
#MembershipStatus: {
	atProvider?: #MembershipObservation @go(AtProvider)
}

// Membership is the Schema for the Memberships API. Membership contains information about a member cluster.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,gcp}
#Membership: {
	spec:    #MembershipSpec   @go(Spec)
	status?: #MembershipStatus @go(Status)
}

// MembershipList contains a list of Memberships
#MembershipList: {
	items: [...#Membership] @go(Items,[]Membership)
}
