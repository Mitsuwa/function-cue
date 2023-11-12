// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/crossplane-contrib/provider-aws/apis/athena/v1alpha1

package v1alpha1

#CalculationExecutionState: string // #enumCalculationExecutionState

#enumCalculationExecutionState:
	#CalculationExecutionState_CREATING |
	#CalculationExecutionState_CREATED |
	#CalculationExecutionState_QUEUED |
	#CalculationExecutionState_RUNNING |
	#CalculationExecutionState_CANCELING |
	#CalculationExecutionState_CANCELED |
	#CalculationExecutionState_COMPLETED |
	#CalculationExecutionState_FAILED

#CalculationExecutionState_CREATING:  #CalculationExecutionState & "CREATING"
#CalculationExecutionState_CREATED:   #CalculationExecutionState & "CREATED"
#CalculationExecutionState_QUEUED:    #CalculationExecutionState & "QUEUED"
#CalculationExecutionState_RUNNING:   #CalculationExecutionState & "RUNNING"
#CalculationExecutionState_CANCELING: #CalculationExecutionState & "CANCELING"
#CalculationExecutionState_CANCELED:  #CalculationExecutionState & "CANCELED"
#CalculationExecutionState_COMPLETED: #CalculationExecutionState & "COMPLETED"
#CalculationExecutionState_FAILED:    #CalculationExecutionState & "FAILED"

#CapacityAllocationStatus: string // #enumCapacityAllocationStatus

#enumCapacityAllocationStatus:
	#CapacityAllocationStatus_PENDING |
	#CapacityAllocationStatus_SUCCEEDED |
	#CapacityAllocationStatus_FAILED

#CapacityAllocationStatus_PENDING:   #CapacityAllocationStatus & "PENDING"
#CapacityAllocationStatus_SUCCEEDED: #CapacityAllocationStatus & "SUCCEEDED"
#CapacityAllocationStatus_FAILED:    #CapacityAllocationStatus & "FAILED"

#CapacityReservationStatus: string // #enumCapacityReservationStatus

#enumCapacityReservationStatus:
	#CapacityReservationStatus_PENDING |
	#CapacityReservationStatus_ACTIVE |
	#CapacityReservationStatus_CANCELLING |
	#CapacityReservationStatus_CANCELLED |
	#CapacityReservationStatus_FAILED |
	#CapacityReservationStatus_UPDATE_PENDING

#CapacityReservationStatus_PENDING:        #CapacityReservationStatus & "PENDING"
#CapacityReservationStatus_ACTIVE:         #CapacityReservationStatus & "ACTIVE"
#CapacityReservationStatus_CANCELLING:     #CapacityReservationStatus & "CANCELLING"
#CapacityReservationStatus_CANCELLED:      #CapacityReservationStatus & "CANCELLED"
#CapacityReservationStatus_FAILED:         #CapacityReservationStatus & "FAILED"
#CapacityReservationStatus_UPDATE_PENDING: #CapacityReservationStatus & "UPDATE_PENDING"

#ColumnNullable: string // #enumColumnNullable

#enumColumnNullable:
	#ColumnNullable_NOT_NULL |
	#ColumnNullable_NULLABLE |
	#ColumnNullable_UNKNOWN

#ColumnNullable_NOT_NULL: #ColumnNullable & "NOT_NULL"
#ColumnNullable_NULLABLE: #ColumnNullable & "NULLABLE"
#ColumnNullable_UNKNOWN:  #ColumnNullable & "UNKNOWN"

#DataCatalogType: string // #enumDataCatalogType

#enumDataCatalogType:
	#DataCatalogType_LAMBDA |
	#DataCatalogType_GLUE |
	#DataCatalogType_HIVE

#DataCatalogType_LAMBDA: #DataCatalogType & "LAMBDA"
#DataCatalogType_GLUE:   #DataCatalogType & "GLUE"
#DataCatalogType_HIVE:   #DataCatalogType & "HIVE"

#EncryptionOption: string // #enumEncryptionOption

#enumEncryptionOption:
	#EncryptionOption_SSE_S3 |
	#EncryptionOption_SSE_KMS |
	#EncryptionOption_CSE_KMS

#EncryptionOption_SSE_S3:  #EncryptionOption & "SSE_S3"
#EncryptionOption_SSE_KMS: #EncryptionOption & "SSE_KMS"
#EncryptionOption_CSE_KMS: #EncryptionOption & "CSE_KMS"

#ExecutorState: string // #enumExecutorState

#enumExecutorState:
	#ExecutorState_CREATING |
	#ExecutorState_CREATED |
	#ExecutorState_REGISTERED |
	#ExecutorState_TERMINATING |
	#ExecutorState_TERMINATED |
	#ExecutorState_FAILED

#ExecutorState_CREATING:    #ExecutorState & "CREATING"
#ExecutorState_CREATED:     #ExecutorState & "CREATED"
#ExecutorState_REGISTERED:  #ExecutorState & "REGISTERED"
#ExecutorState_TERMINATING: #ExecutorState & "TERMINATING"
#ExecutorState_TERMINATED:  #ExecutorState & "TERMINATED"
#ExecutorState_FAILED:      #ExecutorState & "FAILED"

#ExecutorType: string // #enumExecutorType

#enumExecutorType:
	#ExecutorType_COORDINATOR |
	#ExecutorType_GATEWAY |
	#ExecutorType_WORKER

#ExecutorType_COORDINATOR: #ExecutorType & "COORDINATOR"
#ExecutorType_GATEWAY:     #ExecutorType & "GATEWAY"
#ExecutorType_WORKER:      #ExecutorType & "WORKER"

#NotebookType: string // #enumNotebookType

#enumNotebookType:
	#NotebookType_IPYNB

#NotebookType_IPYNB: #NotebookType & "IPYNB"

#QueryExecutionState: string // #enumQueryExecutionState

#enumQueryExecutionState:
	#QueryExecutionState_QUEUED |
	#QueryExecutionState_RUNNING |
	#QueryExecutionState_SUCCEEDED |
	#QueryExecutionState_FAILED |
	#QueryExecutionState_CANCELLED

#QueryExecutionState_QUEUED:    #QueryExecutionState & "QUEUED"
#QueryExecutionState_RUNNING:   #QueryExecutionState & "RUNNING"
#QueryExecutionState_SUCCEEDED: #QueryExecutionState & "SUCCEEDED"
#QueryExecutionState_FAILED:    #QueryExecutionState & "FAILED"
#QueryExecutionState_CANCELLED: #QueryExecutionState & "CANCELLED"

#S3ACLOption: string // #enumS3ACLOption

#enumS3ACLOption:
	#S3ACLOption_BUCKET_OWNER_FULL_CONTROL

#S3ACLOption_BUCKET_OWNER_FULL_CONTROL: #S3ACLOption & "BUCKET_OWNER_FULL_CONTROL"

#SessionState: string // #enumSessionState

#enumSessionState:
	#SessionState_CREATING |
	#SessionState_CREATED |
	#SessionState_IDLE |
	#SessionState_BUSY |
	#SessionState_TERMINATING |
	#SessionState_TERMINATED |
	#SessionState_DEGRADED |
	#SessionState_FAILED

#SessionState_CREATING:    #SessionState & "CREATING"
#SessionState_CREATED:     #SessionState & "CREATED"
#SessionState_IDLE:        #SessionState & "IDLE"
#SessionState_BUSY:        #SessionState & "BUSY"
#SessionState_TERMINATING: #SessionState & "TERMINATING"
#SessionState_TERMINATED:  #SessionState & "TERMINATED"
#SessionState_DEGRADED:    #SessionState & "DEGRADED"
#SessionState_FAILED:      #SessionState & "FAILED"

#StatementType: string // #enumStatementType

#enumStatementType:
	#StatementType_DDL |
	#StatementType_DML |
	#StatementType_UTILITY

#StatementType_DDL:     #StatementType & "DDL"
#StatementType_DML:     #StatementType & "DML"
#StatementType_UTILITY: #StatementType & "UTILITY"

#ThrottleReason: string // #enumThrottleReason

#enumThrottleReason:
	#ThrottleReason_CONCURRENT_QUERY_LIMIT_EXCEEDED

#ThrottleReason_CONCURRENT_QUERY_LIMIT_EXCEEDED: #ThrottleReason & "CONCURRENT_QUERY_LIMIT_EXCEEDED"

#WorkGroupState: string // #enumWorkGroupState

#enumWorkGroupState:
	#WorkGroupState_ENABLED |
	#WorkGroupState_DISABLED

#WorkGroupState_ENABLED:  #WorkGroupState & "ENABLED"
#WorkGroupState_DISABLED: #WorkGroupState & "DISABLED"
