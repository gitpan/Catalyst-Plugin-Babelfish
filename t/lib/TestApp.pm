package TestApp;

use strict;
use Catalyst qw/Babelfish/;

use base qw/Catalyst/;

use FindBin;
use lib "$FindBin::Bin/../lib";

__PACKAGE__->config( name => 'TestApp', root => '/some/dir',
                     babelfish => {
                            default_lang => 'en_US',
                            dirs         => [ "$FindBin::Bin/lib/TestApp/locales" ],
                            langs        => [ 'fr_FR', 'en_US' ],
                     },
            );

__PACKAGE__->setup;

1;
