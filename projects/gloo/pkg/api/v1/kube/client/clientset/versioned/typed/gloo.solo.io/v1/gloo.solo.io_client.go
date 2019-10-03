/*
Copyright The Kubernetes Authors.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
*/

// Code generated by client-gen. DO NOT EDIT.

package v1

import (
	v1 "github.com/solo-io/gloo/projects/gloo/pkg/api/v1/kube/apis/gloo.solo.io/v1"
	"github.com/solo-io/gloo/projects/gloo/pkg/api/v1/kube/client/clientset/versioned/scheme"
	serializer "k8s.io/apimachinery/pkg/runtime/serializer"
	rest "k8s.io/client-go/rest"
)

type GlooV1Interface interface {
	RESTClient() rest.Interface
	ArtifactsGetter
	EndpointsGetter
	ProxiesGetter
	SecretsGetter
	SettingsesGetter
	UpstreamsGetter
	UpstreamGroupsGetter
}

// GlooV1Client is used to interact with features provided by the gloo.solo.io group.
type GlooV1Client struct {
	restClient rest.Interface
}

func (c *GlooV1Client) Artifacts(namespace string) ArtifactInterface {
	return newArtifacts(c, namespace)
}

func (c *GlooV1Client) Endpoints(namespace string) EndpointInterface {
	return newEndpoints(c, namespace)
}

func (c *GlooV1Client) Proxies(namespace string) ProxyInterface {
	return newProxies(c, namespace)
}

func (c *GlooV1Client) Secrets(namespace string) SecretInterface {
	return newSecrets(c, namespace)
}

func (c *GlooV1Client) Settingses(namespace string) SettingsInterface {
	return newSettingses(c, namespace)
}

func (c *GlooV1Client) Upstreams(namespace string) UpstreamInterface {
	return newUpstreams(c, namespace)
}

func (c *GlooV1Client) UpstreamGroups(namespace string) UpstreamGroupInterface {
	return newUpstreamGroups(c, namespace)
}

// NewForConfig creates a new GlooV1Client for the given config.
func NewForConfig(c *rest.Config) (*GlooV1Client, error) {
	config := *c
	if err := setConfigDefaults(&config); err != nil {
		return nil, err
	}
	client, err := rest.RESTClientFor(&config)
	if err != nil {
		return nil, err
	}
	return &GlooV1Client{client}, nil
}

// NewForConfigOrDie creates a new GlooV1Client for the given config and
// panics if there is an error in the config.
func NewForConfigOrDie(c *rest.Config) *GlooV1Client {
	client, err := NewForConfig(c)
	if err != nil {
		panic(err)
	}
	return client
}

// New creates a new GlooV1Client for the given RESTClient.
func New(c rest.Interface) *GlooV1Client {
	return &GlooV1Client{c}
}

func setConfigDefaults(config *rest.Config) error {
	gv := v1.SchemeGroupVersion
	config.GroupVersion = &gv
	config.APIPath = "/apis"
	config.NegotiatedSerializer = serializer.DirectCodecFactory{CodecFactory: scheme.Codecs}

	if config.UserAgent == "" {
		config.UserAgent = rest.DefaultKubernetesUserAgent()
	}

	return nil
}

// RESTClient returns a RESTClient that is used to communicate
// with API server by this client implementation.
func (c *GlooV1Client) RESTClient() rest.Interface {
	if c == nil {
		return nil
	}
	return c.restClient
}
