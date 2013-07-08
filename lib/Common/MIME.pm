package Common::MIME;

use Dancer ':syntax';

sub init {
	my $class = shift(@_);
	my $mime = Dancer::MIME->instance();
	my $custom_mime_types = config->{mime};

	foreach my $type (keys(%$custom_mime_types)) {
        $mime->add_type($type => $custom_mime_types->{$type});
	}
}

true;
# vim:ft=perl expandtab si ai sm tabstop=4 shiftwidth=4:
