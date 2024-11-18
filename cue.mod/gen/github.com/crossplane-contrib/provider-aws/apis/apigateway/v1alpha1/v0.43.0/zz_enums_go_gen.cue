// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/crossplane-contrib/provider-aws/apis/apigateway/v1alpha1

package v1alpha1

#APIKeySourceType: string // #enumAPIKeySourceType

#enumAPIKeySourceType:
	#APIKeySourceType_HEADER |
	#APIKeySourceType_AUTHORIZER

#APIKeySourceType_HEADER:     #APIKeySourceType & "HEADER"
#APIKeySourceType_AUTHORIZER: #APIKeySourceType & "AUTHORIZER"

#APIKeysFormat: string // #enumAPIKeysFormat

#enumAPIKeysFormat:
	#APIKeysFormat_csv

#APIKeysFormat_csv: #APIKeysFormat & "csv"

#AuthorizerType: string // #enumAuthorizerType

#enumAuthorizerType:
	#AuthorizerType_TOKEN |
	#AuthorizerType_REQUEST |
	#AuthorizerType_COGNITO_USER_POOLS

#AuthorizerType_TOKEN:              #AuthorizerType & "TOKEN"
#AuthorizerType_REQUEST:            #AuthorizerType & "REQUEST"
#AuthorizerType_COGNITO_USER_POOLS: #AuthorizerType & "COGNITO_USER_POOLS"

#CacheClusterSize: string // #enumCacheClusterSize

#enumCacheClusterSize:
	#CacheClusterSize_0_5 |
	#CacheClusterSize_1_6 |
	#CacheClusterSize_6_1 |
	#CacheClusterSize_13_5 |
	#CacheClusterSize_28_4 |
	#CacheClusterSize_58_2 |
	#CacheClusterSize_118 |
	#CacheClusterSize_237

#CacheClusterSize_0_5:  #CacheClusterSize & "0.5"
#CacheClusterSize_1_6:  #CacheClusterSize & "1.6"
#CacheClusterSize_6_1:  #CacheClusterSize & "6.1"
#CacheClusterSize_13_5: #CacheClusterSize & "13.5"
#CacheClusterSize_28_4: #CacheClusterSize & "28.4"
#CacheClusterSize_58_2: #CacheClusterSize & "58.2"
#CacheClusterSize_118:  #CacheClusterSize & "118"
#CacheClusterSize_237:  #CacheClusterSize & "237"

#CacheClusterStatus: string // #enumCacheClusterStatus

#enumCacheClusterStatus:
	#CacheClusterStatus_CREATE_IN_PROGRESS |
	#CacheClusterStatus_AVAILABLE |
	#CacheClusterStatus_DELETE_IN_PROGRESS |
	#CacheClusterStatus_NOT_AVAILABLE |
	#CacheClusterStatus_FLUSH_IN_PROGRESS

#CacheClusterStatus_CREATE_IN_PROGRESS: #CacheClusterStatus & "CREATE_IN_PROGRESS"
#CacheClusterStatus_AVAILABLE:          #CacheClusterStatus & "AVAILABLE"
#CacheClusterStatus_DELETE_IN_PROGRESS: #CacheClusterStatus & "DELETE_IN_PROGRESS"
#CacheClusterStatus_NOT_AVAILABLE:      #CacheClusterStatus & "NOT_AVAILABLE"
#CacheClusterStatus_FLUSH_IN_PROGRESS:  #CacheClusterStatus & "FLUSH_IN_PROGRESS"

#ConnectionType: string // #enumConnectionType

#enumConnectionType:
	#ConnectionType_INTERNET |
	#ConnectionType_VPC_LINK

#ConnectionType_INTERNET: #ConnectionType & "INTERNET"
#ConnectionType_VPC_LINK: #ConnectionType & "VPC_LINK"

#ContentHandlingStrategy: string // #enumContentHandlingStrategy

#enumContentHandlingStrategy:
	#ContentHandlingStrategy_CONVERT_TO_BINARY |
	#ContentHandlingStrategy_CONVERT_TO_TEXT

#ContentHandlingStrategy_CONVERT_TO_BINARY: #ContentHandlingStrategy & "CONVERT_TO_BINARY"
#ContentHandlingStrategy_CONVERT_TO_TEXT:   #ContentHandlingStrategy & "CONVERT_TO_TEXT"

#DocumentationPartType: string // #enumDocumentationPartType

#enumDocumentationPartType:
	#DocumentationPartType_API |
	#DocumentationPartType_AUTHORIZER |
	#DocumentationPartType_MODEL |
	#DocumentationPartType_RESOURCE |
	#DocumentationPartType_METHOD |
	#DocumentationPartType_PATH_PARAMETER |
	#DocumentationPartType_QUERY_PARAMETER |
	#DocumentationPartType_REQUEST_HEADER |
	#DocumentationPartType_REQUEST_BODY |
	#DocumentationPartType_RESPONSE |
	#DocumentationPartType_RESPONSE_HEADER |
	#DocumentationPartType_RESPONSE_BODY

#DocumentationPartType_API:             #DocumentationPartType & "API"
#DocumentationPartType_AUTHORIZER:      #DocumentationPartType & "AUTHORIZER"
#DocumentationPartType_MODEL:           #DocumentationPartType & "MODEL"
#DocumentationPartType_RESOURCE:        #DocumentationPartType & "RESOURCE"
#DocumentationPartType_METHOD:          #DocumentationPartType & "METHOD"
#DocumentationPartType_PATH_PARAMETER:  #DocumentationPartType & "PATH_PARAMETER"
#DocumentationPartType_QUERY_PARAMETER: #DocumentationPartType & "QUERY_PARAMETER"
#DocumentationPartType_REQUEST_HEADER:  #DocumentationPartType & "REQUEST_HEADER"
#DocumentationPartType_REQUEST_BODY:    #DocumentationPartType & "REQUEST_BODY"
#DocumentationPartType_RESPONSE:        #DocumentationPartType & "RESPONSE"
#DocumentationPartType_RESPONSE_HEADER: #DocumentationPartType & "RESPONSE_HEADER"
#DocumentationPartType_RESPONSE_BODY:   #DocumentationPartType & "RESPONSE_BODY"

#DomainNameStatus_SDK: string // #enumDomainNameStatus_SDK

#enumDomainNameStatus_SDK:
	#DomainNameStatus_SDK_AVAILABLE |
	#DomainNameStatus_SDK_UPDATING |
	#DomainNameStatus_SDK_PENDING |
	#DomainNameStatus_SDK_PENDING_CERTIFICATE_REIMPORT |
	#DomainNameStatus_SDK_PENDING_OWNERSHIP_VERIFICATION

#DomainNameStatus_SDK_AVAILABLE:                      #DomainNameStatus_SDK & "AVAILABLE"
#DomainNameStatus_SDK_UPDATING:                       #DomainNameStatus_SDK & "UPDATING"
#DomainNameStatus_SDK_PENDING:                        #DomainNameStatus_SDK & "PENDING"
#DomainNameStatus_SDK_PENDING_CERTIFICATE_REIMPORT:   #DomainNameStatus_SDK & "PENDING_CERTIFICATE_REIMPORT"
#DomainNameStatus_SDK_PENDING_OWNERSHIP_VERIFICATION: #DomainNameStatus_SDK & "PENDING_OWNERSHIP_VERIFICATION"

#EndpointType: string // #enumEndpointType

#enumEndpointType:
	#EndpointType_REGIONAL |
	#EndpointType_EDGE |
	#EndpointType_PRIVATE

#EndpointType_REGIONAL: #EndpointType & "REGIONAL"
#EndpointType_EDGE:     #EndpointType & "EDGE"
#EndpointType_PRIVATE:  #EndpointType & "PRIVATE"

#GatewayResponseType: string // #enumGatewayResponseType

#enumGatewayResponseType:
	#GatewayResponseType_DEFAULT_4XX |
	#GatewayResponseType_DEFAULT_5XX |
	#GatewayResponseType_RESOURCE_NOT_FOUND |
	#GatewayResponseType_UNAUTHORIZED |
	#GatewayResponseType_INVALID_API_KEY |
	#GatewayResponseType_ACCESS_DENIED |
	#GatewayResponseType_AUTHORIZER_FAILURE |
	#GatewayResponseType_AUTHORIZER_CONFIGURATION_ERROR |
	#GatewayResponseType_INVALID_SIGNATURE |
	#GatewayResponseType_EXPIRED_TOKEN |
	#GatewayResponseType_MISSING_AUTHENTICATION_TOKEN |
	#GatewayResponseType_INTEGRATION_FAILURE |
	#GatewayResponseType_INTEGRATION_TIMEOUT |
	#GatewayResponseType_API_CONFIGURATION_ERROR |
	#GatewayResponseType_UNSUPPORTED_MEDIA_TYPE |
	#GatewayResponseType_BAD_REQUEST_PARAMETERS |
	#GatewayResponseType_BAD_REQUEST_BODY |
	#GatewayResponseType_REQUEST_TOO_LARGE |
	#GatewayResponseType_THROTTLED |
	#GatewayResponseType_QUOTA_EXCEEDED |
	#GatewayResponseType_WAF_FILTERED

#GatewayResponseType_DEFAULT_4XX:                    #GatewayResponseType & "DEFAULT_4XX"
#GatewayResponseType_DEFAULT_5XX:                    #GatewayResponseType & "DEFAULT_5XX"
#GatewayResponseType_RESOURCE_NOT_FOUND:             #GatewayResponseType & "RESOURCE_NOT_FOUND"
#GatewayResponseType_UNAUTHORIZED:                   #GatewayResponseType & "UNAUTHORIZED"
#GatewayResponseType_INVALID_API_KEY:                #GatewayResponseType & "INVALID_API_KEY"
#GatewayResponseType_ACCESS_DENIED:                  #GatewayResponseType & "ACCESS_DENIED"
#GatewayResponseType_AUTHORIZER_FAILURE:             #GatewayResponseType & "AUTHORIZER_FAILURE"
#GatewayResponseType_AUTHORIZER_CONFIGURATION_ERROR: #GatewayResponseType & "AUTHORIZER_CONFIGURATION_ERROR"
#GatewayResponseType_INVALID_SIGNATURE:              #GatewayResponseType & "INVALID_SIGNATURE"
#GatewayResponseType_EXPIRED_TOKEN:                  #GatewayResponseType & "EXPIRED_TOKEN"
#GatewayResponseType_MISSING_AUTHENTICATION_TOKEN:   #GatewayResponseType & "MISSING_AUTHENTICATION_TOKEN"
#GatewayResponseType_INTEGRATION_FAILURE:            #GatewayResponseType & "INTEGRATION_FAILURE"
#GatewayResponseType_INTEGRATION_TIMEOUT:            #GatewayResponseType & "INTEGRATION_TIMEOUT"
#GatewayResponseType_API_CONFIGURATION_ERROR:        #GatewayResponseType & "API_CONFIGURATION_ERROR"
#GatewayResponseType_UNSUPPORTED_MEDIA_TYPE:         #GatewayResponseType & "UNSUPPORTED_MEDIA_TYPE"
#GatewayResponseType_BAD_REQUEST_PARAMETERS:         #GatewayResponseType & "BAD_REQUEST_PARAMETERS"
#GatewayResponseType_BAD_REQUEST_BODY:               #GatewayResponseType & "BAD_REQUEST_BODY"
#GatewayResponseType_REQUEST_TOO_LARGE:              #GatewayResponseType & "REQUEST_TOO_LARGE"
#GatewayResponseType_THROTTLED:                      #GatewayResponseType & "THROTTLED"
#GatewayResponseType_QUOTA_EXCEEDED:                 #GatewayResponseType & "QUOTA_EXCEEDED"
#GatewayResponseType_WAF_FILTERED:                   #GatewayResponseType & "WAF_FILTERED"

#IntegrationType: string // #enumIntegrationType

#enumIntegrationType:
	#IntegrationType_HTTP |
	#IntegrationType_AWS |
	#IntegrationType_MOCK |
	#IntegrationType_HTTP_PROXY |
	#IntegrationType_AWS_PROXY

#IntegrationType_HTTP:       #IntegrationType & "HTTP"
#IntegrationType_AWS:        #IntegrationType & "AWS"
#IntegrationType_MOCK:       #IntegrationType & "MOCK"
#IntegrationType_HTTP_PROXY: #IntegrationType & "HTTP_PROXY"
#IntegrationType_AWS_PROXY:  #IntegrationType & "AWS_PROXY"

#LocationStatusType: string // #enumLocationStatusType

#enumLocationStatusType:
	#LocationStatusType_DOCUMENTED |
	#LocationStatusType_UNDOCUMENTED

#LocationStatusType_DOCUMENTED:   #LocationStatusType & "DOCUMENTED"
#LocationStatusType_UNDOCUMENTED: #LocationStatusType & "UNDOCUMENTED"

#Op: string // #enumOp

#enumOp:
	#Op_add |
	#Op_remove |
	#Op_replace |
	#Op_move |
	#Op_copy |
	#Op_test

#Op_add:     #Op & "add"
#Op_remove:  #Op & "remove"
#Op_replace: #Op & "replace"
#Op_move:    #Op & "move"
#Op_copy:    #Op & "copy"
#Op_test:    #Op & "test"

#PutMode: string // #enumPutMode

#enumPutMode:
	#PutMode_merge |
	#PutMode_overwrite

#PutMode_merge:     #PutMode & "merge"
#PutMode_overwrite: #PutMode & "overwrite"

#QuotaPeriodType: string // #enumQuotaPeriodType

#enumQuotaPeriodType:
	#QuotaPeriodType_DAY |
	#QuotaPeriodType_WEEK |
	#QuotaPeriodType_MONTH

#QuotaPeriodType_DAY:   #QuotaPeriodType & "DAY"
#QuotaPeriodType_WEEK:  #QuotaPeriodType & "WEEK"
#QuotaPeriodType_MONTH: #QuotaPeriodType & "MONTH"

#SecurityPolicy: string // #enumSecurityPolicy

#enumSecurityPolicy:
	#SecurityPolicy_TLS_1_0 |
	#SecurityPolicy_TLS_1_2

#SecurityPolicy_TLS_1_0: #SecurityPolicy & "TLS_1_0"
#SecurityPolicy_TLS_1_2: #SecurityPolicy & "TLS_1_2"

#UnauthorizedCacheControlHeaderStrategy: string // #enumUnauthorizedCacheControlHeaderStrategy

#enumUnauthorizedCacheControlHeaderStrategy:
	#UnauthorizedCacheControlHeaderStrategy_FAIL_WITH_403 |
	#UnauthorizedCacheControlHeaderStrategy_SUCCEED_WITH_RESPONSE_HEADER |
	#UnauthorizedCacheControlHeaderStrategy_SUCCEED_WITHOUT_RESPONSE_HEADER

#UnauthorizedCacheControlHeaderStrategy_FAIL_WITH_403:                   #UnauthorizedCacheControlHeaderStrategy & "FAIL_WITH_403"
#UnauthorizedCacheControlHeaderStrategy_SUCCEED_WITH_RESPONSE_HEADER:    #UnauthorizedCacheControlHeaderStrategy & "SUCCEED_WITH_RESPONSE_HEADER"
#UnauthorizedCacheControlHeaderStrategy_SUCCEED_WITHOUT_RESPONSE_HEADER: #UnauthorizedCacheControlHeaderStrategy & "SUCCEED_WITHOUT_RESPONSE_HEADER"

#VPCLinkStatus_SDK: string // #enumVPCLinkStatus_SDK

#enumVPCLinkStatus_SDK:
	#VPCLinkStatus_SDK_AVAILABLE |
	#VPCLinkStatus_SDK_PENDING |
	#VPCLinkStatus_SDK_DELETING |
	#VPCLinkStatus_SDK_FAILED

#VPCLinkStatus_SDK_AVAILABLE: #VPCLinkStatus_SDK & "AVAILABLE"
#VPCLinkStatus_SDK_PENDING:   #VPCLinkStatus_SDK & "PENDING"
#VPCLinkStatus_SDK_DELETING:  #VPCLinkStatus_SDK & "DELETING"
#VPCLinkStatus_SDK_FAILED:    #VPCLinkStatus_SDK & "FAILED"
