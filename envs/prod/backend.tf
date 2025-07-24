terraform { 
  cloud { 
    
    organization = "aws-account-organization" 

    workspaces { 
      name = "aws-s3-deployment-test" 
    } 
  } 
}