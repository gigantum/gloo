
---
title: "route_table.proto"
weight: 5
---

<!-- Code generated by solo-kit. DO NOT EDIT. -->


### Package: `gateway.solo.io` 
#### Types:


- [RouteTable](#routetable) **Top-Level Resource**
  



##### Source File: [github.com/solo-io/gloo/projects/gateway/api/v1/route_table.proto](https://github.com/solo-io/gloo/blob/master/projects/gateway/api/v1/route_table.proto)





---
### RouteTable

 
The **RouteTable** is a child Routing object for the Gloo Gateway.

A **RouteTable** gets built into the complete routing configuration
when it is referenced by a `delegateAction`, either
in a parent VirtualService or another RouteTable.

Routes specified in a RouteTable must have their paths start with the prefix provided in the
parent's matcher.

For example, the following configuration:


```
virtualService: mydomain.com
match: /a
delegate: a-routes
---
routeTable: a-routes
match: /1

```

would *not be valid*, while

```
virtualService: mydomain.com
match: /a
delegate: a-routes
---
routeTable: a-routes
match: /a/1

```

*would* be valid.


A complete configuration might look as follows:

```yaml
apiVersion: gateway.solo.io/v1
kind: VirtualService
metadata:
  name: 'any'
  namespace: 'any'
spec:
  virtualHost:
    domains:
    - 'any.com'
    routes:
    - matcher:
        prefix: '/a' # delegate ownership of routes for `any.com/a`
      delegateAction:
        name: 'a-routes'
        namespace: 'a'
    - matcher:
        prefix: '/b' # delegate ownership of routes for `any.com/b`
      delegateAction:
        name: 'b-routes'
        namespace: 'b'
```

* A root-level **VirtualService** which delegates routing to to the `a-routes` and `b-routes` **RouteTables**.
* Routes with `delegateActions` can only use a `prefix` matcher.

```yaml
apiVersion: gateway.solo.io/v1
kind: RouteTable
metadata:
  name: 'a-routes'
  namespace: 'a'
spec:
  routes:
    - matcher:
        # the path matchers in this RouteTable must begin with the prefix `/a/`
        prefix: '/a/1'
      routeAction:
        single:
          upstream:
            name: 'foo-upstream'

    - matcher:
        prefix: '/a/2'
      routeAction:
        single:
          upstream:
            name: 'bar-upstream'
```

* A **RouteTable** which defines two routes.

```yaml
apiVersion: gateway.solo.io/v1
kind: RouteTable
metadata:
  name: 'b-routes'
  namespace: 'b'
spec:
  routes:
    - matcher:
        # the path matchers in this RouteTable must begin with the prefix `/b/`
        regex: '/b/3'
      routeAction:
        single:
          upstream:
            name: 'bar-upstream'
    - matcher:
        prefix: '/b/c/'
      # routes in the RouteTable can perform any action, including a delegateAction
      delegateAction:
        name: 'c-routes'
        namespace: 'c'

```

* A **RouteTable** which both *defines a route* and *delegates to* another **RouteTable**.


```yaml
apiVersion: gateway.solo.io/v1
kind: RouteTable
metadata:
  name: 'c-routes'
  namespace: 'c'
spec:
  routes:
    - matcher:
        exact: '/b/c/4'
      routeAction:
        single:
          upstream:
            name: 'qux-upstream'
```

* A RouteTable which is a child of another route table.


Would produce the following route config for `mydomain.com`:

```
/a/1 -> foo-upstream
/a/2 -> bar-upstream
/b/3 -> baz-upstream
/b/c/4 -> qux-upstream
```

```yaml
"routes": []gateway.solo.io.Route
"status": .core.solo.io.Status
"metadata": .core.solo.io.Metadata

```

| Field | Type | Description | Default |
| ----- | ---- | ----------- |----------- | 
| `routes` | [[]gateway.solo.io.Route](../virtual_service.proto.sk#route) | the list of routes for the route table. |  |
| `status` | [.core.solo.io.Status](../../../../../../solo-kit/api/v1/status.proto.sk#status) | Status indicates the validation status of this resource. Status is read-only by clients, and set by gloo during validation. |  |
| `metadata` | [.core.solo.io.Metadata](../../../../../../solo-kit/api/v1/metadata.proto.sk#metadata) | Metadata contains the object metadata for this resource. |  |





<!-- Start of HubSpot Embed Code -->
<script type="text/javascript" id="hs-script-loader" async defer src="//js.hs-scripts.com/5130874.js"></script>
<!-- End of HubSpot Embed Code -->
