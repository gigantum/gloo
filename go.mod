module github.com/solo-io/gloo

go 1.12

require (
	cloud.google.com/go v0.33.1
	contrib.go.opencensus.io/exporter/prometheus v0.1.0
	github.com/Azure/go-ansiterm v0.0.0-20170929234023-d6e3b3328b78
	github.com/Azure/go-autorest v11.1.1+incompatible
	github.com/BurntSushi/toml v0.3.1
	github.com/MakeNowJust/heredoc v0.0.0-20171113091838-e9091a26100e
	github.com/Masterminds/goutils v1.1.0
	github.com/Masterminds/semver v1.4.2
	github.com/Masterminds/sprig v2.18.0+incompatible
	github.com/Netflix/go-expect v0.0.0-20180928190340-9d1f4485533b
	github.com/PuerkitoBio/purell v1.1.0
	github.com/PuerkitoBio/urlesc v0.0.0-20170810143723-de5bf2ad4578
	github.com/Sirupsen/logrus v1.3.0
	github.com/armon/go-metrics v0.0.0-20180917152333-f0300d1749da
	github.com/asaskevich/govalidator v0.0.0-20180315120708-ccb8e960c48f
	github.com/avast/retry-go v2.2.0+incompatible
	github.com/aws/aws-sdk-go v1.20.6
	github.com/beorn7/perks v0.0.0-20180321164747-3a771d992973
	github.com/chai2010/gettext-go v0.0.0-20170215093142-bf70f2a70fb1
	github.com/cpuguy83/go-md2man v1.0.8
	github.com/cyphar/filepath-securejoin v0.2.2
	github.com/davecgh/go-spew v1.1.0
	github.com/dgrijalva/jwt-go v3.2.0+incompatible
	github.com/docker/distribution v2.7.0+incompatible
	github.com/docker/docker v1.13.1
	github.com/docker/spdystream v0.0.0-20181023171402-6480d4af844c
	github.com/emirpasic/gods v1.12.0
	github.com/envoyproxy/go-control-plane v0.8.2
	github.com/envoyproxy/protoc-gen-validate v0.0.6
	github.com/evanphx/json-patch v4.1.0+incompatible
	github.com/exponent-io/jsonpath v0.0.0-20151013193312-d6023ce2651d
	github.com/fatih/camelcase v1.0.0
	github.com/fgrosse/zaptest v1.0.0
	github.com/ghodss/yaml v1.0.0
	github.com/go-openapi/analysis v0.0.0-20180801175213-7c1bef8f6d9f
	github.com/go-openapi/errors v0.0.0-20190617201723-9b273e805998
	github.com/go-openapi/jsonpointer v0.0.0-20180322222829-3a0015ad55fa
	github.com/go-openapi/jsonreference v0.0.0-20180322222742-3fb327e6747d
	github.com/go-openapi/loads v0.19.2
	github.com/go-openapi/runtime v0.0.0-20190718232909-7a84b6517062
	github.com/go-openapi/spec v0.19.2
	github.com/go-openapi/strfmt v0.0.0-20180703152050-913ee058e387
	github.com/go-openapi/swag v0.19.4
	github.com/go-openapi/validate v0.19.2
	github.com/go-swagger/go-swagger v0.19.0
	github.com/gobwas/glob v0.2.3
	github.com/gogo/googleapis v1.0.0
	github.com/gogo/protobuf v1.3.0
	github.com/golang/groupcache v0.0.0-20180924190550-6f2cf27854a4
	github.com/golang/mock v1.2.0
	github.com/golang/protobuf v1.3.1
	github.com/golang/snappy v0.0.0-20180518054509-2e65f85255db
	github.com/google/btree v0.0.0-20180124185431-e89373fe6b4a
	github.com/google/go-cmp v0.3.0
	github.com/google/go-containerregistry v0.0.0-20190619182234-abf9ef06abd9
	github.com/google/go-github v0.0.0-20181122023327-35781f7f4db7
	github.com/google/go-querystring v1.0.0
	github.com/google/gofuzz v0.0.0-20170612174753-24818f796faf
	github.com/google/uuid v1.1.0
	github.com/googleapis/gax-go v1.0.3
	github.com/googleapis/gnostic v0.2.0
	github.com/goph/emperror v0.17.1
	github.com/gophercloud/gophercloud v0.0.0-20190106001728-f27ceddc323f
	github.com/gorilla/context v1.1.1
	github.com/gorilla/mux v1.6.2
	github.com/gregjones/httpcache v0.0.0-20180305231024-9cad4c3443a7
	github.com/grpc-ecosystem/go-grpc-middleware v1.0.0
	github.com/grpc-ecosystem/go-grpc-prometheus v1.2.0
	github.com/hashicorp/consul v1.5.2
	github.com/hashicorp/errwrap v0.0.0-20180715044906-d6c0cd880357
	github.com/hashicorp/go-cleanhttp v0.0.0-20171218145408-d5fe4b57a186
	github.com/hashicorp/go-immutable-radix v1.0.0
	github.com/hashicorp/go-multierror v0.0.0-20180717150148-3d5d8f294aa0
	github.com/hashicorp/go-retryablehttp v0.0.0-20180718195005-e651d75abec6
	github.com/hashicorp/go-rootcerts v0.0.0-20160503143440-6bb64b370b90
	github.com/hashicorp/go-sockaddr v0.0.0-20180320115054-6d291a969b86
	github.com/hashicorp/go-uuid v1.0.1
	github.com/hashicorp/golang-lru v0.0.0-20180201235237-0fb14efe8c47
	github.com/hashicorp/hcl v0.0.0-20180404174102-ef8a98b0bbce
	github.com/hashicorp/serf v0.8.3
	github.com/hashicorp/vault v0.10.4
	github.com/helm/helm v2.13.0+incompatible
	github.com/hinshun/vt10x v0.0.0-20180809195222-d55458df857c
	github.com/hpcloud/tail v0.0.0-20180514194441-a1dbeea552b7
	github.com/huandu/xstrings v1.2.0
	github.com/iancoleman/strcase v0.0.0-20180726023541-3605ed457bf7
	github.com/ilackarms/protoc-gen-doc v1.0.0
	github.com/ilackarms/protokit v0.0.0-20181231193355-ee2393f3bbf0
	github.com/imdario/mergo v0.3.5
	github.com/inconshreveable/go-update v0.0.0-20160112193335-8152e7eb6ccf
	github.com/inconshreveable/mousetrap v1.0.0
	github.com/jbenet/go-context v0.0.0-20150711004518-d14ea06fba99
	github.com/jhump/protoreflect v0.0.0-20180803214909-95c5cbbeaee7
	github.com/jmespath/go-jmespath v0.0.0-20180206201540-c2b33e8439af
	github.com/json-iterator/go v0.0.0-20180701071628-ab8a2e0c74be
	github.com/k0kubun/pp v2.3.0+incompatible
	github.com/kballard/go-shellquote v0.0.0-20180428030007-95032a82bc51
	github.com/kelseyhightower/envconfig v1.4.0
	github.com/kevinburke/ssh_config v0.0.0-20180830205328-81db2a75821e
	github.com/keybase/go-ps v0.0.0-20161005175911-668c8856d999
	github.com/konsorten/go-windows-terminal-sequences v1.0.2
	github.com/kr/pty v1.1.3
	github.com/mailru/easyjson v0.0.0-20180823135443-60711f1a8329
	github.com/mattbaird/jsonpatch v0.0.0-20171005235357-81af80346b1a
	github.com/mattn/go-colorable v0.0.9
	github.com/mattn/go-isatty v0.0.3
	github.com/mattn/go-runewidth v0.0.3
	github.com/matttproud/golang_protobuf_extensions v1.0.1
	github.com/mgutz/ansi v0.0.0-20170206155736-9520e82c474b
	github.com/mitchellh/go-homedir v0.0.0-20180523094522-3864e76763d9
	github.com/mitchellh/go-wordwrap v1.0.0
	github.com/mitchellh/hashstructure v0.0.0-20170609045927-2bca23e0e452
	github.com/mitchellh/mapstructure v0.0.0-20180715050151-f15292f7a699
	github.com/modern-go/concurrent v0.0.0-20180306012644-bacd9c7ef1dd
	github.com/modern-go/reflect2 v0.0.0-20180701023420-4b7aa43c6742
	github.com/olekukonko/tablewriter v0.0.1
	github.com/onsi/ginkgo v1.7.0
	github.com/onsi/gomega v1.7.0
	github.com/opencontainers/go-digest v1.0.0-rc1
	github.com/pelletier/go-buffruneio v0.2.0
	github.com/pelletier/go-toml v1.2.0
	github.com/petar/GoLLRB v0.0.0-20130427215148-53be0d36a84c
	github.com/peterbourgon/diskv v2.0.1+incompatible
	github.com/pkg/errors v0.8.1
	github.com/prometheus/client_golang v0.9.1
	github.com/prometheus/client_model v0.0.0-20180712105110-5c3871d89910
	github.com/prometheus/common v0.0.0-20180801064454-c7de2306084e
	github.com/prometheus/procfs v0.0.0-20180725123919-05ee40e3a273
	github.com/prometheus/prometheus v2.5.0+incompatible
	github.com/pseudomuto/protoc-gen-doc v1.0.0
	github.com/radovskyb/watcher v1.0.2
	github.com/russross/blackfriday v1.5.2
	github.com/ryanuber/go-glob v0.0.0-20160226084822-572520ed46db
	github.com/sergi/go-diff v1.0.0
	github.com/solo-io/envoy-operator v0.1.0
	github.com/solo-io/go-utils v0.10.25
	github.com/solo-io/reporting-client v0.0.2
	github.com/solo-io/solo-kit v0.11.7
	github.com/spf13/afero v1.2.1
	github.com/spf13/cobra v0.0.3
	github.com/spf13/pflag v1.0.1
	github.com/src-d/gcfg v1.4.0
	github.com/technosophos/moniker v0.0.0-20180509230615-a5dbd03a2245
	github.com/xanzy/ssh-agent v0.2.1
	go.opencensus.io v0.22.1
	go.uber.org/atomic v1.3.2
	go.uber.org/multierr v1.1.0
	go.uber.org/zap v1.10.0
	golang.org/x/crypto v0.0.0-20180718160520-a2144134853f
	golang.org/x/exp v0.0.0-20190912063710-ac5d2bfcbfe0
	golang.org/x/lint v0.0.0-20190909230951-414d861bb4ac
	golang.org/x/net v0.0.0-20180816102801-aaf60122140d
	golang.org/x/oauth2 v0.0.0-20181120190819-8f65e3013eba
	golang.org/x/sync v0.0.0-20181221193216-37e7f081c4d4
	golang.org/x/sys v0.0.0-20180715085529-ac767d655b30
	golang.org/x/text v0.3.0
	golang.org/x/time v0.0.0-20180412165947-fbb02b2291d2
	golang.org/x/tools v0.0.0-20190916130336-e45ffcd953cc
	golang.org/x/xerrors v0.0.0-20190717185122-a985d3407aa7
	google.golang.org/api v0.10.0
	google.golang.org/appengine v1.3.0
	google.golang.org/genproto v0.0.0-20180722052100-02b4e9547331
	google.golang.org/grpc v1.13.0
	gopkg.in/AlecAivazis/survey.v1 v1.7.0
	gopkg.in/fsnotify/fsnotify.v1 v1.4.7
	gopkg.in/inf.v0 v0.9.1
	gopkg.in/mgo.v2 v2.0.0-20180705113604-9856a29383ce
	gopkg.in/square/go-jose.v2 v2.2.2
	gopkg.in/src-d/go-billy.v4 v4.3.0
	gopkg.in/src-d/go-git.v4 v4.10.0
	gopkg.in/tomb.v1 v1.0.0-20140529071818-c131134a1947
	gopkg.in/warnings.v0 v0.1.2
	gopkg.in/yaml.v2 v2.2.1
	honnef.co/go/tools v0.0.1-2019.2.3
	istio.io/gogo-genproto v0.0.0-20190614210408-e88dc8b0e4db
	k8s.io/api v0.0.0-20181221193117-173ce66c1e39
	k8s.io/apiextensions-apiserver v0.0.0-20181213153335-0fe22c71c476
	k8s.io/apimachinery v0.0.0-20181127025237-2b1284ed4c93
	k8s.io/apiserver v0.0.0-20181213151703-3ccfe8365421
	k8s.io/cli-runtime v0.0.0-20181128200044-4c1cca297204
	k8s.io/client-go v0.0.0-20181213151034-8d9ed539ba31
	k8s.io/helm v2.12.3+incompatible
	k8s.io/kube-openapi v0.0.0-20180731170545-e3762e86a74c
	k8s.io/kubernetes v1.13.1
	k8s.io/utils v0.0.0-20181221173059-8a16e7dd8fb6
	knative.dev/pkg v0.0.0-20190806155055-a6e24ef7e5b2
	knative.dev/serving v0.8.0
	sigs.k8s.io/controller-runtime v0.2.1
	sigs.k8s.io/yaml v1.1.0
	vbom.ml/util v0.0.0-20180919145318-efcd4e0f9787
)
