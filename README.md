angular-fa-icon-from-url
========================

An angularjs directive which adds font awesome icon classes to your element based on the url provided

install
-------

```
bower install angular-fa-icon-from-url
```

usage
-----

Make sure you include the module in your application config

```
angular.module('myApp', [
  'faIconFromUrl',
  ...
]);
```

Pass the url into the directive to produce the correct icon

```
<i fa-icon-from-url="'http://www.github.com/azzamallow'"></i>
```

Produces

```
<i class="fa fa-github"></i>
```

currently supported
-------------------

* Github
* Twitter
* Linkedin
* Email addresses
