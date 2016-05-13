gulp = require('gulp')
sass = require('gulp-ruby-sass')
autoprefixer = require('gulp-autoprefixer')
broeserSync = require('browser-sync');

gulp.task 'browser-sync', ['rebuild'], ->
  broeserSync({
    server: {
      baseDir: './'
    }
  })

gulp.task 'rebuild', ->
  broeserSync.reload()

gulp.task 'watch', ->
  gulp.watch(['./*.html', 'assets/**/*.css', 'assets/**/*.js'], ['rebuild'])

gulp.task 'default', ['browser-sync', 'watch']