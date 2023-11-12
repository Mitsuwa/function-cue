// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/crossplane-contrib/provider-aws/apis/apigatewayv2/v1alpha1

package v1alpha1

// StageParameters defines the desired state of Stage
#StageParameters: {
	// Region is which region the Stage will be created.
	// +kubebuilder:validation:Required
	region:                string                    @go(Region)
	accessLogSettings?:    null | #AccessLogSettings @go(AccessLogSettings,*AccessLogSettings)
	autoDeploy?:           null | bool               @go(AutoDeploy,*bool)
	clientCertificateID?:  null | string             @go(ClientCertificateID,*string)
	defaultRouteSettings?: null | #RouteSettings     @go(DefaultRouteSettings,*RouteSettings)
	deploymentID?:         null | string             @go(DeploymentID,*string)
	description?:          null | string             @go(Description,*string)
	routeSettings?: {[string]: null | #RouteSettings} @go(RouteSettings,map[string]*RouteSettings)
	stageVariables?: {[string]: null | string} @go(StageVariables,map[string]*string)
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	#CustomStageParameters
}

// StageSpec defines the desired state of Stage
#StageSpec: {
	forProvider: #StageParameters @go(ForProvider)
}

// StageObservation defines the observed state of Stage
#StageObservation: {
	apiGatewayManaged?:           null | bool   @go(APIGatewayManaged,*bool)
	lastDeploymentStatusMessage?: null | string @go(LastDeploymentStatusMessage,*string)
	stageName?:                   null | string @go(StageName,*string)
}

// StageStatus defines the observed state of Stage.
#StageStatus: {
	atProvider?: #StageObservation @go(AtProvider)
}

// Stage is the Schema for the Stages API
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:storageversion
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#Stage: {
	spec:    #StageSpec   @go(Spec)
	status?: #StageStatus @go(Status)
}

// StageList contains a list of Stages
#StageList: {
	items: [...#Stage] @go(Items,[]Stage)
}
