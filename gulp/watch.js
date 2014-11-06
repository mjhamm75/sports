var gulp = require('gulp');

var JS_FILES = 'app/js/**/*.js';
var LESS_FILES = 'app/less/*.less';

gulp.task('watch', function() {
	gulp.watch(JS_FILES, ['browserify']);
	gulp.watch(LESS_FILES, ['less']);
});