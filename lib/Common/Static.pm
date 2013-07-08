package Common::Static;

use Dancer ':syntax';
use POSIX qw(strftime);

sub init {
    my $expires = config->{expires};

    return false if (not defined $expires);
    hook before_file_render => sub {
        header Expires => strftime("%a, %d %b %Y %H:%M:%S GMT", gmtime(time() + $expires));
    };
}

true;
# vim:ft=perl expandtab si ai sm tabstop=4 shiftwidth=4:
