var gulp = require('gulp');
var browserify = require('browserify');
var source = require('vinyl-source-stream');

gulp.task('browserify', function() {
	return browserify('./app/js/app.js')
		 .bundle({debug: true})
		.pipe(source('bundle.js'))
		.pipe(gulp.dest('./build'));
});