e
# prefixed with the string contained in PERLMOD_MAKEVAR_PREFIX. This is useful
# so different doxyrules.make files included by the same Makefile don't
# overwrite each other's variables.
# This tag requires that the tag GENERATE_PERLMOD is set to YES.

PERLMOD_MAKEVAR_PREFIX =

#---------------------------------------------------------------------------
# Configuration options related to the preprocessor
#---------------------------------------------------------------------------

# If the ENABLE_PREPROCESSING tag is set to YES, doxygen will evaluate all
# C-preprocessor directives found in the sources and include files.
# The default value is: YES.

ENABLE_PREPROCESSING   = YES

# If the MACRO_EXPANSION tag is set to YES, doxygen will expand all macro names
# in the source code. If set to NO, only conditional compilation will be
# performed. Macro expansion can be done in a controlled way by setting
# EXPAND_ONLY_PREDEF to YES.
# The default value is: NO.
# This tag requires that the tag ENABLE_PREPROCESSING is set to YES.

MACRO_EXPANSION        = NO

# If the EXPAND_ONLY_PREDEF and MACRO_EXPANSION tags are both set to YES then
# the macro expansion is limited to the macros specified with the PREDEFINED and
# EXPAND_AS_DEFINED tags.
# The default value is: NO.
# This tag requires that the tag ENABLE_PREPROCESSING is set to YES.

EXPAND_ONLY_PREDEF     = NO

# If the SEARCH_INCLUDES tag is set to YES, the include files in the
# INCLUDE_PATH will be searched if a #include is found.
# The default value is: YES.
# This tag requires that the tag ENABLE_PREPROCESSING is set to YES.

SEARCH_INCLUDES        = YES

# The INCLUDE_PATH tag can be used to specify one or more directories that
# contain include files that are not input files but should be processed by the
# preprocessor.
# This tag requires that the tag SEARCH_INCLUDES is set to YES.

INCLUDE_PATH           =

# You can use the INCLUDE_FILE_PATTERNS tag to specify one or more wildcard
# patterns (like *.h and *.hpp) to filter out the header-files in the
# directories. If left blank, the patterns specified with FILE_PATTERNS will be
# used.
# This tag requires that the tag ENABLE_PREPROCESSING is set to YES.

INCLUDE_FILE_PATTERNS  =

# The PREDEFINED tag can be used to specify one or more macro names that are
# defined before the preprocessor is started (similar to the -D option of e.g.
# gcc). The argument of the tag is a list of macros of the form: name or
# name=definition (no spaces). If the definition and the "=" are omitted, "=1"
# is assumed. To prevent a macro definition from being undefined via #undef or
# recursively expanded use the := operator instead of the = operator.
# This tag requires that the tag ENABLE_PREPROCESSING is set to YES.

PREDEFINED             =

# If the MACRO_EXPANSION and EXPAND_ONLY_PREDEF tags are set to YES then this
# tag can be used to specify a list of macro names that should be expanded. The
# macro definition that is found in the sources will be used. Use the PREDEFINED
# tag if you want to use a different macro definition that overrules the
# definition found in the source code.
# This tag requires that the tag ENABLE_PREPROCESSING is set to YES.

EXPAND_AS_DEFINED      =

# If the SKIP_FUNCTION_MACROS tag is set to YES then doxygen's preprocessor will
# remove all references to function-like macros that are alone on a line, have
# an all uppercase name, and do not end with a semicolon. Such function macros
# are typically used for boiler-plate code, and will confuse the parser if not
# removed.
# The default value is: YES.
# This tag requires that the tag ENABLE_PREPROCESSING is set to YES.

SKIP_FUNCTION_MACROS   = YES

#---------------------------------------------------------------------------
# Configuration options related to external references
#---------------------------------------------------------------------------

# The TAGFILES tag can be used to specify one or more tag files. For each tag
# file the location of the external documentation should be added. The format of
# a tag file without this location is as follows:
# TAGFILES = file1 file2 ...
# Adding location for the tag files is done as follows:
# TAGFILES = file1=loc1 "file2 = loc2" ...
# where loc1 and loc2 can be relative or absolute paths or URLs. See the
# section "Linking to external documentation" for more information about the use
# of tag files.
# Note: Each tag file must have a unique name (where the name does NOT include
# the path). If a tag file is not located in the directory in which doxygen is
# run, you must also specify the path to the tagfile here.

TAGFILES               =

# When a file name is specified after GENERATE_TAGFILE, doxygen will create a
# tag file that is based on the input files it reads. See section "Linking to
# external documentation" for more information about the usage of tag files.

GENERATE_TAGFILE       =

# If the ALLEXTERNALS tag is set to YES, all external class will be listed in
# the class index. If set to NO, only the inherited external classes will be
# listed.
# The default value is: NO.

ALLEXTERNALS           = NO

# If the EXTERNAL_GROUPS tag is set to YES, all external groups will be listed
# in the modules index. If set to NO, only the current project's groups will be
# listed.
# The default value is: YES.

EXTERNAL_GROUPS        = YES

# If the EXTERNAL_PAGES tag is set to YES, all external pages will be listed in
# the related pages index. If set to NO, only the current project's pages will
# be listed.
# The default value is: YES.

EXTERNAL_PAGES         = YES

#---------------------------------------------------------------------------
# Configuration options related to the dot tool
#---------------------------------------------------------------------------

# If the CLASS_DIAGRAMS tag is set to YES, doxygen will generate a class diagram
# (in HTML and LaTeX) for classes with base or super classes. Setting the tag to
# NO turns the diagrams off. Note that this option also works with HAVE_DOT
# disabled, but it is recommended to install and use dot, since it yields more
# powerful graphs.
# The default value is: YES.

CLASS_DIAGRAMS         = NO

# You can include diagrams made with dia in doxygen documentation. Doxygen will
# then run dia to produce the diagram and insert it in the documentation. The
# DIA_PATH tag allows you to specify the directory where the dia binary resides.
# If left empty dia is assumed to be found in the default search path.

DIA_PATH               =

# If set to YES the inheritance and collaboration graphs will hide inheritance
# and usage relations if the target is undocumented or is not a class.
# The default value is: YES.

HIDE_UNDOC_RELATIONS   = YES

# If you set the HAVE_DOT tag to YES then doxygen will assume the dot tool is
# available from the path. This tool is part of Graphviz (see:
# http://www.graphviz.org/), a graph visualization toolkit from AT&T and Lucent
# Bell Labs. The other options in this section have no effect if this option is
# set to NO
# The default value is: NO.

HAVE_DOT               = YES

# The DOT_NUM_THREADS specifies the number of dot invocations doxygen is allowed
# to run in parallel. When set to 0 doxygen will base this on the number of
# processors available in the system. You can set it explicitly to a value
# larger than 0 to get control over the balance between CPU load and processing
# speed.
# Minimum value: 0, maximum value: 32, default value: 0.
# This tag requires that the tag HAVE_DOT is set to YES.

DOT_NUM_THREADS        = 0

# When you want a differently looking font in the dot files that doxygen
# generates you can specify the font name using DOT_FONTNAME. You need to make
# sure dot is able to find the font, which can be done by putting it in a
# standard location or by setting the DOTFONTPATH environment variable or by
# setting DOT_FONTPATH to the directory containing the font.
# The default value is: Helvetica.
# This tag requires that the tag HAVE_DOT is set to YES.

DOT_FONTNAME           = Helvetica

# The DOT_FONTSIZE tag can be used to set the size (in points) of the font of
# dot graphs.
# Minimum value: 4, maximum value: 24, default value: 10.
# This tag requires that the tag HAVE_DOT is set to YES.

DOT_FONTSIZE           = 10

# By default doxygen will tell dot to use the default font as specified with
# DOT_FONTNAME. If you specify a different font using DOT_FONTNAME you can set
# the path where dot can find it using this tag.
# This tag requires that the tag HAVE_DOT is set to YES.

DOT_FONTPATH           =

# If the CLASS_GRAPH tag is set to YES then doxygen will generate a graph for
# each documented class showing the direct and indirect inheritance relations.
# Setting this tag to YES will force the CLASS_DIAGRAMS tag to NO.
# The default value is: YES.
# This tag requires that the tag HAVE_DOT is set to YES.

CLASS_GRAPH            = NO

# If the COLLABORATION_GRAPH tag is set to YES then doxygen will generate a
# graph for each documented class showing the direct and indirect implementation
# dependencies (inheritance, containment, and class references variables) of the
# class with other documented classes.
# The default value is: YES.
# This tag requires that the tag HAVE_DOT is set to YES.

COLLABORATION_GRAPH    = NO

# If the GROUP_GRAPHS tag is set to YES then doxygen will generate a graph for
# groups, showing the direct groups dependencies.
# The default value is: YES.
# This tag requires that the tag HAVE_DOT is set to YES.

GROUP_GRAPHS           = NO

# If the UML_LOOK tag is set to YES, doxygen will generate inheritance and
# collaboration diagrams in a style similar to the OMG's Unified Modeling
# Language.
# The default value is: NO.
# This tag requires that the tag HAVE_DOT is set to YES.

UML_LOOK               = NO

# If the UML_LOOK tag is enabled, the fields and methods are shown inside the
# class node. If there are many fields or methods and many nodes the graph may
# become too big to be useful. The UML_LIMIT_NUM_FIELDS threshold limits the
# number of items for each type to make the size more manageable. Set this to 0
# for no limit. Note that the threshold may be exceeded by 50% before the limit
# is enforced. So when you set the threshold to 10, up to 15 fields may appear,
# but if the number exceeds 15, the total amount of fields shown is limited to
# 10.
# Minimum value: 0, maximum value: 100, default value: 10.
# This tag requires that the tag HAVE_DOT is set to YES.

UML_LIMIT_NUM_FIELDS   = 10

# If the TEMPLATE_RELATIONS tag is set to YES then the inheritance and
# collaboration graphs will show the relations between templates and their
# instances.
# The default value is: NO.
# This tag requires that the tag HAVE_DOT is set to YES.

TEMPLATE_RELATIONS     = NO

# If the INCLUDE_GRAPH, ENABLE_PREPROCESSING and SEARCH_INCLUDES tags are set to
# YES then doxygen will generate a graph for each documented file showing the
# direct and indirect include dependencies of the file with other documented
# files.
# The default value is: YES.
# This tag requires that the tag HAVE_DOT is set to YES.

INCLUDE_GRAPH          = YES

# If the INCLUDED_BY_GRAPH, ENABLE_PREPROCESSING and SEARCH_INCLUDES tags are
# set to YES then doxygen will generate a graph for each documented file showing
# the direct and indirect include dependencies of the file with other documented
# files.
# The default value is: YES.
# This tag requires that the tag HAVE_DOT is set to YES.

INCLUDED_BY_GRAPH      = YES

# If the CALL_GRAPH tag is set to YES then doxygen will generate a call
# dependency graph for every global function or class method.
#
# Note that enabling this option will significantly increase the time of a run.
# So in most cases it will be better to enable call graphs for selected
# functions only using the \callgraph command. Disabling a call graph can be
# accomplished by means of the command \hidecallgraph.
# The default value is: NO.
# This tag requires that the tag HAVE_DOT is set to YES.

CALL_GRAPH             = NO

# If the CALLER_GRAPH tag is set to YES then doxygen will generate a caller
# dependency graph for every global function or class method.
#
# Note that enabling this option will significantly increase the time of a run.
# So in most cases it will be better to enable caller graphs for selected
# functions only using the \callergraph command. Disabling a caller graph can be
# accomplished by means of the command \hidecallergraph.
# The default value is: NO.
# This tag requires that the tag HAVE_DOT is set to YES.

CALLER_GRAPH           = NO

# If the GRAPHICAL_HIERARCHY tag is set to YES then doxygen will graphical
# hierarchy of all classes instead of a textual one.
# The default value is: YES.
# This tag requires that the tag HAVE_DOT is set to YES.

GRAPHICAL_HIERARCHY    = NO

# If the DIRECTORY_GRAPH tag is set to YES then doxygen will show the
# dependencies a directory has on other directories in a graphical way. The
# dependency relations are determined by the #include relations between the
# files in the directories.
# The default value is: YES.
# This tag requires that the tag HAVE_DOT is set to YES.

DIRECTORY_GRAPH        = NO

# The DOT_IMAGE_FORMAT tag can be used to set the image format of the images
# generated by dot. For an explanation of the image formats see the section
# output formats in the documentation of the dot tool (Graphviz (see:
# http://www.graphviz.org/)).
# Note: If you choose svg you need to set HTML_FILE_EXTENSION to xhtml in order
# to make the SVG files visible in IE 9+ (other browsers do not have this
# requirement).
# Possible values are: png, jpg, gif, svg, png:gd, png:gd:gd, png:cairo,
# png:cairo:gd, png:cairo:cairo, png:cairo:gdiplus, png:gdiplus and
# png:gdiplus:gdiplus.
# The default value is: png.
# This tag requires that the tag HAVE_DOT is set to YES.

DOT_IMAGE_FORMAT       = png

# If DOT_IMAGE_FORMAT is set to svg, then this option can be set to YES to
# enable generation of interactive SVG images that allow zooming and panning.
#
# Note that this requires a modern browser other than Internet Explorer. Tested
# and working are Firefox, Chrome, Safari, and Opera.
# Note: For IE 9+ you need to set HTML_FILE_EXTENSION to xhtml in order to make
# the SVG files visible. Older versions of IE do not have SVG support.
# The default value is: NO.
# This tag requires that the tag HAVE_DOT is set to YES.

INTERACTIVE_SVG        = YES

# The DOT_PATH tag can be used to specify the path where the dot tool can be
# found. If left blank, it is assumed the dot tool can be found in the path.
# This tag requires that the tag HAVE_DOT is set to YES.

DOT_PATH               =

# The DOTFILE_DIRS tag can be used to specify one or more directories that
# contain dot files that are included in the documentation (see the \dotfile
# command).
# This tag requires that the tag HAVE_DOT is set to YES.

DOTFILE_DIRS           =

# The MSCFILE_DIRS tag can be used to specify one or more directories that
# contain msc files that are included in the documentation (see the \mscfile
# command).

MSCFILE_DIRS           =

# The DIAFILE_DIRS tag can be used to specify one or more directories that
# contain dia files that are included in the documentation (see the \diafile
# command).

DIAFILE_DIRS           =

# When using plantuml, the PLANTUML_JAR_PATH tag should be used to specify the
# path where java can find the plantuml.jar file. If left blank, it is assumed
# PlantUML is not used or called during a preprocessing step. Doxygen will
# generate a warning when it encounters a \startuml command in this case and
# will not generate output for the diagram.

PLANTUML_JAR_PATH      =

# When using plantuml, the PLANTUML_CFG_FILE tag can be used to specify a
# configuration file for plantuml.

PLANTUML_CFG_FILE      =

# When using plantuml, the specified paths are searched for files specified by
# the !include statement in a plantuml block.

PLANTUML_INCLUDE_PATH  =

# The DOT_GRAPH_MAX_NODES tag can be used to set the maximum number of nodes
# that will be shown in the graph. If the number of nodes in a graph becomes
# larger than this value, doxygen will truncate the graph, which is visualized
# by representing a node as a red box. Note that doxygen if the number of direct
# children of the root node in a graph is already larger than
# DOT_GRAPH_MAX_NODES then the graph will not be shown at all. Also note that
# the size of a graph can be further restricted by MAX_DOT_GRAPH_DEPTH.
# Minimum value: 0, maximum value: 10000, default value: 50.
# This tag requires that the tag HAVE_DOT is set to YES.

DOT_GRAPH_MAX_NODES    = 100

# The MAX_DOT_GRAPH_DEPTH tag can be used to set the maximum depth of the graphs
# generated by dot. A depth value of 3 means that only nodes reachable from the
# root by following a path via at most 3 edges will be shown. Nodes that lay
# further from the root node will be omitted. Note that setting this option to 1
# or 2 may greatly reduce the computation time needed for large code bases. Also
# note that the size of a graph can be further restricted by
# DOT_GRAPH_MAX_NODES. Using a depth of 0 means no depth restriction.
# Minimum value: 0, maximum value: 1000, default value: 0.
# This tag requires that the tag HAVE_DOT is set to YES.

MAX_DOT_GRAPH_DEPTH    = 0

# Set the DOT_TRANSPARENT tag to YES to generate images with a transparent
# background. This is disabled by default, because dot on Windows does not seem
# to support this out of the box.
#
# Warning: Depending on the platform used, enabling this option may lead to
# badly anti-aliased labels on the edges of a graph (i.e. they become hard to
# read).
# The default value is: NO.
# This tag requires that the tag HAVE_DOT is set to YES.

DOT_TRANSPARENT        = NO

# Set the DOT_MULTI_TARGETS tag to YES to allow dot to generate multiple output
# files in one run (i.e. multiple -o and -T options on the command line). This
# makes dot run faster, but since only newer versions of dot (>1.8.10) support
# this, this feature is disabled by default.
# The default value is: NO.
# This tag requires that the tag HAVE_DOT is set to YES.

DOT_MULTI_TARGETS      = YES

# If the GENERATE_LEGEND tag is set to YES doxygen will generate a legend page
# explaining the meaning of the various boxes and arrows in the dot generated
# graphs.
# The default value is: YES.
# This tag requires that the tag HAVE_DOT is set to YES.

GENERATE_LEGEND        = YES

# If the DOT_CLEANUP tag is set to YES, doxygen will remove the intermediate dot
# files that are used to generate the various graphs.
# The default value is: YES.
# This tag requires that the tag HAVE_DOT is set to YES.

DOT_CLEANUP            = YES
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   <?xml version="1.0" encoding="UTF-8"?>
<testsuitesloose text artifact
>
  <testsuite name="<exe-name>" errors="17" failures="128" skipped="11" tests="2237" hostname="tbd" time="{duration}" timestamp="{iso8601-timestamp}">
    <properties>
      <property name="random-seed" value="1"/>
      <property name="filters" value="&quot;*&quot; ~[!nonportable] ~[!benchmark] ~[approvals]"/>
    </properties>
    <testcase classname="<exe-name>.global" name="# A test name that starts with a #" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="#1027: Bitfields can be captured" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="#1147" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="#1175 - Hidden Test" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="#1238" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.(Fixture_1245&lt;int, int>)" name="#1245" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="#1319: Sections can have description (even if it is not saved/SectionName" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="#1403" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="#1455 - INFO and WARN can start with a linebreak" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="#1514: stderr/stdout is not captured in tests aborted by an exception" time="{duration}" status="run">
      <failure type="FAIL">
FAILED:
1514
at Tricky.tests.cpp:<line number>
      </failure>
      <system-out>
This would not be caught previously
      </system-out>
      <system-err>
Nor would this
      </system-err>
    </testcase>
    <testcase classname="<exe-name>.global" name="#1548" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="#1905 -- test spec parser properly clears internal state between compound tests" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="#1912 -- test spec parser handles escaping/Various parentheses" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="#1912 -- test spec parser handles escaping/backslash in test name" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="#1913 - GENERATE inside a for loop should not keep recreating the generator" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="#1913 - GENERATEs can share a line" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="#1938 - GENERATE after a section/A" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="#1938 - GENERATE after a section/B" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="#1938 - Section followed by flat generate" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="#1938 - Section followed by flat generate/A" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="#1938 - flat generate" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="#1938 - mixed sections and generates" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="#1938 - mixed sections and generates/A" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="#1938 - mixed sections and generates/B" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="#1938 - nested generate" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="#1954 - 7 arg template test case sig compiles - 1, 1, 1, 1, 1, 0, 0" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="#1954 - 7 arg template test case sig compiles - 5, 1, 1, 1, 1, 0, 0" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="#1954 - 7 arg template test case sig compiles - 5, 3, 1, 1, 1, 0, 0" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="#2152 - ULP checks between differently signed values were wrong - double" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="#2152 - ULP checks between differently signed values were wrong - float" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="#2615 - Throwing in constructor generator fails test case but does not abort" time="{duration}" status="run">
      <skipped message="TEST_CASE tagged with !mayfail"/>
      <error type="TEST_CASE">
FAILED:
failure to init
at Generators.tests.cpp:<line number>
      </error>
    </testcase>
    <testcase classname="<exe-name>.global" name="#748 - captures with unexpected exceptions/outside assertions" time="{duration}" status="run">
      <skipped message="TEST_CASE tagged with !mayfail"/>
      <error type="TEST_CASE">
FAILED:
expected exception
answer := 42
at Exception.tests.cpp:<line number>
      </error>
    </testcase>
    <testcase classname="<exe-name>.global" name="#748 - captures with unexpected exceptions/inside REQUIRE_NOTHROW" time="{duration}" status="run">
      <skipped message="TEST_CASE tagged with !mayfail"/>
      <error message="thisThrows()" type="REQUIRE_NOTHROW">
FAILED:
  REQUIRE_NOTHROW( thisThrows() )
expected exception
answer := 42
at Exception.tests.cpp:<line number>
      </error>
    </testcase>
    <testcase classname="<exe-name>.global" name="#748 - captures with unexpected exceptions/inside REQUIRE_THROWS" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="#809" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="#833" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="#835 -- errno should not be touched by Catch2" time="{duration}" status="run">
      <skipped message="TEST_CASE tagged with !mayfail"/>
      <failure message="f() == 0" type="CHECK">
FAILED:
  CHECK( f() == 0 )
with expansion:
  1 == 0
at Misc.tests.cpp:<line number>
      </failure>
    </testcase>
    <testcase classname="<exe-name>.global" name="#872" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="#961 -- Dynamically created sections should all be reported/Looped section 0" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="#961 -- Dynamically created sections should all be reported/Looped section 1" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="#961 -- Dynamically created sections should all be reported/Looped section 2" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="#961 -- Dynamically created sections should all be reported/Looped section 3" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="#961 -- Dynamically created sections should all be reported/Looped section 4" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="'Not' checks that should fail" time="{duration}" status="run">
      <failure message="false != false" type="CHECK">
FAILED:
  CHECK( false != false )
at Condition.tests.cpp:<line number>
      </failure>
      <failure message="true != true" type="CHECK">
FAILED:
  CHECK( true != true )
at Condition.tests.cpp:<line number>
      </failure>
      <failure message="!true" type="CHECK">
FAILED:
  CHECK( !true )
with expansion:
  false
at Condition.tests.cpp:<line number>
      </failure>
      <failure message="!(true)" type="CHECK_FALSE">
FAILED:
  CHECK_FALSE( true )
with expansion:
  !true
at Condition.tests.cpp:<line number>
      </failure>
      <failure message="!trueValue" type="CHECK">
FAILED:
  CHECK( !trueValue )
with expansion:
  false
at Condition.tests.cpp:<line number>
      </failure>
      <failure message="!(trueValue)" type="CHECK_FALSE">
FAILED:
  CHECK_FALSE( trueValue )
with expansion:
  !true
at Condition.tests.cpp:<line number>
      </failure>
      <failure message="!(1 == 1)" type="CHECK">
FAILED:
  CHECK( !(1 == 1) )
with expansion:
  false
at Condition.tests.cpp:<line number>
      </failure>
      <failure message="!(1 == 1)" type="CHECK_FALSE">
FAILED:
  CHECK_FALSE( 1 == 1 )
at Condition.tests.cpp:<line number>
      </failure>
    </testcase>
    <testcase classname="<exe-name>.global" name="'Not' checks that should succeed" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="(unimplemented) static bools can be evaluated/compare to true" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="(unimplemented) static bools can be evaluated/compare to false" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="(unimplemented) static bools can be evaluated/negation" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="(unimplemented) static bools can be evaluated/double negation" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="(unimplemented) static bools can be evaluated/direct" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="3x3x3 ints" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.TestClass" name="A METHOD_AS_TEST_CASE based test run that fails" time="{duration}" status="run">
      <failure message="s == &quot;world&quot;" type="REQUIRE">
FAILED:
  REQUIRE( s == "world" )
with expansion:
  "hello" == "world"
at Class.tests.cpp:<line number>
      </failure>
    </testcase>
    <testcase classname="<exe-name>.TestClass" name="A METHOD_AS_TEST_CASE based test run that succeeds" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.Template_Fixture_2" name="A TEMPLATE_PRODUCT_TEST_CASE_METHOD based test run that fails - Template_Foo&lt;float>" time="{duration}" status="run">
      <failure message="Template_Fixture_2&lt;TestType>::m_a.size() == 1" type="REQUIRE">
FAILED:
  REQUIRE( Template_Fixture_2&lt;TestType>::m_a.size() == 1 )
with expansion:
  0 == 1
at Class.tests.cpp:<line number>
      </failure>
    </testcase>
    <testcase classname="<exe-name>.Template_Fixture_2" name="A TEMPLATE_PRODUCT_TEST_CASE_METHOD based test run that fails - Template_Foo&lt;int>" time="{duration}" status="run">
      <failure message="Template_Fixture_2&lt;TestType>::m_a.size() == 1" type="REQUIRE">
FAILED:
  REQUIRE( Template_Fixture_2&lt;TestType>::m_a.size() == 1 )
with expansion:
  0 == 1
at Class.tests.cpp:<line number>
      </failure>
    </testcase>
    <testcase classname="<exe-name>.Template_Fixture_2" name="A TEMPLATE_PRODUCT_TEST_CASE_METHOD based test run that fails - std::vector&lt;float>" time="{duration}" status="run">
      <failure message="Template_Fixture_2&lt;TestType>::m_a.size() == 1" type="REQUIRE">
FAILED:
  REQUIRE( Template_Fixture_2&lt;TestType>::m_a.size() == 1 )
with expansion:
  0 == 1
at Class.tests.cpp:<line number>
      </failure>
    </testcase>
    <testcase classname="<exe-name>.Template_Fixture_2" name="A TEMPLATE_PRODUCT_TEST_CASE_METHOD based test run that fails - std::vector&lt;int>" time="{duration}" status="run">
      <failure message="Template_Fixture_2&lt;TestType>::m_a.size() == 1" type="REQUIRE">
FAILED:
  REQUIRE( Template_Fixture_2&lt;TestType>::m_a.size() == 1 )
with expansion:
  0 == 1
at Class.tests.cpp:<line number>
      </failure>
    </testcase>
    <testcase classname="<exe-name>.Template_Fixture_2" name="A TEMPLATE_PRODUCT_TEST_CASE_METHOD based test run that succeeds - Template_Foo&lt;float>" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.Template_Fixture_2" name="A TEMPLATE_PRODUCT_TEST_CASE_METHOD based test run that succeeds - Template_Foo&lt;int>" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.Template_Fixture_2" name="A TEMPLATE_PRODUCT_TEST_CASE_METHOD based test run that succeeds - std::vector&lt;float>" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.Template_Fixture_2" name="A TEMPLATE_PRODUCT_TEST_CASE_METHOD based test run that succeeds - std::vector&lt;int>" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.Template_Fixture_2" name="A TEMPLATE_PRODUCT_TEST_CASE_METHOD_SIG based test run that fails - Template_Foo_2&lt;float, 6>" time="{duration}" status="run">
      <failure message="Template_Fixture_2&lt;TestType>{}.m_a.size() &lt; 2" type="REQUIRE">
FAILED:
  REQUIRE( Template_Fixture_2&lt;TestType>{}.m_a.size() &lt; 2 )
with expansion:
  6 &lt; 2
at Class.tests.cpp:<line number>
      </failure>
    </testcase>
    <testcase classname="<exe-name>.Template_Fixture_2" name="A TEMPLATE_PRODUCT_TEST_CASE_METHOD_SIG based test run that fails - Template_Foo_2&lt;int, 2>" time="{duration}" status="run">
      <failure message="Template_Fixture_2&lt;TestType>{}.m_a.size() &lt; 2" type="REQUIRE">
FAILED:
  REQUIRE( Template_Fixture_2&lt;TestType>{}.m_a.size() &lt; 2 )
with expansion:
  2 &lt; 2
at Class.tests.cpp:<line number>
      </failure>
    </testcase>
    <testcase classname="<exe-name>.Template_Fixture_2" name="A TEMPLATE_PRODUCT_TEST_CASE_METHOD_SIG based test run that fails - std::array&lt;float, 6>" time="{duration}" status="run">
      <failure message="Template_Fixture_2&lt;TestType>{}.m_a.size() &lt; 2" type="REQUIRE">
FAILED:
  REQUIRE( Template_Fixture_2&lt;TestType>{}.m_a.size() &lt; 2 )
with expansion:
  6 &lt; 2
at Class.tests.cpp:<line number>
      </failure>
    </testcase>
    <testcase classname="<exe-name>.Template_Fixture_2" name="A TEMPLATE_PRODUCT_TEST_CASE_METHOD_SIG based test run that fails - std::array&lt;int, 2>" time="{duration}" status="run">
      <failure message="Template_Fixture_2&lt;TestType>{}.m_a.size() &lt; 2" type="REQUIRE">
FAILED:
  REQUIRE( Template_Fixture_2&lt;TestType>{}.m_a.size() &lt; 2 )
with expansion:
  2 &lt; 2
at Class.tests.cpp:<line number>
      </failure>
    </testcase>
    <testcase classname="<exe-name>.Template_Fixture_2" name="A TEMPLATE_PRODUCT_TEST_CASE_METHOD_SIG based test run that succeeds - Template_Foo_2&lt;float,6>" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.Template_Fixture_2" name="A TEMPLATE_PRODUCT_TEST_CASE_METHOD_SIG based test run that succeeds - Template_Foo_2&lt;int,2>" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.Template_Fixture_2" name="A TEMPLATE_PRODUCT_TEST_CASE_METHOD_SIG based test run that succeeds - std::array&lt;float,6>" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.Template_Fixture_2" name="A TEMPLATE_PRODUCT_TEST_CASE_METHOD_SIG based test run that succeeds - std::array&lt;int,2>" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.Template_Fixture" name="A TEMPLATE_TEST_CASE_METHOD based test run that fails - double" time="{duration}" status="run">
      <failure message="Template_Fixture&lt;TestType>::m_a == 2" type="REQUIRE">
FAILED:
  REQUIRE( Template_Fixture&lt;TestType>::m_a == 2 )
with expansion:
  1.0 == 2
at Class.tests.cpp:<line number>
      </failure>
    </testcase>
    <testcase classname="<exe-name>.Template_Fixture" name="A TEMPLATE_TEST_CASE_METHOD based test run that fails - float" time="{duration}" status="run">
      <failure message="Template_Fixture&lt;TestType>::m_a == 2" type="REQUIRE">
FAILED:
  REQUIRE( Template_Fixture&lt;TestType>::m_a == 2 )
with expansion:
  1.0f == 2
at Class.tests.cpp:<line number>
      </failure>
    </testcase>
    <testcase classname="<exe-name>.Template_Fixture" name="A TEMPLATE_TEST_CASE_METHOD based test run that fails - int" time="{duration}" status="run">
      <failure message="Template_Fixture&lt;TestType>::m_a == 2" type="REQUIRE">
FAILED:
  REQUIRE( Template_Fixture&lt;TestType>::m_a == 2 )
with expansion:
  1 == 2
at Class.tests.cpp:<line number>
      </failure>
    </testcase>
    <testcase classname="<exe-name>.Template_Fixture" name="A TEMPLATE_TEST_CASE_METHOD based test run that succeeds - double" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.Template_Fixture" name="A TEMPLATE_TEST_CASE_METHOD based test run that succeeds - float" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.Template_Fixture" name="A TEMPLATE_TEST_CASE_METHOD based test run that succeeds - int" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.Nttp_Fixture" name="A TEMPLATE_TEST_CASE_METHOD_SIG based test run that fails - 1" time="{duration}" status="run">
      <failure message="Nttp_Fixture&lt;V>::value == 0" type="REQUIRE">
FAILED:
  REQUIRE( Nttp_Fixture&lt;V>::value == 0 )
with expansion:
  1 == 0
at Class.tests.cpp:<line number>
      </failure>
    </testcase>
    <testcase classname="<exe-name>.Nttp_Fixture" name="A TEMPLATE_TEST_CASE_METHOD_SIG based test run that fails - 3" time="{duration}" status="run">
      <failure message="Nttp_Fixture&lt;V>::value == 0" type="REQUIRE">
FAILED:
  REQUIRE( Nttp_Fixture&lt;V>::value == 0 )
with expansion:
  3 == 0
at Class.tests.cpp:<line number>
      </failure>
    </testcase>
    <testcase classname="<exe-name>.Nttp_Fixture" name="A TEMPLATE_TEST_CASE_METHOD_SIG based test run that fails - 6" time="{duration}" status="run">
      <failure message="Nttp_Fixture&lt;V>::value == 0" type="REQUIRE">
FAILED:
  REQUIRE( Nttp_Fixture&lt;V>::value == 0 )
with expansion:
  6 == 0
at Class.tests.cpp:<line number>
      </failure>
    </testcase>
    <testcase classname="<exe-name>.Nttp_Fixture" name="A TEMPLATE_TEST_CASE_METHOD_SIG based test run that succeeds - 1" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.Nttp_Fixture" name="A TEMPLATE_TEST_CASE_METHOD_SIG based test run that succeeds - 3" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.Nttp_Fixture" name="A TEMPLATE_TEST_CASE_METHOD_SIG based test run that succeeds - 6" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.Fixture" name="A TEST_CASE_METHOD based test run that fails" time="{duration}" status="run">
      <failure message="m_a == 2" type="REQUIRE">
FAILED:
  REQUIRE( m_a == 2 )
with expansion:
  1 == 2
at Class.tests.cpp:<line number>
      </failure>
    </testcase>
    <testcase classname="<exe-name>.Fixture" name="A TEST_CASE_METHOD based test run that succeeds" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="A Template product test case - Foo&lt;float>" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="A Template product test case - Foo&lt;int>" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="A Template product test case - std::vector&lt;float>" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="A Template product test case - std::vector&lt;int>" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="A Template product test case with array signature - Bar&lt;float, 42>" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="A Template product test case with array signature - Bar&lt;int, 9>" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="A Template product test case with array signature - std::array&lt;float, 42>" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="A Template product test case with array signature - std::array&lt;int, 9>" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="A comparison that uses literals instead of the normal constructor" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="A couple of nested sections followed by a failure" time="{duration}" status="run">
      <failure type="FAIL">
FAILED:
to infinity and beyond
at Misc.tests.cpp:<line number>
      </failure>
    </testcase>
    <testcase classname="<exe-name>.global" name="A couple of nested sections followed by a failure/Outer/Inner" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="A failing expression with a non streamable type is still captured" time="{duration}" status="run">
      <failure message="&amp;o1 == &amp;o2" type="CHECK">
FAILED:
  CHECK( &amp;o1 == &amp;o2 )
with expansion:
  0x<hex digits> == 0x<hex digits>
at Tricky.tests.cpp:<line number>
      </failure>
      <failure message="o1 == o2" type="CHECK">
FAILED:
  CHECK( o1 == o2 )
with expansion:
  {?} == {?}
at Tricky.tests.cpp:<line number>
      </failure>
    </testcase>
    <testcase classname="<exe-name>.global" name="Absolute margin" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="An expression with side-effects should only be evaluated once" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="An unchecked exception reports the line of the last assertion" time="{duration}" status="run">
      <error message="{Unknown expression after the reported line}">
FAILED:
  {Unknown expression after the reported line}
unexpected exception
at Exception.tests.cpp:<line number>
      </error>
    </testcase>
    <testcase classname="<exe-name>.global" name="Anonymous test case 1" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Approx setters validate their arguments" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Approx with exactly-representable margin" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Approximate PI" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Approximate comparisons with different epsilons" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Approximate comparisons with floats" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Approximate comparisons with ints" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Approximate comparisons with mixed numeric types" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Arbitrary predicate matcher/Function pointer" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Arbitrary predicate matcher/Lambdas + different type" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Assertion macros support bit operators and bool conversions" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Assertions then sections" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Assertions then sections/A section" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Assertions then sections/A section/Another section" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Assertions then sections/A section/Another other section" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Basic use of the Contains range matcher/Different argument ranges, same element type, default comparison" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Basic use of the Contains range matcher/Different argument ranges, same element type, custom comparison" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Basic use of the Contains range matcher/Different element type, custom comparisons" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Basic use of the Contains range matcher/Can handle type that requires ADL-found free function begin and end" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Basic use of the Contains range matcher/Initialization with move only types" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Basic use of the Contains range matcher/Matching using matcher" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Basic use of the Empty range matcher/Simple, std-provided containers" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Basic use of the Empty range matcher/Type with empty" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Basic use of the Empty range matcher/Type requires ADL found empty free function" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="CAPTURE can deal with complex expressions" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="CAPTURE can deal with complex expressions involving commas" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="CAPTURE parses string and character constants" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Capture and info messages/Capture should stringify like assertions" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Capture and info messages/Info should NOT stringify the way assertions do" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="CaseInsensitiveEqualsTo is case insensitive/Degenerate cases" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="CaseInsensitiveEqualsTo is case insensitive/Plain comparisons" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="CaseInsensitiveLess is case insensitive/Degenerate cases" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="CaseInsensitiveLess is case insensitive/Plain comparisons" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Character pretty printing/Specifically escaped" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Character pretty printing/General chars" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Character pretty printing/Low ASCII" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Clara::Arg supports single-arg parse the way Opt does" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Clara::Opt supports accept-many lambdas/Parsing fails on multiple options without accept_many" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Clara::Opt supports accept-many lambdas/Parsing succeeds on multiple options with accept_many" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="ColourGuard behaviour/ColourGuard is disengaged by default" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="ColourGuard behaviour/ColourGuard is engaged by op&lt;&lt;" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="ColourGuard behaviour/ColourGuard can be engaged explicitly" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Combining MatchAllOfGeneric does not nest" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Combining MatchAnyOfGeneric does not nest" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Combining MatchNotOfGeneric does not nest" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Combining concrete matchers does not use templated matchers" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Combining only templated matchers" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Combining templated and concrete matchers" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Combining templated matchers" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Commas in various macros are allowed" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Comparing function pointers" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Comparison ops" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Comparison with explicitly convertible types" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Comparisons between ints where one side is computed" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Comparisons between unsigned ints and negative signed ints match c++ standard behaviour" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Comparisons with int literals don't warn when mixing signed/ unsigned" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Composed generic matchers shortcircuit/MatchAllOf" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Composed generic matchers shortcircuit/MatchAnyOf" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Composed matchers shortcircuit/MatchAllOf" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Composed matchers shortcircuit/MatchAnyOf" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Contains string matcher" time="{duration}" status="run">
      <failure message="testStringForMatching(), ContainsSubstring( &quot;not there&quot;, Catch::CaseSensitive::No )" type="CHECK_THAT">
FAILED:
  CHECK_THAT( testStringForMatching(), ContainsSubstring( "not there", Catch::CaseSensitive::No ) )
with expansion:
  "this string contains 'abc' as a substring" contains: "not there" (case
  insensitive)
at Matchers.tests.cpp:<line number>
      </failure>
      <failure message="testStringForMatching(), ContainsSubstring( &quot;STRING&quot; )" type="CHECK_THAT">
FAILED:
  CHECK_THAT( testStringForMatching(), ContainsSubstring( "STRING" ) )
with expansion:
  "this string contains 'abc' as a substring" contains: "STRING"
at Matchers.tests.cpp:<line number>
      </failure>
    </testcase>
    <testcase classname="<exe-name>.global" name="Copy and then generate a range/from var and iterators" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Copy and then generate a range/From a temporary container" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Copy and then generate a range/Final validation" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Cout stream properly declares it writes to stdout" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Custom exceptions can be translated when testing for nothrow" time="{duration}" status="run">
      <error message="throwCustom()" type="REQUIRE_NOTHROW">
FAILED:
  REQUIRE_NOTHROW( throwCustom() )
custom exception - not std
at Exception.tests.cpp:<line number>
      </error>
    </testcase>
    <testcase classname="<exe-name>.global" name="Custom exceptions can be translated when testing for throwing as something else" time="{duration}" status="run">
      <error message="throwCustom(), std::exception" type="REQUIRE_THROWS_AS">
FAILED:
  REQUIRE_THROWS_AS( throwCustom(), std::exception )
custom exception - not std
at Exception.tests.cpp:<line number>
      </error>
    </testcase>
    <testcase classname="<exe-name>.global" name="Custom std-exceptions can be custom translated" time="{duration}" status="run">
      <error type="TEST_CASE">
FAILED:
custom std exception
at Exception.tests.cpp:<line number>
      </error>
    </testcase>
    <testcase classname="<exe-name>.global" name="Default scale is invisible to comparison" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Directly creating an EnumInfo" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Empty stream name opens cout stream" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Empty tag is not allowed" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="EndsWith string matcher" time="{duration}" status="run">
      <failure message="testStringForMatching(), EndsWith( &quot;Substring&quot; )" type="CHECK_THAT">
FAILED:
  CHECK_THAT( testStringForMatching(), EndsWith( "Substring" ) )
with expansion:
  "this string contains 'abc' as a substring" ends with: "Substring"
at Matchers.tests.cpp:<line number>
      </failure>
      <failure message="testStringForMatching(), EndsWith( &quot;this&quot;, Catch::CaseSensitive::No )" type="CHECK_THAT">
FAILED:
  CHECK_THAT( testStringForMatching(), EndsWith( "this", Catch::CaseSensitive::No ) )
with expansion:
  "this string contains 'abc' as a substring" ends with: "this" (case
  insensitive)
at Matchers.tests.cpp:<line number>
      </failure>
    </testcase>
    <testcase classname="<exe-name>.global" name="Enums can quickly have stringification enabled using REGISTER_ENUM" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Enums in namespaces can quickly have stringification enabled using REGISTER_ENUM" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Epsilon only applies to Approx's value" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Equality checks that should fail" time="{duration}" status="run">
      <skipped message="TEST_CASE tagged with !mayfail"/>
      <failure message="data.int_seven == 6" type="CHECK">
FAILED:
  CHECK( data.int_seven == 6 )
with expansion:
  7 == 6
at Condition.tests.cpp:<line number>
      </failure>
      <failure message="data.int_seven == 8" type="CHECK">
FAILED:
  CHECK( data.int_seven == 8 )
with expansion:
  7 == 8
at Condition.tests.cpp:<line number>
      </failure>
      <failure message="data.int_seven == 0" type="CHECK">
FAILED:
  CHECK( data.int_seven == 0 )
with expansion:
  7 == 0
at Condition.tests.cpp:<line number>
      </failure>
      <failure message="data.float_nine_point_one == Approx( 9.11f )" type="CHECK">
FAILED:
  CHECK( data.float_nine_point_one == Approx( 9.11f ) )
with expansion:
  9.1f == Approx( 9.1099996567 )
at Condition.tests.cpp:<line number>
      </failure>
      <failure message="data.float_nine_point_one == Approx( 9.0f )" type="CHECK">
FAILED:
  CHECK( data.float_nine_point_one == Approx( 9.0f ) )
with expansion:
  9.1f == Approx( 9.0 )
at Condition.tests.cpp:<line number>
      </failure>
      <failure message="data.float_nine_point_one == Approx( 1 )" type="CHECK">
FAILED:
  CHECK( data.float_nine_point_one == Approx( 1 ) )
with expansion:
  9.1f == Approx( 1.0 )
at Condition.tests.cpp:<line number>
      </failure>
      <failure message="data.float_nine_point_one == Approx( 0 )" type="CHECK">
FAILED:
  CHECK( data.float_nine_point_one == Approx( 0 ) )
with expansion:
  9.1f == Approx( 0.0 )
at Condition.tests.cpp:<line number>
      </failure>
      <failure message="data.double_pi == Approx( 3.1415 )" type="CHECK">
FAILED:
  CHECK( data.double_pi == Approx( 3.1415 ) )
with expansion:
  3.1415926535 == Approx( 3.1415 )
at Condition.tests.cpp:<line number>
      </failure>
      <failure message="data.str_hello == &quot;goodbye&quot;" type="CHECK">
FAILED:
  CHECK( data.str_hello == "goodbye" )
with expansion:
  "hello" == "goodbye"
at Condition.tests.cpp:<line number>
      </failure>
      <failure message="data.str_hello == &quot;hell&quot;" type="CHECK">
FAILED:
  CHECK( data.str_hello == "hell" )
with expansion:
  "hello" == "hell"
at Condition.tests.cpp:<line number>
      </failure>
      <failure message="data.str_hello == &quot;hello1&quot;" type="CHECK">
FAILED:
  CHECK( data.str_hello == "hello1" )
with expansion:
  "hello" == "hello1"
at Condition.tests.cpp:<line number>
      </failure>
      <failure message="data.str_hello.size() == 6" type="CHECK">
FAILED:
  CHECK( data.str_hello.size() == 6 )
with expansion:
  5 == 6
at Condition.tests.cpp:<line number>
      </failure>
      <failure message="x == Approx( 1.301 )" type="CHECK">
FAILED:
  CHECK( x == Approx( 1.301 ) )
with expansion:
  1.3 == Approx( 1.301 )
at Condition.tests.cpp:<line number>
      </failure>
    </testcase>
    <testcase classname="<exe-name>.global" name="Equality checks that should succeed" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Equals" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Equals string matcher" time="{duration}" status="run">
      <failure message="testStringForMatching(), Equals( &quot;this string contains 'ABC' as a substring&quot; )" type="CHECK_THAT">
FAILED:
  CHECK_THAT( testStringForMatching(), Equals( "this string contains 'ABC' as a substring" ) )
with expansion:
  "this string contains 'abc' as a substring" equals: "this string contains
  'ABC' as a substring"
at Matchers.tests.cpp:<line number>
      </failure>
      <failure message="testStringForMatching(), Equals( &quot;something else&quot;, Catch::CaseSensitive::No )" type="CHECK_THAT">
FAILED:
  CHECK_THAT( testStringForMatching(), Equals( "something else", Catch::CaseSensitive::No ) )
with expansion:
  "this string contains 'abc' as a substring" equals: "something else" (case
  insensitive)
at Matchers.tests.cpp:<line number>
      </failure>
    </testcase>
    <testcase classname="<exe-name>.global" name="Exception as a value (e.g. in REQUIRE_THROWS_MATCHES) can be stringified" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Exception matchers that fail/No exception" time="{duration}" status="run">
      <failure message="doesNotThrow(), SpecialException, ExceptionMatcher{ 1 }" type="CHECK_THROWS_MATCHES">
FAILED:
  CHECK_THROWS_MATCHES( doesNotThrow(), SpecialException, ExceptionMatcher{ 1 } )
at Matchers.tests.cpp:<line number>
      </failure>
      <failure message="doesNotThrow(), SpecialException, ExceptionMatcher{ 1 }" type="REQUIRE_THROWS_MATCHES">
FAILED:
  REQUIRE_THROWS_MATCHES( doesNotThrow(), SpecialException, ExceptionMatcher{ 1 } )
at Matchers.tests.cpp:<line number>
      </failure>
    </testcase>
    <testcase classname="<exe-name>.global" name="Exception matchers that fail/Type mismatch" time="{duration}" status="run">
      <error message="throwsAsInt( 1 ), SpecialException, ExceptionMatcher{ 1 }" type="CHECK_THROWS_MATCHES">
FAILED:
  CHECK_THROWS_MATCHES( throwsAsInt( 1 ), SpecialException, ExceptionMatcher{ 1 } )
Unknown exception
at Matchers.tests.cpp:<line number>
      </error>
      <error message="throwsAsInt( 1 ), SpecialException, ExceptionMatcher{ 1 }" type="REQUIRE_THROWS_MATCHES">
FAILED:
  REQUIRE_THROWS_MATCHES( throwsAsInt( 1 ), SpecialException, ExceptionMatcher{ 1 } )
Unknown exception
at Matchers.tests.cpp:<line number>
      </error>
    </testcase>
    <testcase classname="<exe-name>.global" name="Exception matchers that fail/Contents are wrong" time="{duration}" status="run">
      <failure message="throwsSpecialException( 3 ), SpecialException, ExceptionMatcher{ 1 }" type="CHECK_THROWS_MATCHES">
FAILED:
  CHECK_THROWS_MATCHES( throwsSpecialException( 3 ), SpecialException, ExceptionMatcher{ 1 } )
with expansion:
  SpecialException::what special exception has value of 1
at Matchers.tests.cpp:<line number>
      </failure>
      <failure message="throwsSpecialException( 4 ), SpecialException, ExceptionMatcher{ 1 }" type="REQUIRE_THROWS_MATCHES">
FAILED:
  REQUIRE_THROWS_MATCHES( throwsSpecialException( 4 ), SpecialException, ExceptionMatcher{ 1 } )
with expansion:
  SpecialException::what special exception has value of 1
at Matchers.tests.cpp:<line number>
      </failure>
    </testcase>
    <testcase classname="<exe-name>.global" name="Exception matchers that succeed" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Exception message can be matched" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Exception messages can be tested for/exact match" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Exception messages can be tested for/different case" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Exception messages can be tested for/wildcarded" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Exceptions matchers" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Expected exceptions that don't throw or unexpected exceptions fail the test" time="{duration}" status="run">
      <error message="thisThrows(), std::string" type="CHECK_THROWS_AS">
FAILED:
  CHECK_THROWS_AS( thisThrows(), std::string )
expected exception
at Exception.tests.cpp:<line number>
      </error>
      <failure message="thisDoesntThrow(), std::domain_error" type="CHECK_THROWS_AS">
FAILED:
  CHECK_THROWS_AS( thisDoesntThrow(), std::domain_error )
at Exception.tests.cpp:<line number>
      </failure>
      <error message="thisThrows()" type="CHECK_NOTHROW">
FAILED:
  CHECK_NOTHROW( thisThrows() )
expected exception
at Exception.tests.cpp:<line number>
      </error>
    </testcase>
    <testcase classname="<exe-name>.global" name="FAIL aborts the test" time="{duration}" status="run">
      <failure type="FAIL">
FAILED:
This is a failure
at Message.tests.cpp:<line number>
      </failure>
    </testcase>
    <testcase classname="<exe-name>.global" name="FAIL does not require an argument" time="{duration}" status="run">
      <failure type="FAIL">
FAILED:
at Message.tests.cpp:<line number>
      </failure>
    </testcase>
    <testcase classname="<exe-name>.global" name="FAIL_CHECK does not abort the test" time="{duration}" status="run">
      <failure type="FAIL_CHECK">
FAILED:
This is a failure
at Message.tests.cpp:<line number>
      </failure>
    </testcase>
    <testcase classname="<exe-name>.global" name="Factorials are computed" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Filter generator throws exception for empty generator" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Floating point matchers: double/Relative" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Floating point matchers: double/Relative/Some subnormal values" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Floating point matchers: double/Margin" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Floating point matchers: double/ULPs" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Floating point matchers: double/Composed" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Floating point matchers: double/Constructor validation" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Floating point matchers: double/IsNaN" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Floating point matchers: float/Relative" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Floating point matchers: float/Relative/Some subnormal values" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Floating point matchers: float/Margin" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Floating point matchers: float/ULPs" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Floating point matchers: float/Composed" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Floating point matchers: float/Constructor validation" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Floating point matchers: float/IsNaN" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Generators -- adapters/Filtering by predicate/Basic usage" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Generators -- adapters/Filtering by predicate/Throws if there are no matching values" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Generators -- adapters/Shortening a range" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Generators -- adapters/Transforming elements/Same type" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Generators -- adapters/Transforming elements/Different type" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Generators -- adapters/Transforming elements/Different deduced type" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Generators -- adapters/Repeating a generator" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Generators -- adapters/Chunking a generator into sized pieces/Number of elements in source is divisible by chunk size" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Generators -- adapters/Chunking a generator into sized pieces/Number of elements in source is not divisible by chunk size" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Generators -- adapters/Chunking a generator into sized pieces/Chunk size of zero" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Generators -- adapters/Chunking a generator into sized pieces/Throws on too small generators" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Generators -- simple/one" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Generators -- simple/two" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Generators internals/Single value" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Generators internals/Preset values" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Generators internals/Generator combinator" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Generators internals/Explicitly typed generator sequence" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Generators internals/Filter generator/Simple filtering" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Generators internals/Filter generator/Filter out multiple elements at the start and end" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Generators internals/Filter generator/Throws on construction if it can't get initial element" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Generators internals/Take generator/Take less" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Generators internals/Take generator/Take more" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Generators internals/Map with explicit return type" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Generators internals/Map with deduced return type" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Generators internals/Repeat/Singular repeat" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Generators internals/Repeat/Actual repeat" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Generators internals/Range/Positive auto step/Integer" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Generators internals/Range/Negative auto step/Integer" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Generators internals/Range/Positive manual step/Integer/Exact" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Generators internals/Range/Positive manual step/Integer/Slightly over end" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Generators internals/Range/Positive manual step/Integer/Slightly under end" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Generators internals/Range/Positive manual step/Floating Point/Exact" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Generators internals/Range/Positive manual step/Floating Point/Slightly over end" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Generators internals/Range/Positive manual step/Floating Point/Slightly under end" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Generators internals/Range/Negative manual step/Integer/Exact" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Generators internals/Range/Negative manual step/Integer/Slightly over end" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Generators internals/Range/Negative manual step/Integer/Slightly under end" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Greater-than inequalities with different epsilons" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Hashers with different seed produce different hash with same test case" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Hashers with same seed produce same hash" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Hashing different test cases produces different result/Different test name" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Hashing different test cases produces different result/Different classname" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Hashing different test cases produces different result/Different tags" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Hashing test case produces same hash across multiple calls" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="INFO and WARN do not abort tests" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="INFO gets logged on failure" time="{duration}" status="run">
      <failure message="a == 1" type="REQUIRE">
FAILED:
  REQUIRE( a == 1 )
with expansion:
  2 == 1
this message should be logged
so should this
at Message.tests.cpp:<line number>
      </failure>
    </testcase>
    <testcase classname="<exe-name>.global" name="INFO gets logged on failure, even if captured before successful assertions" time="{duration}" status="run">
      <failure message="a == 1" type="CHECK">
FAILED:
  CHECK( a == 1 )
with expansion:
  2 == 1
this message may be logged later
this message should be logged
at Message.tests.cpp:<line number>
      </failure>
      <failure message="a == 0" type="CHECK">
FAILED:
  CHECK( a == 0 )
with expansion:
  2 == 0
this message may be logged later
this message should be logged
and this, but later
at Message.tests.cpp:<line number>
      </failure>
    </testcase>
    <testcase classname="<exe-name>.global" name="INFO is reset for each loop" time="{duration}" status="run">
      <failure message="i &lt; 10" type="REQUIRE">
FAILED:
  REQUIRE( i &lt; 10 )
with expansion:
  10 &lt; 10
current counter 10
i := 10
at Message.tests.cpp:<line number>
      </failure>
    </testcase>
    <testcase classname="<exe-name>.global" name="Inequality checks that should fail" time="{duration}" status="run">
      <skipped message="TEST_CASE tagged with !mayfail"/>
      <failure message="data.int_seven != 7" type="CHECK">
FAILED:
  CHECK( data.int_seven != 7 )
with expansion:
  7 != 7
at Condition.tests.cpp:<line number>
      </failure>
      <failure message="data.float_nine_point_one != Approx( 9.1f )" type="CHECK">
FAILED:
  CHECK( data.float_nine_point_one != Approx( 9.1f ) )
with expansion:
  9.1f != Approx( 9.1000003815 )
at Condition.tests.cpp:<line number>
      </failure>
      <failure message="data.double_pi != Approx( 3.1415926535 )" type="CHECK">
FAILED:
  CHECK( data.double_pi != Approx( 3.1415926535 ) )
with expansion:
  3.1415926535 != Approx( 3.1415926535 )
at Condition.tests.cpp:<line number>
      </failure>
      <failure message="data.str_hello != &quot;hello&quot;" type="CHECK">
FAILED:
  CHECK( data.str_hello != "hello" )
with expansion:
  "hello" != "hello"
at Condition.tests.cpp:<line number>
      </failure>
      <failure message="data.str_hello.size() != 5" type="CHECK">
FAILED:
  CHECK( data.str_hello.size() != 5 )
with expansion:
  5 != 5
at Condition.tests.cpp:<line number>
      </failure>
    </testcase>
    <testcase classname="<exe-name>.global" name="Inequality checks that should succeed" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Lambdas in assertions" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Less-than inequalities with different epsilons" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="ManuallyRegistered" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Matchers can be (AllOf) composed with the &amp;&amp; operator" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Matchers can be (AnyOf) composed with the || operator" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Matchers can be composed with both &amp;&amp; and ||" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Matchers can be composed with both &amp;&amp; and || - failing" time="{duration}" status="run">
      <failure message="testStringForMatching(), ( ContainsSubstring( &quot;string&quot; ) || ContainsSubstring( &quot;different&quot; ) ) &amp;&amp; ContainsSubstring( &quot;random&quot; )" type="CHECK_THAT">
FAILED:
  CHECK_THAT( testStringForMatching(), ( ContainsSubstring( "string" ) || ContainsSubstring( "different" ) ) &amp;&amp; ContainsSubstring( "random" ) )
with expansion:
  "this string contains 'abc' as a substring" ( ( contains: "string" or
  contains: "different" ) and contains: "random" )
at Matchers.tests.cpp:<line number>
      </failure>
    </testcase>
    <testcase classname="<exe-name>.global" name="Matchers can be negated (Not) with the ! operator" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Matchers can be negated (Not) with the ! operator - failing" time="{duration}" status="run">
      <failure message="testStringForMatching(), !ContainsSubstring( &quot;substring&quot; )" type="CHECK_THAT">
FAILED:
  CHECK_THAT( testStringForMatching(), !ContainsSubstring( "substring" ) )
with expansion:
  "this string contains 'abc' as a substring" not contains: "substring"
at Matchers.tests.cpp:<line number>
      </failure>
    </testcase>
    <testcase classname="<exe-name>.global" name="Mayfail test ca