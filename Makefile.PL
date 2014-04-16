#!/usr/bin/perl -w                                         # -*- perl -*-

use strict;
use warnings;
use ExtUtils::MakeMaker;

my %opts = (
    'NAME'         => 'Template-Plugin-Autoformat',
    'VERSION_FROM' => 'lib/Template/Plugin/Autoformat.pm',
    'PMLIBDIRS'    => [ 'lib' ], 
    'PREREQ_PM'    => { 
        'Template'         => 2.20,
        'Text::Autoformat' => 1.13,
    },
    'dist'         => {
        'COMPRESS' => 'gzip',
        'SUFFIX'   => 'gz',
    },
    'test'         => {
        'TESTS'    => 't/autoform.t',
    },
);

if ($ExtUtils::MakeMaker::VERSION >= 5.43) {
    $opts{ AUTHOR   } = 'Andy Wardley <abw@wardley.org>';
    $opts{ ABSTRACT } = 'TT plugin for Text::Autoformat',
}

if ($ExtUtils::MakeMaker::VERSION ge '6.30_00') {
    $opts{'LICENSE' } = 'perl';
} 

WriteMakefile( %opts );
