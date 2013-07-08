package BootstrapSite;

use Dancer ':syntax';
use Common::MIME;
use Common::Static;

our $VERSION = '0.1';

init Common::Static;
init Common::MIME;

get '/' => sub {
    template 'index';
};

true;
