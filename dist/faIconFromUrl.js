(function() {
  'use strict';
  angular.module('faIconFromUrl', []);

  angular.module('faIconFromUrl').directive('faIconFromUrl', function() {
    var patterns;
    patterns = {
      github: /github\.com/,
      linkedin: /linkedin\.com/,
      twitter: /^@|twitter.com/,
      envelope: /.*@.*/
    };
    return {
      scope: {
        faIconFromUrl: '='
      },
      link: function(scope, element, attrs) {
        element.addClass('fa');
        return scope.$watch('faIconFromUrl', function() {
          var name, pattern;
          element[0].className = element[0].className.replace(/fa-\S+/g, ' ');
          for (name in patterns) {
            pattern = patterns[name];
            if (pattern.test(scope.faIconFromUrl)) {
              element.addClass("fa-" + name);
              return;
            }
          }
          return element.addClass('fa-external-link');
        });
      }
    };
  });

}).call(this);
