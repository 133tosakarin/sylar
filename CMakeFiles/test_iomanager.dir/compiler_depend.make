xe-name>.global" name="Multireporter calls reporters and listeners in correct order" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Multireporter updates ReporterPreferences properly" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Multireporter updates ReporterPreferences properly/Adding listeners" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Multireporter updates ReporterPreferences properly/Adding reporters" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Nested generators and captured variables" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Nice descriptive name" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Non-std exceptions can be translated" time="{duration}" status="run">
      <error type="TEST_CASE">
FAILED:
custom exception
at Exception.tests.cpp:<line number>
      </error>
    </testcase>
    <testcase classname="<exe-name>.global" name="Objects that evaluated in boolean contexts can be checked" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Optionally static assertions" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Ordering comparison checks that should fail" time="{duration}" status="run">
      <failure message="data.int_seven > 7" type="CHECK">
FAILED:
  CHECK( data.int_seven > 7 )
with expansion:
  7 > 7
at Condition.tests.cpp:<line number>
      </failure>
      <failure message="data.int_seven &lt; 7" type="CHECK">
FAILED:
  CHECK( data.int_seven &lt; 7 )
with expansion:
  7 &lt; 7
at Condition.tests.cpp:<line number>
      </failure>
      <failure message="data.int_seven > 8" type="CHECK">
FAILED:
  CHECK( data.int_seven > 8 )
with expansion:
  7 > 8
at Condition.tests.cpp:<line number>
      </failure>
      <failure message="data.int_seven &lt; 6" type="CHECK">
FAILED:
  CHECK( data.int_seven &lt; 6 )
with expansion:
  7 &lt; 6
at Condition.tests.cpp:<line number>
      </failure>
      <failure message="data.int_seven &lt; 0" type="CHECK">
FAILED:
  CHECK( data.int_seven &lt; 0 )
with expansion:
  7 &lt; 0
at Condition.tests.cpp:<line number>
      </failure>
      <failure message="data.int_seven &lt; -1" type="CHECK">
FAILED:
  CHECK( data.int_seven &lt; -1 )
with expansion:
  7 &lt; -1
at Condition.tests.cpp:<line number>
      </failure>
      <failure message="data.int_seven >= 8" type="CHECK">
FAILED:
  CHECK( data.int_seven >= 8 )
with expansion:
  7 >= 8
at Condition.tests.cpp:<line number>
      </failure>
      <failure message="data.int_seven &lt;= 6" type="CHECK">
FAILED:
  CHECK( data.int_seven &lt;= 6 )
with expansion:
  7 &lt;= 6
at Condition.tests.cpp:<line number>
      </failure>
      <failure message="data.float_nine_point_one &lt; 9" type="CHECK">
FAILED:
  CHECK( data.float_nine_point_one &lt; 9 )
with expansion:
  9.1f &lt; 9
at Condition.tests.cpp:<line number>
      </failure>
      <failure message="data.float_nine_point_one > 10" type="CHECK">
FAILED:
  CHECK( data.float_nine_point_one > 10 )
with expansion:
  9.1f > 10
at Condition.tests.cpp:<line number>
      </failure>
      <failure message="data.float_nine_point_one > 9.2" type="CHECK">
FAILED:
  CHECK( data.float_nine_point_one > 9.2 )
with expansion:
  9.1f > 9.2
at Condition.tests.cpp:<line number>
      </failure>
      <failure message="data.str_hello > &quot;hello&quot;" type="CHECK">
FAILED:
  CHECK( data.str_hello > "hello" )
with expansion:
  "hello" > "hello"
at Condition.tests.cpp:<line number>
      </failure>
      <failure message="data.str_hello &lt; &quot;hello&quot;" type="CHECK">
FAILED:
  CHECK( data.str_hello &lt; "hello" )
with expansion:
  "hello" &lt; "hello"
at Condition.tests.cpp:<line number>
      </failure>
      <failure message="data.str_hello > &quot;hellp&quot;" type="CHECK">
FAILED:
  CHECK( data.str_hello > "hellp" )
with expansion:
  "hello" > "hellp"
at Condition.tests.cpp:<line number>
      </failure>
      <failure message="data.str_hello > &quot;z&quot;" type="CHECK">
FAILED:
  CHECK( data.str_hello > "z" )
with expansion:
  "hello" > "z"
at Condition.tests.cpp:<line number>
      </failure>
      <failure message="data.str_hello &lt; &quot;hellm&quot;" type="CHECK">
FAILED:
  CHECK( data.str_hello &lt; "hellm" )
with expansion:
  "hello" &lt; "hellm"
at Condition.tests.cpp:<line number>
      </failure>
      <failure message="data.str_hello &lt; &quot;a&quot;" type="CHECK">
FAILED:
  CHECK( data.str_hello &lt; "a" )
with expansion:
  "hello" &lt; "a"
at Condition.tests.cpp:<line number>
      </failure>
      <failure message="data.str_hello >= &quot;z&quot;" type="CHECK">
FAILED:
  CHECK( data.str_hello >= "z" )
with expansion:
  "hello" >= "z"
at Condition.tests.cpp:<line number>
      </failure>
      <failure message="data.str_hello &lt;= &quot;a&quot;" type="CHECK">
FAILED:
  CHECK( data.str_hello &lt;= "a" )
with expansion:
  "hello" &lt;= "a"
at Condition.tests.cpp:<line number>
      </failure>
    </testcase>
    <testcase classname="<exe-name>.global" name="Ordering comparison checks that should succeed" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Our PCG implementation provides expected results for known seeds/Default seeded" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Our PCG implementation provides expected results for known seeds/Specific seed" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Output from all sections is reported/one" time="{duration}" status="run">
      <failure type="FAIL">
FAILED:
Message from section one
at Message.tests.cpp:<line number>
      </failure>
    </testcase>
    <testcase classname="<exe-name>.global" name="Output from all sections is reported/two" time="{duration}" status="run">
      <failure type="FAIL">
FAILED:
Message from section two
at Message.tests.cpp:<line number>
      </failure>
    </testcase>
    <testcase classname="<exe-name>.global" name="Overloaded comma or address-of operators are not used" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Parse uints/proper inputs" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Parse uints/Bad inputs" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Parsed tags are matched case insensitive" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Parsing sharding-related cli flags/shard-count" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Parsing sharding-related cli flags/Negative shard count reports error" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Parsing sharding-related cli flags/Zero shard count reports error" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Parsing sharding-related cli flags/shard-index" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Parsing sharding-related cli flags/Negative shard index reports error" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Parsing sharding-related cli flags/Shard index 0 is accepted" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Parsing tags with non-alphabetical characters is pass-through" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Parsing warnings/NoAssertions" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Parsing warnings/NoTests is no longer supported" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Parsing warnings/Combining multiple warnings" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Pointers can be compared to null" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Precision of floating point stringification can be set/Floats" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Precision of floating point stringification can be set/Double" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Predicate matcher can accept const char*" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Process can be configured on command line/empty args don't cause a crash" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Process can be configured on command line/default - no arguments" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Process can be configured on command line/test lists/Specify one test case using" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Process can be configured on command line/test lists/Specify one test case exclusion using exclude:" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Process can be configured on command line/test lists/Specify one test case exclusion using ~" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Process can be configured on command line/reporter/-r/console" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Process can be configured on command line/reporter/-r/xml" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Process can be configured on command line/reporter/--reporter/junit" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Process can be configured on command line/reporter/must match one of the available ones" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Process can be configured on command line/reporter/With output file" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Process can be configured on command line/reporter/With Windows-like absolute path as output file" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Process can be configured on command line/reporter/Multiple reporters/All with output files" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Process can be configured on command line/reporter/Multiple reporters/Mixed output files and default output" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Process can be configured on command line/reporter/Multiple reporters/cannot have multiple reporters with default output" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Process can be configured on command line/debugger/-b" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Process can be configured on command line/debugger/--break" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Process can be configured on command line/abort/-a aborts after first failure" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Process can be configured on command line/abort/-x 2 aborts after two failures" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Process can be configured on command line/abort/-x must be numeric" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Process can be configured on command line/abort/wait-for-keypress/Accepted options" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Process can be configured on command line/abort/wait-for-keypress/invalid options are reported" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Process can be configured on command line/nothrow/-e" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Process can be configured on command line/nothrow/--nothrow" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Process can be configured on command line/output filename/-o filename" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Process can be configured on command line/output filename/--out" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Process can be configured on command line/combinations/Single character flags can be combined" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Process can be configured on command line/use-colour/without option" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Process can be configured on command line/use-colour/auto" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Process can be configured on command line/use-colour/yes" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Process can be configured on command line/use-colour/no" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Process can be configured on command line/use-colour/error" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Process can be configured on command line/Benchmark options/samples" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Process can be configured on command line/Benchmark options/resamples" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Process can be configured on command line/Benchmark options/confidence-interval" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Process can be configured on command line/Benchmark options/no-analysis" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Process can be configured on command line/Benchmark options/warmup-time" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Product with differing arities - std::tuple&lt;int, double, float>" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Product with differing arities - std::tuple&lt;int, double>" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Product with differing arities - std::tuple&lt;int>" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Random seed generation accepts known methods" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Random seed generation reports unknown methods" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Range type with sentinel" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Reconstruction should be based on stringification: #914" time="{duration}" status="run">
      <failure message="truthy(false)" type="CHECK">
FAILED:
  CHECK( truthy(false) )
with expansion:
  Hey, its truthy!
at Decomposition.tests.cpp:<line number>
      </failure>
    </testcase>
    <testcase classname="<exe-name>.global" name="Regex string matcher" time="{duration}" status="run">
      <failure message="testStringForMatching(), Matches( &quot;this STRING contains 'abc' as a substring&quot; )" type="CHECK_THAT">
FAILED:
  CHECK_THAT( testStringForMatching(), Matches( "this STRING contains 'abc' as a substring" ) )
with expansion:
  "this string contains 'abc' as a substring" matches "this STRING contains
  'abc' as a substring" case sensitively
at Matchers.tests.cpp:<line number>
      </failure>
      <failure message="testStringForMatching(), Matches( &quot;contains 'abc' as a substring&quot; )" type="CHECK_THAT">
FAILED:
  CHECK_THAT( testStringForMatching(), Matches( "contains 'abc' as a substring" ) )
with expansion:
  "this string contains 'abc' as a substring" matches "contains 'abc' as a
  substring" case sensitively
at Matchers.tests.cpp:<line number>
      </failure>
      <failure message="testStringForMatching(), Matches( &quot;this string contains 'abc' as a&quot; )" type="CHECK_THAT">
FAILED:
  CHECK_THAT( testStringForMatching(), Matches( "this string contains 'abc' as a" ) )
with expansion:
  "this string contains 'abc' as a substring" matches "this string contains
  'abc' as a" case sensitively
at Matchers.tests.cpp:<line number>
      </failure>
    </testcase>
    <testcase classname="<exe-name>.global" name="Registering reporter with '::' in name fails" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Regression test #1" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Reporter's write listings to provided stream" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Reporter's write listings to provided stream/Automake reporter lists tags" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Reporter's write listings to provided stream/Automake reporter lists reporters" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Reporter's write listings to provided stream/Automake reporter lists tests" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Reporter's write listings to provided stream/compact reporter lists tags" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Reporter's write listings to provided stream/compact reporter lists reporters" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Reporter's write listings to provided stream/compact reporter lists tests" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Reporter's write listings to provided stream/console reporter lists tags" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Reporter's write listings to provided stream/console reporter lists reporters" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Reporter's write listings to provided stream/console reporter lists tests" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Reporter's write listings to provided stream/JUnit reporter lists tags" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Reporter's write listings to provided stream/JUnit reporter lists reporters" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Reporter's write listings to provided stream/JUnit reporter lists tests" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Reporter's write listings to provided stream/SonarQube reporter lists tags" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Reporter's write listings to provided stream/SonarQube reporter lists reporters" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Reporter's write listings to provided stream/SonarQube reporter lists tests" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Reporter's write listings to provided stream/TAP reporter lists tags" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Reporter's write listings to provided stream/TAP reporter lists reporters" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Reporter's write listings to provided stream/TAP reporter lists tests" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Reporter's write listings to provided stream/TeamCity reporter lists tags" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Reporter's write listings to provided stream/TeamCity reporter lists reporters" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Reporter's write listings to provided stream/TeamCity reporter lists tests" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Reporter's write listings to provided stream/XML reporter lists tags" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Reporter's write listings to provided stream/XML reporter lists reporters" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Reporter's write listings to provided stream/XML reporter lists tests" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Reproducer for #2309 - a very long description past 80 chars (default console width) with a late colon : blablabla" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="SUCCEED counts as a test pass" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="SUCCEED does not require an argument" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.Fixture" name="Scenario: BDD tests requiring Fixtures to provide commonly-accessed data or methods/Given: No operations precede me" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.Fixture" name="Scenario: BDD tests requiring Fixtures to provide commonly-accessed data or methods/Given: No operations precede me/When: We get the count/Then: Subsequently values are higher" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Scenario: Do that thing with the thing/Given: This stuff exists/And given: And some assumption/When: I do this/Then: it should do this" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Scenario: Do that thing with the thing/Given: This stuff exists/And given: And some assumption/When: I do this/Then: it should do this/And: do that" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Scenario: This is a really long scenario name to see how the list command deals with wrapping/Given: A section name that is so long that it cannot fit in a single console width/When: The test headers are printed as part of the normal running of the scenario/Then: The, deliberately very long and overly verbose (you see what I did there?) section names must wrap, along with an indent" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Scenario: Vector resizing affects size and capacity/Given: an empty vector" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Scenario: Vector resizing affects size and capacity/Given: an empty vector/When: it is made larger/Then: the size and capacity go up" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Scenario: Vector resizing affects size and capacity/Given: an empty vector/When: it is made larger/Then: the size and capacity go up/And when: it is made smaller again/Then: the size goes down but the capacity stays the same" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Scenario: Vector resizing affects size and capacity/Given: an empty vector/When: we reserve more space/Then: The capacity is increased but the size remains the same" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Sends stuff to stdout and stderr" time="{duration}" status="run">
      <system-out>
A string sent directly to stdout
      </system-out>
      <system-err>
A string sent directly to stderr
A string sent to stderr via clog
      </system-err>
    </testcase>
    <testcase classname="<exe-name>.global" name="Some simple comparisons between doubles" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Standard output from all sections is reported/two" time="{duration}" status="run">
      <system-out>
Message from section one
Message from section two
      </system-out>
    </testcase>
    <testcase classname="<exe-name>.global" name="StartsWith string matcher" time="{duration}" status="run">
      <failure message="testStringForMatching(), StartsWith( &quot;This String&quot; )" type="CHECK_THAT">
FAILED:
  CHECK_THAT( testStringForMatching(), StartsWith( "This String" ) )
with expansion:
  "this string contains 'abc' as a substring" starts with: "This String"
at Matchers.tests.cpp:<line number>
      </failure>
      <failure message="testStringForMatching(), StartsWith( &quot;string&quot;, Catch::CaseSensitive::No )" type="CHECK_THAT">
FAILED:
  CHECK_THAT( testStringForMatching(), StartsWith( "string", Catch::CaseSensitive::No ) )
with expansion:
  "this string contains 'abc' as a substring" starts with: "string" (case
  insensitive)
at Matchers.tests.cpp:<line number>
      </failure>
    </testcase>
    <testcase classname="<exe-name>.global" name="Static arrays are convertible to string/Single item" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Static arrays are convertible to string/Multiple" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Static arrays are convertible to string/Non-trivial inner items" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="String matchers" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="StringRef/Empty string" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="StringRef/From string literal" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="StringRef/From sub-string" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="StringRef/Copy construction is shallow" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="StringRef/Copy assignment is shallow" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="StringRef/Substrings/zero-based substring" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="StringRef/Substrings/non-zero-based substring" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="StringRef/Substrings/Pointer values of full refs should match" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="StringRef/Substrings/Pointer values of substring refs should also match" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="StringRef/Substrings/Past the end substring" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="StringRef/Substrings/Substring off the end are trimmed" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="StringRef/Substrings/substring start after the end is empty" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="StringRef/Comparisons are deep" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="StringRef/from std::string/implicitly constructed" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="StringRef/from std::string/explicitly constructed" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="StringRef/from std::string/assigned" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="StringRef/to std::string/explicitly constructed" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="StringRef/to std::string/assigned" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="StringRef/std::string += StringRef" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="StringRef/StringRef + StringRef" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="StringRef at compilation time/Simple constructors" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="StringRef at compilation time/UDL construction" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Stringifying char arrays with statically known sizes - char" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Stringifying char arrays with statically known sizes - signed char" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Stringifying char arrays with statically known sizes - unsigned char" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Stringifying std::chrono::duration helpers" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Stringifying std::chrono::duration with weird ratios" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Stringifying std::chrono::time_point&lt;system_clock>" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Tabs and newlines show in output" time="{duration}" status="run">
      <failure message="s1 == s2" type="CHECK">
FAILED:
  CHECK( s1 == s2 )
with expansion:
  "if ($b == 10) {
  		$a	= 20;
  }"
  ==
  "if ($b == 10) {
  	$a = 20;
  }
  "
at Misc.tests.cpp:<line number>
      </failure>
    </testcase>
    <testcase classname="<exe-name>.global" name="Tag alias can be registered against tag patterns/The same tag alias can only be registered once" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Tag alias can be registered against tag patterns/Tag aliases must be of the form [@name]" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Tags with spaces and non-alphanumerical characters are accepted" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.Template_Fixture" name="Template test case method with test types specified inside std::tuple - MyTypes - 0" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.Template_Fixture" name="Template test case method with test types specified inside std::tuple - MyTypes - 1" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.Template_Fixture" name="Template test case method with test types specified inside std::tuple - MyTypes - 2" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Template test case with test types specified inside non-copyable and non-movable std::tuple - NonCopyableAndNonMovableTypes - 0" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Template test case with test types specified inside non-copyable and non-movable std::tuple - NonCopyableAndNonMovableTypes - 1" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Template test case with test types specified inside non-default-constructible std::tuple - MyNonDefaultConstructibleTypes - 0" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Template test case with test types specified inside non-default-constructible std::tuple - MyNonDefaultConstructibleTypes - 1" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Template test case with test types specified inside std::tuple - MyTypes - 0" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Template test case with test types specified inside std::tuple - MyTypes - 1" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Template test case with test types specified inside std::tuple - MyTypes - 2" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="TemplateTest: vectors can be sized and resized - float" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="TemplateTest: vectors can be sized and resized - float/resizing bigger changes size and capacity" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="TemplateTest: vectors can be sized and resized - float/resizing smaller changes size but not capacity" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="TemplateTest: vectors can be sized and resized - float/resizing smaller changes size but not capacity/We can use the 'swap trick' to reset the capacity" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="TemplateTest: vectors can be sized and resized - float/reserving bigger changes capacity but not size" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="TemplateTest: vectors can be sized and resized - float/reserving smaller does not change size or capacity" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="TemplateTest: vectors can be sized and resized - int" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="TemplateTest: vectors can be sized and resized - int/resizing bigger changes size and capacity" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="TemplateTest: vectors can be sized and resized - int/resizing smaller changes size but not capacity" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="TemplateTest: vectors can be sized and resized - int/resizing smaller changes size but not capacity/We can use the 'swap trick' to reset the capacity" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="TemplateTest: vectors can be sized and resized - int/reserving bigger changes capacity but not size" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="TemplateTest: vectors can be sized and resized - int/reserving smaller does not change size or capacity" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="TemplateTest: vectors can be sized and resized - std::string" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="TemplateTest: vectors can be sized and resized - std::string/resizing bigger changes size and capacity" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="TemplateTest: vectors can be sized and resized - std::string/resizing smaller changes size but not capacity" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="TemplateTest: vectors can be sized and resized - std::string/resizing smaller changes size but not capacity/We can use the 'swap trick' to reset the capacity" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="TemplateTest: vectors can be sized and resized - std::string/reserving bigger changes capacity but not size" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="TemplateTest: vectors can be sized and resized - std::string/reserving smaller does not change size or capacity" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="TemplateTest: vectors can be sized and resized - std::tuple&lt;int,float>" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="TemplateTest: vectors can be sized and resized - std::tuple&lt;int,float>/resizing bigger changes size and capacity" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="TemplateTest: vectors can be sized and resized - std::tuple&lt;int,float>/resizing smaller changes size but not capacity" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="TemplateTest: vectors can be sized and resized - std::tuple&lt;int,float>/resizing smaller changes size but not capacity/We can use the 'swap trick' to reset the capacity" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="TemplateTest: vectors can be sized and resized - std::tuple&lt;int,float>/reserving bigger changes capacity but not size" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="TemplateTest: vectors can be sized and resized - std::tuple&lt;int,float>/reserving smaller does not change size or capacity" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="TemplateTestSig: vectors can be sized and resized - (std::tuple&lt;int, float>), 6" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="TemplateTestSig: vectors can be sized and resized - (std::tuple&lt;int, float>), 6/resizing bigger changes size and capacity" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="TemplateTestSig: vectors can be sized and resized - (std::tuple&lt;int, float>), 6/resizing smaller changes size but not capacity" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="TemplateTestSig: vectors can be sized and resized - (std::tuple&lt;int, float>), 6/resizing smaller changes size but not capacity/We can use the 'swap trick' to reset the capacity" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="TemplateTestSig: vectors can be sized and resized - (std::tuple&lt;int, float>), 6/reserving bigger changes capacity but not size" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="TemplateTestSig: vectors can be sized and resized - (std::tuple&lt;int, float>), 6/reserving smaller does not change size or capacity" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="TemplateTestSig: vectors can be sized and resized - float,4" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="TemplateTestSig: vectors can be sized and resized - float,4/resizing bigger changes size and capacity" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="TemplateTestSig: vectors can be sized and resized - float,4/resizing smaller changes size but not capacity" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="TemplateTestSig: vectors can be sized and resized - float,4/resizing smaller changes size but not capacity/We can use the 'swap trick' to reset the capacity" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="TemplateTestSig: vectors can be sized and resized - float,4/reserving bigger changes capacity but not size" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="TemplateTestSig: vectors can be sized and resized - float,4/reserving smaller does not change size or capacity" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="TemplateTestSig: vectors can be sized and resized - int,5" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="TemplateTestSig: vectors can be sized and resized - int,5/resizing bigger changes size and capacity" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="TemplateTestSig: vectors can be sized and resized - int,5/resizing smaller changes size but not capacity" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="TemplateTestSig: vectors can be sized and resized - int,5/resizing smaller changes size but not capacity/We can use the 'swap trick' to reset the capacity" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="TemplateTestSig: vectors can be sized and resized - int,5/reserving bigger changes capacity but not size" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="TemplateTestSig: vectors can be sized and resized - int,5/reserving smaller does not change size or capacity" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="TemplateTestSig: vectors can be sized and resized - std::string,15" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="TemplateTestSig: vectors can be sized and resized - std::string,15/resizing bigger changes size and capacity" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="TemplateTestSig: vectors can be sized and resized - std::string,15/resizing smaller changes size but not capacity" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="TemplateTestSig: vectors can be sized and resized - std::string,15/resizing smaller changes size but not capacity/We can use the 'swap trick' to reset the capacity" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="TemplateTestSig: vectors can be sized and resized - std::string,15/reserving bigger changes capacity but not size" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="TemplateTestSig: vectors can be sized and resized - std::string,15/reserving smaller does not change size or capacity" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Test case with identical tags keeps just one" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Test case with one argument" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Test enum bit values" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Test with special, characters &quot;in name" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Testing checked-if" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Testing checked-if 2" time="{duration}" status="run">
      <skipped message="TEST_CASE tagged with !mayfail"/>
      <failure type="FAIL">
FAILED:
at Misc.tests.cpp:<line number>
      </failure>
    </testcase>
    <testcase classname="<exe-name>.global" name="Testing checked-if 3" time="{duration}" status="run">
      <skipped message="TEST_CASE tagged with !mayfail"/>
      <failure type="FAIL">
FAILED:
at Misc.tests.cpp:<line number>
      </failure>
    </testcase>
    <testcase classname="<exe-name>.global" name="The NO_FAIL macro reports a failure but does not fail the test" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="The default listing implementation write to provided stream/Listing tags" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="The default listing implementation write to provided stream/Listing reporters" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="The default listing implementation write to provided stream/Listing tests" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="The default listing implementation write to provided stream/Listing listeners" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="This test 'should' fail but doesn't" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Thrown string literals are translated" time="{duration}" status="run">
      <error type="TEST_CASE">
FAILED:
For some reason someone is throwing a string literal!
at Exception.tests.cpp:<line number>
      </error>
    </testcase>
    <testcase classname="<exe-name>.global" name="Tracker" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Tracker/successfully close one section" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Tracker/fail one section" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Tracker/fail one section/re-enter after failed section" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Tracker/fail one section/re-enter after failed section and find next section" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Tracker/successfully close one section, then find another" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Tracker/successfully close one section, then find another/Re-enter - skips S1 and enters S2" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Tracker/successfully close one section, then find another/Re-enter - skips S1 and enters S2/Successfully close S2" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Tracker/successfully close one section, then find another/Re-enter - skips S1 and enters S2/fail S2" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Tracker/open a nested section" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Trim strings" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Type conversions of RangeEquals and similar/Container conversions/Two equal containers of different container types" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Type conversions of RangeEquals and similar/Container conversions/Two equal containers of different container types (differ in array N)" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Type conversions of RangeEquals and similar/Container conversions/Two equal containers of different container types and value types" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Type conversions of RangeEquals and similar/Container conversions/Two equal containers, one random access, one not" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Type conversions of RangeEquals and similar/Value type/Two equal containers of different value types" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Type conversions of RangeEquals and similar/Value type/Two non-equal containers of different value types" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Type conversions of RangeEquals and similar/Ranges with begin that needs ADL" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Type conversions of RangeEquals and similar/Custom predicate/Two equal non-empty containers (close enough)" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Unexpected exceptions can be translated" time="{duration}" status="run">
      <error type="TEST_CASE">
FAILED:
3.14
at Exception.tests.cpp:<line number>
      </error>
    </testcase>
    <testcase classname="<exe-name>.global" name="Upcasting special member functions/Move constructor" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Upcasting special member functions/move assignment" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Usage of AllMatch range matcher/Basic usage" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Usage of AllMatch range matcher/Type requires ADL found begin and end" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Usage of AllMatch range matcher/Shortcircuiting/All are read" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Usage of AllMatch range matcher/Shortcircuiting/Short-circuited" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Usage of AllTrue range matcher/Basic usage/All true evaluates to true" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Usage of AllTrue range matcher/Basic usage/Empty evaluates to true" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Usage of AllTrue range matcher/Basic usage/One false evalutes to false" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Usage of AllTrue range matcher/Basic usage/All false evaluates to false" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Usage of AllTrue range matcher/Contained type is convertible to bool/All true evaluates to true" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Usage of AllTrue range matcher/Contained type is convertible to bool/One false evalutes to false" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Usage of AllTrue range matcher/Contained type is convertible to bool/All false evaluates to false" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Usage of AllTrue range matcher/Shortcircuiting/All are read" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Usage of AllTrue range matcher/Shortcircuiting/Short-circuited" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Usage of AnyMatch range matcher/Basic usage" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Usage of AnyMatch range matcher/Type requires ADL found begin and end" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Usage of AnyMatch range matcher/Shortcircuiting/All are read" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Usage of AnyMatch range matcher/Shortcircuiting/Short-circuited" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Usage of AnyTrue range matcher/Basic usage/All true evaluates to true" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Usage of AnyTrue range matcher/Basic usage/Empty evaluates to false" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Usage of AnyTrue range matcher/Basic usage/One true evalutes to true" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Usage of AnyTrue range matcher/Basic usage/All false evaluates to false" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Usage of AnyTrue range matcher/Contained type is convertible to bool/All true evaluates to true" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Usage of AnyTrue range matcher/Contained type is convertible to bool/One true evalutes to true" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Usage of AnyTrue range matcher/Contained type is convertible to bool/All false evaluates to false" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Usage of AnyTrue range matcher/Shortcircuiting/All are read" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Usage of AnyTrue range matcher/Shortcircuiting/Short-circuited" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Usage of NoneMatch range matcher/Basic usage" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Usage of NoneMatch range matcher/Type requires ADL found begin and end" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Usage of NoneMatch range matcher/Shortcircuiting/All are read" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Usage of NoneMatch range matcher/Shortcircuiting/Short-circuited" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Usage of NoneTrue range matcher/Basic usage/All true evaluates to false" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Usage of NoneTrue range matcher/Basic usage/Empty evaluates to true" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Usage of NoneTrue range matcher/Basic usage/One true evalutes to false" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Usage of NoneTrue range matcher/Basic usage/All false evaluates to true" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Usage of NoneTrue range matcher/Contained type is convertible to bool/All true evaluates to false" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Usage of NoneTrue range matcher/Contained type is convertible to bool/One true evalutes to false" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Usage of NoneTrue range matcher/Contained type is convertible to bool/All false evaluates to true" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Usage of NoneTrue range matcher/Shortcircuiting/All are read" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Usage of NoneTrue range matcher/Shortcircuiting/Short-circuited" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Usage of RangeEquals range matcher/Basic usage/Empty container matches empty container" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Usage of RangeEquals range matcher/Basic usage/Empty container does not match non-empty container" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Usage of RangeEquals range matcher/Basic usage/Two equal 1-length non-empty containers" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Usage of RangeEquals range matcher/Basic usage/Two equal-sized, equal, non-empty containers" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Usage of RangeEquals range matcher/Basic usage/Two equal-sized, non-equal, non-empty containers" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Usage of RangeEquals range matcher/Basic usage/Two non-equal-sized, non-empty containers (with same first elements)" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Usage of RangeEquals range matcher/Custom predicate/Two equal non-empty containers (close enough)" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Usage of RangeEquals range matcher/Custom predicate/Two non-equal non-empty containers (close enough)" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Usage of RangeEquals range matcher/Ranges that need ADL begin/end" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Usage of RangeEquals range matcher/Check short-circuiting behaviour/Check short-circuits on failure" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Usage of RangeEquals range matcher/Check short-circuiting behaviour/All elements are checked on success" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Usage of UnorderedRangeEquals range matcher/Basic usage/Empty container matches empty container" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Usage of UnorderedRangeEquals range matcher/Basic usage/Empty container does not match non-empty container" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Usage of UnorderedRangeEquals range matcher/Basic usage/Two equal 1-length non-empty containers" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Usage of UnorderedRangeEquals range matcher/Basic usage/Two equal-sized, equal, non-empty containers" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Usage of UnorderedRangeEquals range matcher/Basic usage/Two equal-sized, non-equal, non-empty containers" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Usage of UnorderedRangeEquals range matcher/Basic usage/Two non-equal-sized, non-empty containers" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Usage of UnorderedRangeEquals range matcher/Custom predicate/Two equal non-empty containers (close enough)" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Usage of UnorderedRangeEquals range matcher/Custom predicate/Two non-equal non-empty containers (close enough)" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Usage of UnorderedRangeEquals range matcher/Ranges that need ADL begin/end" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Usage of the SizeIs range matcher/Some with stdlib containers" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Usage of the SizeIs range matcher/Type requires ADL found size free function" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Usage of the SizeIs range matcher/Type has size member" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Use a custom approx" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Variadic macros/Section with one argument" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Vector Approx matcher/Empty vector is roughly equal to an empty vector" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Vector Approx matcher/Vectors with elements/A vector is approx equal to itself" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Vector Approx matcher/Vectors with elements/Different length" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Vector Approx matcher/Vectors with elements/Same length, different elements" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Vector Approx matcher -- failing/Empty and non empty vectors are not approx equal" time="{duration}" status="run">
      <failure message="empty, Approx( t1 )" type="CHECK_THAT">
FAILED:
  CHECK_THAT( empty, Approx( t1 ) )
with expansion:
  {  } is approx: { 1.0, 2.0 }
at Matchers.tests.cpp:<line number>
      </failure>
    </testcase>
    <testcase classname="<exe-name>.global" name="Vector Approx matcher -- failing/Just different vectors" time="{duration}" status="run">
      <failure message="v1, Approx( v2 )" type="CHECK_THAT">
FAILED:
  CHECK_THAT( v1, Approx( v2 ) )
with expansion:
  { 2.0, 4.0, 6.0 } is approx: { 1.0, 3.0, 5.0 }
at Matchers.tests.cpp:<line number>
      </failure>
    </testcase>
    <testcase classname="<exe-name>.global" name="Vector matchers/Contains (element)" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Vector matchers/Contains (vector)" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Vector matchers/Contains (element), composed" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Vector matchers/Equals" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Vector matchers/UnorderedEquals" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="Vector matchers that fail/Contains (element)" time="{duration}" status="run">
      <failure message="v, VectorContains( -1 )" type="CHECK_THAT">
FAILED:
  CHECK_THAT( v, VectorContains( -1 ) )
with expansion:
  { 1, 2, 3 } Contains: -1
at Matchers.tests.cpp:<line number>
      </failure>
      <failure message="empty, VectorContains( 1 )" type="CHECK_THAT">
FAILED:
  CHECK_THAT( empty, VectorContains( 1 ) )
with expansion:
  {  } Contains: 1
at Matchers.tests.cpp:<line number>
      </failure>
    </testcase>
    <testcase classname="<exe-name>.global" name="Vector matchers that fail/Contains (vector)" time="{duration}" status="run">
      <failure message="empty, Contains( v )" type="CHECK_THAT">
FAILED:
  CHECK_THAT( empty, Contains( v ) )
with expansion:
  {  } Contains: { 1, 2, 3 }
at Matchers.tests.cpp:<line number>
      </failure>
      <failure message="v, Contains( v2 )" type="CHECK_THAT">
FAILED:
  CHECK_THAT( v, Contains( v2 ) )
with expansion:
  { 1, 2, 3 } Contains: { 1, 2, 4 }
at Matchers.tests.cpp:<line number>
      </failure>
    </testcase>
    <testcase classname="<exe-name>.global" name="Vector matchers that fail/Equals" time="{duration}" status="run">
      <failure message="v, Equals( v2 )" type="CHECK_THAT">
FAILED:
  CHECK_THAT( v, Equals( v2 ) )
with expansion:
  { 1, 2, 3 } Equals: { 1, 2 }
at Matchers.tests.cpp:<line number>
      </failure>
      <failure message="v2, Equals( v )" type="CHECK_THAT">
FAILED:
  CHECK_THAT( v2, Equals( v ) )
with expansion:
  { 1, 2 } Equals: { 1, 2, 3 }
at Matchers.tests.cpp:<line number>
      </failure>
      <failure message="empty, Equals( v )" type="CHECK_THAT">
FAILED:
  CHECK_THAT( empty, Equals( v ) )
with expansion:
  {  } Equals: { 1, 2, 3 }
at Matchers.tests.cpp:<line number>
      </failure>
      <failure message="v, Equals( empty )" type="CHECK_THAT">
FAILED:
  CHECK_THAT( v, Equals( empty ) )
with expansion:
  { 1, 2, 3 } Equals: {  }
at Matchers.tests.cpp:<line number>
      </failure>
    </testcase>
    <testcase classname="<exe-name>.global" name="Vector matchers that fail/UnorderedEquals" time="{duration}" status="run">
      <failure message="v, UnorderedEquals( empty )" type="CHECK_THAT">
FAILED:
  CHECK_THAT( v, UnorderedEquals( empty ) )
with expansion:
  { 1, 2, 3 } UnorderedEquals: {  }
at Matchers.tests.cpp:<line number>
      </failure>
      <failure message="empty, UnorderedEquals( v )" type="CHECK_THAT">
FAILED:
  CHECK_THAT( empty, UnorderedEquals( v ) )
with expansion:
  {  } UnorderedEquals: { 1, 2, 3 }
at Matchers.tests.cpp:<line number>
      </failure>
      <failure message="permuted, UnorderedEquals( v )" type="CHECK_THAT">
FAILED:
  CHECK_THAT( permuted, UnorderedEquals( v ) )
with expansion:
  { 1, 3 } UnorderedEquals: { 1, 2, 3 }
at Matchers.tests.cpp:<line number>
      </failure>
      <failure message="permuted, UnorderedEquals( v )" type="CHECK_THAT">
FAILED:
  CHECK_THAT( permuted, UnorderedEquals( v ) )
with expansion:
  { 3, 1 } UnorderedEquals: { 1, 2, 3 }
at Matchers.tests.cpp:<line number>
      </failure>
    </testcase>
    <testcase classname="<exe-name>.global" name="When checked exceptions are thrown they can be expected or unexpected" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="When unchecked exceptions are thrown directly they are always failures" time="{duration}" status="run">
      <error type="TEST_CASE">
FAILED:
unexpected exception
at Exception.tests.cpp:<line number>
      </error>
    </testcase>
    <testcase classname="<exe-name>.global" name="When unchecked exceptions are thrown during a CHECK the test should continue" time="{duration}" status="run">
      <error message="thisThrows() == 0" type="CHECK">
FAILED:
  CHECK( thisThrows() == 0 )
expected exception
at Exception.tests.cpp:<line number>
      </error>
    </testcase>
    <testcase classname="<exe-name>.global" name="When unchecked exceptions are thrown during a REQUIRE the test should abort fail" time="{duration}" status="run">
      <error message="thisThrows() == 0" type="REQUIRE">
FAILED:
  REQUIRE( thisThrows() == 0 )
expected exception
at Exception.tests.cpp:<line number>
      </error>
    </testcase>
    <testcase classname="<exe-name>.global" name="When unchecked exceptions are thrown from functions they are always failures" time="{duration}" status="run">
      <error message="thisThrows() == 0" type="CHECK">
FAILED:
  CHECK( thisThrows() == 0 )
expected exception
at Exception.tests.cpp:<line number>
      </error>
    </testcase>
    <testcase classname="<exe-name>.global" name="When unchecked exceptions are thrown from sections they are always failures/section name" time="{duration}" status="run">
      <error type="TEST_CASE">
FAILED:
unexpected exception
at Exception.tests.cpp:<line number>
      </error>
    </testcase>
    <testcase classname="<exe-name>.global" name="X/level/0/a" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="X/level/0/b" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="X/level/1/a" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="X/level/1/b" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="XmlEncode/normal string" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="XmlEncode/empty string" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="XmlEncode/string with ampersand" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="XmlEncode/string with less-than" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="XmlEncode/string with greater-than" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="XmlEncode/string with quotes" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="XmlEncode/string with control char (1)" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="XmlEncode/string with control char (x7F)" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="XmlWriter writes boolean attributes as true/false" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="a succeeding test can still be skipped" time="{duration}" status="run">
      <skipped type="SKIP">
SKIPPED
at Skip.tests.cpp:<line number>
      </skipped>
    </testcase>
    <testcase classname="<exe-name>.global" name="analyse no analysis" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="array&lt;int, N> -> toString" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="benchmark function call/without chronometer" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="benchmark function call/with chronometer" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="boolean member" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="checkedElse" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="checkedElse, failing" time="{duration}" status="run">
      <failure message="testCheckedElse( false )" type="REQUIRE">
FAILED:
  REQUIRE( testCheckedElse( false ) )
with expansion:
  false
at Misc.tests.cpp:<line number>
      </failure>
    </testcase>
    <testcase classname="<exe-name>.global" name="checkedIf" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="checkedIf, failing" time="{duration}" status="run">
      <failure message="testCheckedIf( false )" type="REQUIRE">
FAILED:
  REQUIRE( testCheckedIf( false ) )
with expansion:
  false
at Misc.tests.cpp:<line number>
      </failure>
    </testcase>
    <testcase classname="<exe-name>.global" name="classify_outliers/none" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="classify_outliers/low severe" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="classify_outliers/low mild" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="classify_outliers/high mild" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="classify_outliers/high severe" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="classify_outliers/mixed" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="comparisons between const int variables" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="comparisons between int variables" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="convertToBits" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="dynamic skipping works with generators" time="{duration}" status="run">
      <skipped type="SKIP">
SKIPPED
skipping because answer = 41
at Skip.tests.cpp:<line number>
      </skipped>
      <skipped type="SKIP">
SKIPPED
skipping because answer = 43
at Skip.tests.cpp:<line number>
      </skipped>
    </testcase>
    <testcase classname="<exe-name>.global" name="empty tags are not allowed" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="erfc_inv" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="estimate_clock_resolution" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="even more nested SECTION tests/c/d (leaf)" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="even more nested SECTION tests/c/e (leaf)" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="even more nested SECTION tests/f (leaf)" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="failed assertions before SKIP cause test case to fail" time="{duration}" status="run">
      <skipped message="TEST_CASE tagged with !mayfail"/>
      <failure message="3 == 4" type="CHECK">
FAILED:
  CHECK( 3 == 4 )
at Skip.tests.cpp:<line number>
      </failure>
      <skipped type="SKIP">
SKIPPED
at Skip.tests.cpp:<line number>
      </skipped>
    </testcase>
    <testcase classname="<exe-name>.global" name="failing for some generator values causes entire test case to fail" time="{duration}" status="run">
      <failure type="FAIL">
FAILED:
at Skip.tests.cpp:<line number>
      </failure>
      <skipped type="SKIP">
SKIPPED
at Skip.tests.cpp:<line number>
      </skipped>
      <failure type="FAIL">
FAILED:
at Skip.tests.cpp:<line number>
      </failure>
      <skipped type="SKIP">
SKIPPED
at Skip.tests.cpp:<line number>
      </skipped>
    </testcase>
    <testcase classname="<exe-name>.global" name="failing in some unskipped sections causes entire test case to fail/skipped" time="{duration}" status="run">
      <skipped type="SKIP">
SKIPPED
at Skip.tests.cpp:<line number>
      </skipped>
    </testcase>
    <testcase classname="<exe-name>.global" name="failing in some unskipped sections causes entire test case to fail/not skipped" time="{duration}" status="run">
      <skipped message="TEST_CASE tagged with !mayfail"/>
      <failure type="FAIL">
FAILED:
at Skip.tests.cpp:<line number>
      </failure>
    </testcase>
    <testcase classname="<exe-name>.global" name="is_unary_function" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="just failure" time="{duration}" status="run">
      <failure type="FAIL">
FAILED:
Previous info should not be seen
at Message.tests.cpp:<line number>
      </failure>
    </testcase>
    <testcase classname="<exe-name>.global" name="just failure after unscoped info" time="{duration}" status="run">
      <failure type="FAIL">
FAILED:
previous unscoped info SHOULD not be seen
at Message.tests.cpp:<line number>
      </failure>
    </testcase>
    <testcase classname="<exe-name>.global" name="long long" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="looped SECTION tests/b is currently: 0" time="{duration}" status="run">
      <failure message="b > a" type="CHECK">
FAILED:
  CHECK( b > a )
with expansion:
  0 > 1
at Misc.tests.cpp:<line number>
      </failure>
    </testcase>
    <testcase classname="<exe-name>.global" name="looped SECTION tests/b is currently: 1" time="{duration}" status="run">
      <failure message="b > a" type="CHECK">
FAILED:
  CHECK( b > a )
with expansion:
  1 > 1
at Misc.tests.cpp:<line number>
      </failure>
    </testcase>
    <testcase classname="<exe-name>.global" name="looped SECTION tests/b is currently: 2" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="looped SECTION tests/b is currently: 3" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="looped SECTION tests/b is currently: 4" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="looped SECTION tests/b is currently: 5" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="looped SECTION tests/b is currently: 6" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="looped SECTION tests/b is currently: 7" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="looped SECTION tests/b is currently: 8" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="looped SECTION tests/b is currently: 9" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="looped tests" time="{duration}" status="run">
      <failure message="( fib[i] % 2 ) == 0" type="CHECK">
FAILED:
  CHECK( ( fib[i] % 2 ) == 0 )
with expansion:
  1 == 0
Testing if fib[0] (1) is even
at Misc.tests.cpp:<line number>
      </failure>
      <failure message="( fib[i] % 2 ) == 0" type="CHECK">
FAILED:
  CHECK( ( fib[i] % 2 ) == 0 )
with expansion:
  1 == 0
Testing if fib[1] (1) is even
at Misc.tests.cpp:<line number>
      </failure>
      <failure message="( fib[i] % 2 ) == 0" type="CHECK">
FAILED:
  CHECK( ( fib[i] % 2 ) == 0 )
with expansion:
  1 == 0
Testing if fib[3] (3) is even
at Misc.tests.cpp:<line number>
      </failure>
      <failure message="( fib[i] % 2 ) == 0" type="CHECK">
FAILED:
  CHECK( ( fib[i] % 2 ) == 0 )
with expansion:
  1 == 0
Testing if fib[4] (5) is even
at Misc.tests.cpp:<line number>
      </failure>
      <failure message="( fib[i] % 2 ) == 0" type="CHECK">
FAILED:
  CHECK( ( fib[i] % 2 ) == 0 )
with expansion:
  1 == 0
Testing if fib[6] (13) is even
at Misc.tests.cpp:<line number>
      </failure>
      <failure message="( fib[i] % 2 ) == 0" type="CHECK">
FAILED:
  CHECK( ( fib[i] % 2 ) == 0 )
with expansion:
  1 == 0
Testing if fib[7] (21) is even
at Misc.tests.cpp:<line number>
      </failure>
    </testcase>
    <testcase classname="<exe-name>.global" name="makeStream recognizes %debug stream name" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="make_unique reimplementation/From lvalue copies" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="make_unique reimplementation/From rvalue moves" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="make_unique reimplementation/Variadic constructor" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="mean" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="measure" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="mix info, unscoped info and warning" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="more nested SECTION tests/equal/doesn't equal" time="{duration}" status="run">
      <failure message="a == b" type="REQUIRE">
FAILED:
  REQUIRE( a == b )
with expansion:
  1 == 2
at Misc.tests.cpp:<line number>
      </failure>
    </testcase>
    <testcase classname="<exe-name>.global" name="more nested SECTION tests/doesn't equal/not equal" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="more nested SECTION tests/doesn't equal/less than" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="nested SECTION tests/doesn't equal" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="nested SECTION tests/doesn't equal/not equal" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="nested sections can be skipped dynamically at runtime/B2/B" time="{duration}" status="run">
      <skipped type="SKIP">
SKIPPED
at Skip.tests.cpp:<line number>
      </skipped>
    </testcase>
    <testcase classname="<exe-name>.global" name="nested sections can be skipped dynamically at runtime/B" time="{duration}" status="run">
      <system-out>
a!
b1!
!
      </system-out>
    </testcase>
    <testcase classname="<exe-name>.global" name="non streamable - with conv. op" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="non-copyable objects" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="normal_cdf" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="normal_quantile" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="not allowed" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="not prints unscoped info from previous failures" time="{duration}" status="run">
      <failure message="false" type="REQUIRE">
FAILED:
  REQUIRE( false )
this SHOULD be seen
at Message.tests.cpp:<line number>
      </failure>
    </testcase>
    <testcase classname="<exe-name>.global" name="null strings" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="null_ptr" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="pair&lt;pair&lt;int,const char *,pair&lt;std::string,int> > -> toString" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="parseEnums/No enums" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="parseEnums/One enum value" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="parseEnums/Multiple enum values" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="pointer to class" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="print unscoped info if passing unscoped info is printed" time="{duration}" status="run"/>
    <testcase classname="<exe-name>.global" name="prints unscoped info on failure" time="{duration}" status="run">
      <failure message="false" type="REQUIRE">
FAILED:
  REQUIRE( false )
this SHOULD be seen
this SHOULD also be seen
at Message.tests.cpp:<line number>
      </failure>
    </testcase>
    <testcase classname="<exe-name>.global" name=