use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.

WriteMakefile(
    NORECURS => 1,
    'NAME'	   => 'Apache::Queue',
    'VERSION_FROM' => 'Queue.pm',
    'PREREQ_PM'    => {
      'Apache::Constants' => '0',
      'Apache::File'      => '0',
      'Apache::Log'       => '0',
      'Fcntl'             => '0',
      'DB_File'           => '0',
      'Template'          => '0',
    },
    'dist'    => {COMPRESS=> 'gzip -9f', SUFFIX=>'gz', 
 	          POSTOP => 'mv $(DISTNAME)-$(VERSION).tar.gz ../'
    },
);

