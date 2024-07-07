package test

import (
	"testing"

	"github.com/gruntwork-io/terratest/modules/terraform"
	"github.com/stretchr/testify/assert"

	"os"

	"github.com/hadenlabs/terraform-cloudflare/internal/app/external/faker"
)

func TestBasicSuccess(t *testing.T) {
	t.Parallel()
	zone := os.Getenv("CLOUDFLARE_ZONE")
	name := faker.Record().Name()

	terraformOptions := &terraform.Options{
		// The path to where your Terraform code is located
		TerraformDir: "record-basic",
		Upgrade:      true,
		Vars: map[string]interface{}{
			"name":  name,
			"zone":  zone,
			"value": "190.239.55.196",
		},
	}

	// At the end of the test, run `terraform destroy` to clean up any resources that were created
	defer terraform.Destroy(t, terraformOptions)

	// This will run `terraform init` and `terraform apply` and fail the test if there are any errors
	terraform.InitAndApply(t, terraformOptions)
	outputID := terraform.Output(t, terraformOptions, "id")
	assert.NotEmpty(t, outputID, outputID)
}
