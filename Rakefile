
task :help do
  sh 'rake -T'
end

task :release do
    # release script such as "fastlane beta"
end

task :dev do
  sh 'fvm flutter run --dart-define ENV_PATH=secrets/.env'
end

task :stg do
  sh 'flutter run --release --dart-define ENV_PATH=secrets/.env.prd'
end

task :prd do
  sh 'flutter run --release --dart-define ENV_PATH=secrets/.env.prd'
end

task :gen do
  sh 'fvm flutter pub run build_runner build --delete-conflicting-outputs'
end

task :gen_watch do
  sh 'fvm flutter pub run build_runner watch --delete-conflicting-outputs'
end

task :i10n do
  # sh 'sh scripts/i10n.sh'
end

desc 'update splash images'
task :splash do
  sh 'fvm flutter pub run flutter_native_splash:create'
end

desc 'update app icon'
task :icon do
  sh 'fvm flutter pub run flutter_launcher_icons:main'
end

desc 'test'
task :test do
  # flutter unit test
  sh 'fvm flutter test --coverage'
end

desc 'clean up'
task :clean do
  sh 'flutter clean && flutter pub get && flutter pub cache repair'
end