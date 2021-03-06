
package ONVIF::Media::Elements::GetMetadataConfigurationOptionsResponse;
use strict;
use warnings;

{ # BLOCK to scope variables

sub get_xmlns { 'http://www.onvif.org/ver10/media/wsdl' }

__PACKAGE__->__set_name('GetMetadataConfigurationOptionsResponse');
__PACKAGE__->__set_nillable();
__PACKAGE__->__set_minOccurs();
__PACKAGE__->__set_maxOccurs();
__PACKAGE__->__set_ref();

use base qw(
    SOAP::WSDL::XSD::Typelib::Element
    SOAP::WSDL::XSD::Typelib::ComplexType
);

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(SOAP::WSDL::XSD::Typelib::ComplexType);

Class::Std::initialize();

{ # BLOCK to scope variables

my %Options_of :ATTR(:get<Options>);

__PACKAGE__->_factory(
    [ qw(        Options

    ) ],
    {
        'Options' => \%Options_of,
    },
    {
        'Options' => 'ONVIF::Media::Types::MetadataConfigurationOptions',
    },
    {

        'Options' => 'Options',
    }
);

} # end BLOCK







} # end of BLOCK



1;


=pod

=head1 NAME

ONVIF::Media::Elements::GetMetadataConfigurationOptionsResponse

=head1 DESCRIPTION

Perl data type class for the XML Schema defined element
GetMetadataConfigurationOptionsResponse from the namespace http://www.onvif.org/ver10/media/wsdl.







=head1 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * Options

 $element->set_Options($data);
 $element->get_Options();





=back


=head1 METHODS

=head2 new

 my $element = ONVIF::Media::Elements::GetMetadataConfigurationOptionsResponse->new($data);

Constructor. The following data structure may be passed to new():

 {
   Options =>  { # ONVIF::Media::Types::MetadataConfigurationOptions
     PTZStatusFilterOptions =>  { # ONVIF::Media::Types::PTZStatusFilterOptions
       PanTiltStatusSupported =>  $some_value, # boolean
       ZoomStatusSupported =>  $some_value, # boolean
       PanTiltPositionSupported =>  $some_value, # boolean
       ZoomPositionSupported =>  $some_value, # boolean
       Extension =>  { # ONVIF::Media::Types::PTZStatusFilterOptionsExtension
       },
     },
   },
 },

=head1 AUTHOR

Generated by SOAP::WSDL

=cut

