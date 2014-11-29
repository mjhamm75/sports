var gulp = require('gulp');
var minifyHTML = require('gulp-minify-html');
var opts = {comments:true,spare:true};

gulp.task('html', function () {
    gulp.src('./app/**/*.html')
    .pipe(minifyHTML(opts))
    .pipe(gulp.dest('./server/build/app'));
});