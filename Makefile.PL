use inc::Module::Install 1.00;

all_from      'lib/PPI.pm';
readme_from   'lib/PPI.pm'; # Module::Install::ReadmeFromPod
requires      'File::Spec'       => win32() ? '3.2701' : '0.84';
requires      'Clone'            => '0.30';
requires      'List::Util'       => '1.20';
requires      'List::MoreUtils'  => '0.16';
requires      'Params::Util'     => '1.00';
requires      'IO::String'       => '1.07';

# Modules needed for PPI::Cache
requires      'Digest::MD5'      => '2.35';
requires      'Storable'         => '2.17';

# Test-time dependencies (bundle as many as we can)
test_requires 'Test::More'       => '0.86';
test_requires 'Test::NoWarnings' => '0.084';
test_requires 'Test::Object'     => '0.07';
test_requires 'Test::SubCalls'   => '1.07';
test_requires 'File::Remove'     => '1.42';
test_requires 'Class::Inspector' => '1.22';

# Force the existence of the weaken function
# (which some distributions annoyingly don't have)
requires      'Task::Weaken';

repository 'https://github.com/adamkennedy/PPI';

WriteAll;
