var gulp = require('gulp');

gulp.task('build', function() {
    gulp.run(['browserify', 'less', 'html']);
});