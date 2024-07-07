package faker

import (
	"testing"

	"strings"

	"github.com/stretchr/testify/assert"
)

func TestFakeRecordName(t *testing.T) {
	name := Record().Name()
	namePrefix := strings.Split(name, "-")[0]
	assert.Contains(t, names, namePrefix, namePrefix)
}
