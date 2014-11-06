var gulp = require('gulp');
var less = require("gulp-less");

gulp.task('less', function () {
    gulp.src('./app/less/app.less')
    .pipe(less())
    .pipe(gulp.dest('./build'));
});