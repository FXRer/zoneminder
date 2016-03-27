package ONVIF::Analytics::Types::ColorDescriptor;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'http://www.onvif.org/ver10/schema' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(SOAP::WSDL::XSD::Typelib::ComplexType);

Class::Std::initialize();

{ # BLOCK to scope variables

my %ColorCluster_of :ATTR(:get<ColorCluster>);
my %Extension_of :ATTR(:get<Extension>);

__PACKAGE__->_factory(
    [ qw(        ColorCluster
        Extension

    ) ],
    {
        'ColorCluster' => \%ColorCluster_of,
        'Extension' => \%Extension_of,
    },
    {

        'ColorCluster' => 'ONVIF::Analytics::Types::ColorDescriptor::_ColorCluster',
        'Extension' => 'ONVIF::Analytics::Types::ColorDescriptorExtension',
    },
    {

        'ColorCluster' => 'ColorCluster',
        'Extension' => 'Extension',
    }
);

} # end BLOCK




package ONVIF::Analytics::Types::ColorDescriptor::_ColorCluster;
use strict;
use warnings;
{
our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(SOAP::WSDL::XSD::Typelib::ComplexType);

Class::Std::initialize();

{ # BLOCK to scope variables

my %Color_of :ATTR(:get<Color>);
my %Weight_of :ATTR(:get<Weight>);
my %Covariance_of :ATTR(:get<Covariance>);

__PACKAGE__->_factory(
    [ qw(        Color
        Weight
        Covariance

    ) ],
    {
        'Color' => \%Color_of,
        'Weight' => \%Weight_of,
        'Covariance' => \%Covariance_of,
    },
    {
        'Color' => 'ONVIF::Analytics::Types::Color',
        'Weight' => 'SOAP::WSDL::XSD::Typelib::Builtin::float',
        'Covariance' => 'ONVIF::Analytics::Types::ColorCovariance',
    },
    {

        'Color' => 'Color',
        'Weight' => 'Weight',
        'Covariance' => 'Covariance',
    }
);

} # end BLOCK







}







1;


=pod

=head1 NAME

ONVIF::Analytics::Types::ColorDescriptor

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
ColorDescriptor from the namespace http://www.onvif.org/ver10/schema.






=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * ColorCluster


=item * Extension




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # ONVIF::Analytics::Types::ColorDescriptor
   ColorCluster =>  {
     Color => ,
     Weight =>  $some_value, # float
     Covariance => ,
   },
   Extension =>  { # ONVIF::Analytics::Types::ColorDescriptorExtension
   },
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut
