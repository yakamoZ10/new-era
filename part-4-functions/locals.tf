locals {
    tags = {
       Name        = "${var.environment}-vpc"
       Environment = var.environment
       Project     = var.project_name
       Owner       = "infrastructure-team"
       ManagedBy   = "terraform"
       Region      = data.aws_region.current.id
       AccountID   = data.aws_caller_identity.current.account_id
    }
    name_prefix = "${var.environment}-"
}

locals {
    common_tags = {
    
       Name        = "${var.environment}-vpc"
       Environment = var.environment
       Project     = var.project_name
       ManagedBy   = "terraform"
       Region      = data.aws_region.current.id
       AccountID   = data.aws_caller_identity.current.account_id
    }
}