var gulp = require('gulp');

var JS_FILES = 'app/js/**/*.js';
var LESS_FILES = 'app/less/*.less';
var HTML_FILES = 'app/**/*.html';

gulp.task('watch', function() {
	gulp.watch(JS_FILES, ['browserify']);
	gulp.watch(LESS_FILES, ['less']);
	gulp.watch(HTML_FILES, ['html']);
});