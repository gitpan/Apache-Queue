use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.

$VERSION = "0.1";

WriteMakefile(
    NORECURS => 1,
    'NAME'	=> 'Apache::Queue',
    'VERSION'   => $VERSION,
    'dist'    => {COMPRESS=> 'gzip -9f', SUFFIX=>'gz', 
 	          POSTOP => 'mv $(DISTNAME)-$(VERSION).tar.gz ../'
    },
);
