package faker

import (
	"crypto/rand"
	"fmt"
	"math/big"
	"strings"

	"github.com/lithammer/shortuuid/v3"

	"github.com/hadenlabs/terraform-cloudflare/internal/errors"
)

type FakeRecord interface {
	Name() string // Name server
}

type fakeRecord struct{}

func Record() FakeRecord {
	return fakeRecord{}
}

var (
	names = []string{"optimusprime", "wheeljack", "bumblebee"}
)

func (n fakeRecord) Name() string {
	num, err := rand.Int(rand.Reader, big.NewInt(int64(len(names))))
	if err != nil {
		panic(errors.New(errors.ErrorUnknown, err.Error()))
	}
	nameuuid := strings.ToLower(fmt.Sprintf("%s-%s", names[num.Int64()], shortuuid.New()))
	return nameuuid
}
