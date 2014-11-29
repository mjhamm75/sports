var gulp = require('gulp');
var connect = require('gulp-connect');

gulp.task('serve', function() {
	connect.server({
		port: process.env.PORT,
		hostname: process.env.IP,
		root: './'
	});
});