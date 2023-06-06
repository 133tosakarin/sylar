alloc>> -> toString
ok {test-number} - ::Catch::Detail::stringify(v) == "{  }" for: "{  }" == "{  }"
# vec<vec<string,alloc>> -> toString
ok {test-number} - ::Catch::Detail::stringify(v) == "{ { \"hello\" }, { \"world\" } }" for: "{ { "hello" }, { "world" } }" == "{ { "hello" }, { "world" } }"
# vector<bool> -> toString
ok {test-number} - ::Catch::Detail::stringify(bools) == "{  }" for: "{  }" == "{  }"
# vector<bool> -> toString
ok {test-number} - ::Catch::Detail::stringify(bools) == "{ true }" for: "{ true }" == "{ true }"
# vector<bool> -> toString
ok {test-number} - ::Catch::Detail::stringify(bools) == "{ true, false }" for: "{ true, false }" == "{ true, false }"
# vector<int,allocator> -> toString
ok {test-number} - ::Catch::Detail::stringify(vv) == "{  }" for: "{  }" == "{  }"
# vector<int,allocator> -> toString
ok {test-number} - ::Catch::Detail::stringify(vv) == "{ 42 }" for: "{ 42 }" == "{ 42 }"
# vector<int,allocator> -> toString
ok {test-number} - ::Catch::Detail::stringify(vv) == "{ 42, 250 }" for: "{ 42, 250 }" == "{ 42, 250 }"
# vector<int> -> toString
ok {test-number} - ::Catch::Detail::stringify(vv) == "{  }" for: "{  }" == "{  }"
# vector<int> -> toString
ok {test-number} - ::Catch::Detail::stringify(vv) == "{ 42 }" for: "{ 42 }" == "{ 42 }"
# vector<int> -> toString
ok {test-number} - ::Catch::Detail::stringify(vv) == "{ 42, 250 }" for: "{ 42, 250 }" == "{ 42, 250 }"
# vector<string> -> toString
ok {test-number} - ::Catch::Detail::stringify(vv) == "{  }" for: "{  }" == "{  }"
# vector<string> -> toString
ok {test-number} - ::Catch::Detail::stringify(vv) == "{ \"hello\" }" for: "{ "hello" }" == "{ "hello" }"
# vector<string> -> toString
ok {test-number} - ::Catch::Detail::stringify(vv) == "{ \"hello\", \"world\" }" for: "{ "hello", "world" }" == "{ "hello", "world" }"
# vectors can be sized and resized
ok {test-number} - v.size() == 5 for: 5 == 5
# vectors can be sized and resized
ok {test-number} - v.capacity() >= 5 for: 5 >= 5
# vectors can be sized and resized
ok {test-number} - v.size() == 10 for: 10 == 10
# vectors can be sized and resized
ok {test-number} - v.capacity() >= 10 for: 10 >= 10
# vectors can be sized and resized
ok {test-number} - v.size() == 5 for: 5 == 5
# vectors can be sized and resized
ok {test-number} - v.capacity() >= 5 for: 5 >= 5
# vectors can be sized and resized
ok {test-number} - v.size() == 0 for: 0 == 0
# vectors can be sized and resized
ok {test-number} - v.capacity() >= 5 for: 5 >= 5
# vectors can be sized and resized
ok {test-number} - v.capacity() == 0 for: 0 == 0
# vectors can be sized and resized
ok {test-number} - v.size() == 5 for: 5 == 5
# vectors can be sized and resized
ok {test-number} - v.capacity() >= 5 for: 5 >= 5
# vectors can be sized and resized
ok {test-number} - v.size() == 5 for: 5 == 5
# vectors can be sized and resized
ok {test-number} - v.capacity() >= 10 for: 10 >= 10
# vectors can be sized and resized
ok {test-number} - v.size() == 5 for: 5 == 5
# vectors can be sized and resized
ok {test-number} - v.capacity() >= 5 for: 5 >= 5
# vectors can be sized and resized
ok {test-number} - v.size() == 5 for: 5 == 5
# vectors can be sized and resized
ok {test-number} - v.capacity() >= 5 for: 5 >= 5
# warmup
ok {test-number} - (iterations * rate) > Catch::Benchmark::Detail::warmup_time.count() for: 160000000 (0x<hex digits>) > 100
# warmup
ok {test-number} - (end - start) > Catch::Benchmark::Detail::warmup_time for: 310016000 ns > 100 ms
# weighted_average_quantile
ok {test-number} - q1 == 14.5 for: 14.5 == 14.5
# weighted_average_quantile
ok {test-number} - med == 18. for: 18.0 == 18.0
# weighted_average_quantile
ok {test-number} - q3 == 23. for: 23.0 == 23.0
# xmlentitycheck
ok {test-number} -
# xmlentitycheck
ok {test-number} -
1..2237

                                                                                                                                                                                                                                                                                                                                    # filters: "*" ~[!nonportable] ~[!benchmark] ~[approvals]
# rng-seed: 1
# # A test name that starts with a #
ok {test-number} - with 1 message: 'yay'
# #1027: Bitfields can be captured
ok {test-number} - y.v == 0 for: 0 == 0
# #1027: Bitfields can be captured
ok {test-number} - 0 == y.v for: 0 == 0
# #1147
ok {test-number} - t1 == t2 for: {?} == {?}
# #1147
ok {test-number} - t1 != t2 for: {?} != {?}
# #1147
ok {test-number} - t1 < t2 for: {?} < {?}
# #1147
ok {test-number} - t1 > t2 for: {?} > {?}
# #1147
ok {test-number} - t1 <= t2 for: {?} <= {?}
# #1147
ok {test-number} - t1 >= t2 for: {?} >= {?}
# #1175 - Hidden Test
ok {test-number} -
# #1238
ok {test-number} - std::memcmp(uarr, "123", sizeof(uarr)) == 0 for: 0 == 0 with 2 messages: 'uarr := "123"' and 'sarr := "456"'
# #1238
ok {test-number} - std::memcmp(sarr, "456", sizeof(sarr)) == 0 for: 0 == 0 with 2 messages: 'uarr := "123"' and 'sarr := "456"'
# #1245
ok {test-number} -
# #1319: Sections can have description (even if it is not saved
ok {test-number} -
# #1403
ok {test-number} - h1 == h2 for: [1403 helper] == [1403 helper]
# #1455 - INFO and WARN can start with a linebreak
warning {test-number} - '
This info message starts with a linebreak' with 1 message: '
This warning message starts with a linebreak'
# #1514: stderr/stdout is not captured in tests aborted by an exception
not ok {test-number} - explicitly with 1 message: '1514'
# #1548
ok {test-number} - std::is_same<TypeList<int>, TypeList<int>>::value for: true
# #1905 -- test spec parser properly clears internal state between compound tests
ok {test-number} - spec.matches(*fakeTestCase("spec . char")) for: true
# #1905 -- test spec parser properly clears internal state between compound tests
ok {test-number} - spec.matches(*fakeTestCase("spec , char")) for: true
# #1905 -- test spec parser properly clears internal state between compound tests
ok {test-number} - !(spec.matches(*fakeTestCase(R"(spec \, char)"))) for: !false
# #1912 -- test spec parser handles escaping
ok {test-number} - spec.matches(*fakeTestCase(R"(spec {a} char)")) for: true
# #1912 -- test spec parser handles escaping
ok {test-number} - spec.matches(*fakeTestCase(R"(spec [a] char)")) for: true
# #1912 -- test spec parser handles escaping
ok {test-number} - !(spec.matches(*fakeTestCase("differs but has similar tag", "[a]"))) for: !false
# #1912 -- test spec parser handles escaping
ok {test-number} - spec.matches(*fakeTestCase(R"(spec \ char)")) for: true
# #1913 - GENERATE inside a for loop should not keep recreating the generator
ok {test-number} - counter < 7 for: 3 < 7
# #1913 - GENERATE inside a for loop should not keep recreating the generator
ok {test-number} - counter < 7 for: 6 < 7
# #1913 - GENERATEs can share a line
ok {test-number} - i != j for: 1 != 3
# #1913 - GENERATEs can share a line
ok {test-number} - i != j for: 1 != 4
# #1913 - GENERATEs can share a line
ok {test-number} - i != j for: 2 != 3
# #1913 - GENERATEs can share a line
ok {test-number} - i != j for: 2 != 4
# #1938 - GENERATE after a section
ok {test-number} - with 1 message: 'A'
# #1938 - GENERATE after a section
ok {test-number} - m for: 1
# #1938 - GENERATE after a section
ok {test-number} - m for: 2
# #1938 - GENERATE after a section
ok {test-number} - m for: 3
# #1938 - Section followed by flat generate
ok {test-number} - 1
# #1938 - Section followed by flat generate
ok {test-number} - m for: 2
# #1938 - Section followed by flat generate
ok {test-number} - m for: 3
# #1938 - flat generate
ok {test-number} - m for: 1
# #1938 - flat generate
ok {test-number} - m for: 2
# #1938 - flat generate
ok {test-number} - m for: 3
# #1938 - mixed sections and generates
ok {test-number} - with 1 message: 'A'
# #1938 - mixed sections and generates
ok {test-number} - with 3 messages: 'i := 1' and 'j := 3' and 'k := 5'
# #1938 - mixed sections and generates
ok {test-number} - with 1 message: 'B'
# #1938 - mixed sections and generates
ok {test-number} - with 3 messages: 'i := 1' and 'j := 3' and 'k := 6'
# #1938 - mixed sections and generates
ok {test-number} - with 1 message: 'B'
# #1938 - mixed sections and generates
ok {test-number} - with 3 messages: 'i := 1' and 'j := 4' and 'k := 5'
# #1938 - mixed sections and generates
ok {test-number} - with 3 messages: 'i := 1' and 'j := 4' and 'k := 6'
# #1938 - mixed sections and generates
ok {test-number} - with 1 message: 'A'
# #1938 - mixed sections and generates
ok {test-number} - with 3 messages: 'i := 2' and 'j := 3' and 'k := 5'
# #1938 - mixed sections and generates
ok {test-number} - with 1 message: 'B'
# #1938 - mixed sections and generates
ok {test-number} - with 3 messages: 'i := 2' and 'j := 3' and 'k := 6'
# #1938 - mixed sections and generates
ok {test-number} - with 1 message: 'B'
# #1938 - mixed sections and generates
ok {test-number} - with 3 messages: 'i := 2' and 'j := 4' and 'k := 5'
# #1938 - mixed sections and generates
ok {test-number} - with 3 messages: 'i := 2' and 'j := 4' and 'k := 6'
# #1938 - nested generate
ok {test-number} - m for: 1
# #1938 - nested generate
ok {test-number} - n for: 1
# #1938 - nested generate
ok {test-number} - m for: 1
# #1938 - nested generate
ok {test-number} - n for: 2
# #1938 - nested generate
ok {test-number} - m for: 1
# #1938 - nested generate
ok {test-number} - n for: 3
# #1938 - nested generate
ok {test-number} - m for: 2
# #1938 - nested generate
ok {test-number} - n for: 1
# #1938 - nested generate
ok {test-number} - m for: 2
# #1938 - nested generate
ok {test-number} - n for: 2
# #1938 - nested generate
ok {test-number} - m for: 2
# #1938 - nested generate
ok {test-number} - n for: 3
# #1938 - nested generate
ok {test-number} - m for: 3
# #1938 - nested generate
ok {test-number} - n for: 1
# #1938 - nested generate
ok {test-number} - m for: 3
# #1938 - nested generate
ok {test-number} - n for: 2
# #1938 - nested generate
ok {test-number} - m for: 3
# #1938 - nested generate
ok {test-number} - n for: 3
# #1954 - 7 arg template test case sig compiles - 1, 1, 1, 1, 1, 0, 0
ok {test-number} -
# #1954 - 7 arg template test case sig compiles - 5, 1, 1, 1, 1, 0, 0
ok {test-number} -
# #1954 - 7 arg template test case sig compiles - 5, 3, 1, 1, 1, 0, 0
ok {test-number} -
# #2152 - ULP checks between differently signed values were wrong - double
ok {test-number} - smallest_non_zero, WithinULP( -smallest_non_zero, 2 ) for: 0.0 is within 2 ULPs of -4.9406564584124654e-324 ([-1.4821969375237396e-323, 4.9406564584124654e-324])
# #2152 - ULP checks between differently signed values were wrong - double
ok {test-number} - smallest_non_zero, !WithinULP( -smallest_non_zero, 1 ) for: 0.0 not is within 1 ULPs of -4.9406564584124654e-324 ([-9.8813129168249309e-324, -0.0000000000000000e+00])
# #2152 - ULP checks between differently signed values were wrong - float
ok {test-number} - smallest_non_zero, WithinULP( -smallest_non_zero, 2 ) for: 0.0f is within 2 ULPs of -1.40129846e-45f ([-4.20389539e-45, 1.40129846e-45])
# #2152 - ULP checks between differently signed values were wrong - float
ok {test-number} - smallest_non_zero, !WithinULP( -smallest_non_zero, 1 ) for: 0.0f not is within 1 ULPs of -1.40129846e-45f ([-2.80259693e-45, -0.00000000e+00])
# #2615 - Throwing in constructor generator fails test case but does not abort
not ok {test-number} - unexpected exception with message: 'failure to init'
# #748 - captures with unexpected exceptions
not ok {test-number} - unexpected exception with message: 'answer := 42' with 1 message: 'expected exception'
# #748 - captures with unexpected exceptions
not ok {test-number} - unexpected exception with message: 'answer := 42'; expression was: thisThrows() with 1 message: 'expected exception'
# #748 - captures with unexpected exceptions
ok {test-number} - thisThrows() with 1 message: 'answer := 42'
# #809
ok {test-number} - 42 == f for: 42 == {?}
# #833
ok {test-number} - a == t for: 3 == 3
# #833
ok {test-number} - a == t for: 3 == 3
# #833
ok {test-number} - throws_int(true)
# #833
ok {test-number} - throws_int(true), int
# #833
ok {test-number} - throws_int(false)
# #833
ok {test-number} - "aaa", Catch::Matchers::EndsWith("aaa") for: "aaa" ends with: "aaa"
# #833
ok {test-number} - templated_tests<int>(3) for: true
# #835 -- errno should not be touched by Catch2
not ok {test-number} - f() == 0 for: 1 == 0
# #835 -- errno should not be touched by Catch2
ok {test-number} - errno_after == 1 for: 1 == 1
# #872
ok {test-number} - x == 4 for: {?} == 4 with 1 message: 'dummy := 0'
# #961 -- Dynamically created sections should all be reported
ok {test-number} - with 1 message: 'Everything is OK'
# #961 -- Dynamically created sections should all be reported
ok {test-number} - with 1 message: 'Everything is OK'
# #961 -- Dynamically created sections should all be reported
ok {test-number} - with 1 message: 'Everything is OK'
# #961 -- Dynamically created sections should all be reported
ok {test-number} - with 1 message: 'Everything is OK'
# #961 -- Dynamically created sections should all be reported
ok {test-number} - with 1 message: 'Everything is OK'
# 'Not' checks that should fail
not ok {test-number} - false != false
# 'Not' checks that should fail
not ok {test-number} - true != true
# 'Not' checks that should fail
not ok {test-number} - !true for: false
# 'Not' checks that should fail
not ok {test-number} - !(true) for: !true
# 'Not' checks that should fail
not ok {test-number} - !trueValue for: false
# 'Not' checks that should fail
not ok {test-number} - !(trueValue) for: !true
# 'Not' checks that should fail
not ok {test-number} - !(1 == 1) for: false
# 'Not' checks that should fail
not ok {test-number} - !(1 == 1)
# 'Not' checks that should succeed
ok {test-number} - false == false
# 'Not' checks that should succeed
ok {test-number} - true == true
# 'Not' checks that should succeed
ok {test-number} - !false for: true
# 'Not' checks that should succeed
ok {test-number} - !(false) for: !false
# 'Not' checks that should succeed
ok {test-number} - !falseValue for: true
# 'Not' checks that should succeed
ok {test-number} - !(falseValue) for: !false
# 'Not' checks that should succeed
ok {test-number} - !(1 == 2) for: true
# 'Not' checks that should succeed
ok {test-number} - !(1 == 2)
# (unimplemented) static bools can be evaluated
ok {test-number} - is_true<true>::value == true for: true == true
# (unimplemented) static bools can be evaluated
ok {test-number} - true == is_true<true>::value for: true == true
# (unimplemented) static bools can be evaluated
ok {test-number} - is_true<false>::value == false for: false == false
# (unimplemented) static bools can be evaluated
ok {test-number} - false == is_true<false>::value for: false == false
# (unimplemented) static bools can be evaluated
ok {test-number} - !is_true<false>::value for: true
# (unimplemented) static bools can be evaluated
ok {test-number} - !!is_true<true>::value for: true
# (unimplemented) static bools can be evaluated
ok {test-number} - is_true<true>::value for: true
# (unimplemented) static bools can be evaluated
ok {test-number} - !(is_true<false>::value) for: !false
# 3x3x3 ints
ok {test-number} - x < y for: 1 < 4
# 3x3x3 ints
ok {test-number} - y < z for: 4 < 7
# 3x3x3 ints
ok {test-number} - x < z for: 1 < 7
# 3x3x3 ints
ok {test-number} - x < y for: 1 < 4
# 3x3x3 ints
ok {test-number} - y < z for: 4 < 8
# 3x3x3 ints
ok {test-number} - x < z for: 1 < 8
# 3x3x3 ints
ok {test-number} - x < y for: 1 < 4
# 3x3x3 ints
ok {test-number} - y < z for: 4 < 9
# 3x3x3 ints
ok {test-number} - x < z for: 1 < 9
# 3x3x3 ints
ok {test-number} - x < y for: 1 < 5
# 3x3x3 ints
ok {test-number} - y < z for: 5 < 7
# 3x3x3 ints
ok {test-number} - x < z for: 1 < 7
# 3x3x3 ints
ok {test-number} - x < y for: 1 < 5
# 3x3x3 ints
ok {test-number} - y < z for: 5 < 8
# 3x3x3 ints
ok {test-number} - x < z for: 1 < 8
# 3x3x3 ints
ok {test-number} - x < y for: 1 < 5
# 3x3x3 ints
ok {test-number} - y < z for: 5 < 9
# 3x3x3 ints
ok {test-number} - x < z for: 1 < 9
# 3x3x3 ints
ok {test-number} - x < y for: 1 < 6
# 3x3x3 ints
ok {test-number} - y < z for: 6 < 7
# 3x3x3 ints
ok {test-number} - x < z for: 1 < 7
# 3x3x3 ints
ok {test-number} - x < y for: 1 < 6
# 3x3x3 ints
ok {test-number} - y < z for: 6 < 8
# 3x3x3 ints
ok {test-number} - x < z for: 1 < 8
# 3x3x3 ints
ok {test-number} - x < y for: 1 < 6
# 3x3x3 ints
ok {test-number} - y < z for: 6 < 9
# 3x3x3 ints
ok {test-number} - x < z for: 1 < 9
# 3x3x3 ints
ok {test-number} - x < y for: 2 < 4
# 3x3x3 ints
ok {test-number} - y < z for: 4 < 7
# 3x3x3 ints
ok {test-number} - x < z for: 2 < 7
# 3x3x3 ints
ok {test-number} - x < y for: 2 < 4
# 3x3x3 ints
ok {test-number} - y < z for: 4 < 8
# 3x3x3 ints
ok {test-number} - x < z for: 2 < 8
# 3x3x3 ints
ok {test-number} - x < y for: 2 < 4
# 3x3x3 ints
ok {test-number} - y < z for: 4 < 9
# 3x3x3 ints
ok {test-number} - x < z for: 2 < 9
# 3x3x3 ints
ok {test-number} - x < y for: 2 < 5
# 3x3x3 ints
ok {test-number} - y < z for: 5 < 7
# 3x3x3 ints
ok {test-number} - x < z for: 2 < 7
# 3x3x3 ints
ok {test-number} - x < y for: 2 < 5
# 3x3x3 ints
ok {test-number} - y < z for: 5 < 8
# 3x3x3 ints
ok {test-number} - x < z for: 2 < 8
# 3x3x3 ints
ok {test-number} - x < y for: 2 < 5
# 3x3x3 ints
ok {test-number} - y < z for: 5 < 9
# 3x3x3 ints
ok {test-number} - x < z for: 2 < 9
# 3x3x3 ints
ok {test-number} - x < y for: 2 < 6
# 3x3x3 ints
ok {test-number} - y < z for: 6 < 7
# 3x3x3 ints
ok {test-number} - x < z for: 2 < 7
# 3x3x3 ints
ok {test-number} - x < y for: 2 < 6
# 3x3x3 ints
ok {test-number} - y < z for: 6 < 8
# 3x3x3 ints
ok {test-number} - x < z for: 2 < 8
# 3x3x3 ints
ok {test-number} - x < y for: 2 < 6
# 3x3x3 ints
ok {test-number} - y < z for: 6 < 9
# 3x3x3 ints
ok {test-number} - x < z for: 2 < 9
# 3x3x3 ints
ok {test-number} - x < y for: 3 < 4
# 3x3x3 ints
ok {test-number} - y < z for: 4 < 7
# 3x3x3 ints
ok {test-number} - x < z for: 3 < 7
# 3x3x3 ints
ok {test-number} - x < y for: 3 < 4
# 3x3x3 ints
ok {test-number} - y < z for: 4 < 8
# 3x3x3 ints
ok {test-number} - x < z for: 3 < 8
# 3x3x3 ints
ok {test-number} - x < y for: 3 < 4
# 3x3x3 ints
ok {test-number} - y < z for: 4 < 9
# 3x3x3 ints
ok {test-number} - x < z for: 3 < 9
# 3x3x3 ints
ok {test-number} - x < y for: 3 < 5
# 3x3x3 ints
ok {test-number} - y < z for: 5 < 7
# 3x3x3 ints
ok {test-number} - x < z for: 3 < 7
# 3x3x3 ints
ok {test-number} - x < y for: 3 < 5
# 3x3x3 ints
ok {test-number} - y < z for: 5 < 8
# 3x3x3 ints
ok {test-number} - x < z for: 3 < 8
# 3x3x3 ints
ok {test-number} - x < y for: 3 < 5
# 3x3x3 ints
ok {test-number} - y < z for: 5 < 9
# 3x3x3 ints
ok {test-number} - x < z for: 3 < 9
# 3x3x3 ints
ok {test-number} - x < y for: 3 < 6
# 3x3x3 ints
ok {test-number} - y < z for: 6 < 7
# 3x3x3 ints
ok {test-number} - x < z for: 3 < 7
# 3x3x3 ints
ok {test-number} - x < y for: 3 < 6
# 3x3x3 ints
ok {test-number} - y < z for: 6 < 8
# 3x3x3 ints
ok {test-number} - x < z for: 3 < 8
# 3x3x3 ints
ok {test-number} - x < y for: 3 < 6
# 3x3x3 ints
ok {test-number} - y < z for: 6 < 9
# 3x3x3 ints
ok {test-number} - x < z for: 3 < 9
# A METHOD_AS_TEST_CASE based test run that fails
not ok {test-number} - s == "world" for: "hello" == "world"
# A METHOD_AS_TEST_CASE based test run that succeeds
ok {test-number} - s == "hello" for: "hello" == "hello"
# A TEMPLATE_PRODUCT_TEST_CASE_METHOD based test run that fails - Template_Foo<float>
not ok {test-number} - Template_Fixture_2<TestType>::m_a.size() == 1 for: 0 == 1
# A TEMPLATE_PRODUCT_TEST_CASE_METHOD based test run that fails - Template_Foo<int>
not ok {test-number} - Template_Fixture_2<TestType>::m_a.size() == 1 for: 0 == 1
# A TEMPLATE_PRODUCT_TEST_CASE_METHOD based test run that fails - std::vector<float>
not ok {test-number} - Template_Fixture_2<TestType>::m_a.size() == 1 for: 0 == 1
# A TEMPLATE_PRODUCT_TEST_CASE_METHOD based test run that fails - std::vector<int>
not ok {test-number} - Template_Fixture_2<TestType>::m_a.size() == 1 for: 0 == 1
# A TEMPLATE_PRODUCT_TEST_CASE_METHOD based test run that succeeds - Template_Foo<float>
ok {test-number} - Template_Fixture_2<TestType>::m_a.size() == 0 for: 0 == 0
# A TEMPLATE_PRODUCT_TEST_CASE_METHOD based test run that succeeds - Template_Foo<int>
ok {test-number} - Template_Fixture_2<TestType>::m_a.size() == 0 for: 0 == 0
# A TEMPLATE_PRODUCT_TEST_CASE_METHOD based test run that succeeds - std::vector<float>
ok {test-number} - Template_Fixture_2<TestType>::m_a.size() == 0 for: 0 == 0
# A TEMPLATE_PRODUCT_TEST_CASE_METHOD based test run that succeeds - std::vector<int>
ok {test-number} - Template_Fixture_2<TestType>::m_a.size() == 0 for: 0 == 0
# A TEMPLATE_PRODUCT_TEST_CASE_METHOD_SIG based test run that fails - Template_Foo_2<float, 6>
not ok {test-number} - Template_Fixture_2<TestType>{}.m_a.size() < 2 for: 6 < 2
# A TEMPLATE_PRODUCT_TEST_CASE_METHOD_SIG based test run that fails - Template_Foo_2<int, 2>
not ok {test-number} - Template_Fixture_2<TestType>{}.m_a.size() < 2 for: 2 < 2
# A TEMPLATE_PRODUCT_TEST_CASE_METHOD_SIG based test run that fails - std::array<float, 6>
not ok {test-number} - Template_Fixture_2<TestType>{}.m_a.size() < 2 for: 6 < 2
# A TEMPLATE_PRODUCT_TEST_CASE_METHOD_SIG based test run that fails - std::array<int, 2>
not ok {test-number} - Template_Fixture_2<TestType>{}.m_a.size() < 2 for: 2 < 2
# A TEMPLATE_PRODUCT_TEST_CASE_METHOD_SIG based test run that succeeds - Template_Foo_2<float,6>
ok {test-number} - Template_Fixture_2<TestType>{}.m_a.size() >= 2 for: 6 >= 2
# A TEMPLATE_PRODUCT_TEST_CASE_METHOD_SIG based test run that succeeds - Template_Foo_2<int,2>
ok {test-number} - Template_Fixture_2<TestType>{}.m_a.size() >= 2 for: 2 >= 2
# A TEMPLATE_PRODUCT_TEST_CASE_METHOD_SIG based test run that succeeds - std::array<float,6>
ok {test-number} - Template_Fixture_2<TestType>{}.m_a.size() >= 2 for: 6 >= 2
# A TEMPLATE_PRODUCT_TEST_CASE_METHOD_SIG based test run that succeeds - std::array<int,2>
ok {test-number} - Template_Fixture_2<TestType>{}.m_a.size() >= 2 for: 2 >= 2
# A TEMPLATE_TEST_CASE_METHOD based test run that fails - double
not ok {test-number} - Template_Fixture<TestType>::m_a == 2 for: 1.0 == 2
# A TEMPLATE_TEST_CASE_METHOD based test run that fails - float
not ok {test-number} - Template_Fixture<TestType>::m_a == 2 for: 1.0f == 2
# A TEMPLATE_TEST_CASE_METHOD based test run that fails - int
not ok {test-number} - Template_Fixture<TestType>::m_a == 2 for: 1 == 2
# A TEMPLATE_TEST_CASE_METHOD based test run that succeeds - double
ok {test-number} - Template_Fixture<TestType>::m_a == 1 for: 1.0 == 1
# A TEMPLATE_TEST_CASE_METHOD based test run that succeeds - float
ok {test-number} - Template_Fixture<TestType>::m_a == 1 for: 1.0f == 1
# A TEMPLATE_TEST_CASE_METHOD based test run that succeeds - int
ok {test-number} - Template_Fixture<TestType>::m_a == 1 for: 1 == 1
# A TEMPLATE_TEST_CASE_METHOD_SIG based test run that fails - 1
not ok {test-number} - Nttp_Fixture<V>::value == 0 for: 1 == 0
# A TEMPLATE_TEST_CASE_METHOD_SIG based test run that fails - 3
not ok {test-number} - Nttp_Fixture<V>::value == 0 for: 3 == 0
# A TEMPLATE_TEST_CASE_METHOD_SIG based test run that fails - 6
not ok {test-number} - Nttp_Fixture<V>::value == 0 for: 6 == 0
# A TEMPLATE_TEST_CASE_METHOD_SIG based test run that succeeds - 1
ok {test-number} - Nttp_Fixture<V>::value > 0 for: 1 > 0
# A TEMPLATE_TEST_CASE_METHOD_SIG based test run that succeeds - 3
ok {test-number} - Nttp_Fixture<V>::value > 0 for: 3 > 0
# A TEMPLATE_TEST_CASE_METHOD_SIG based test run that succeeds - 6
ok {test-number} - Nttp_Fixture<V>::value > 0 for: 6 > 0
# A TEST_CASE_METHOD based test run that fails
not ok {test-number} - m_a == 2 for: 1 == 2
# A TEST_CASE_METHOD based test run that succeeds
ok {test-number} - m_a == 1 for: 1 == 1
# A Template product test case - Foo<float>
ok {test-number} - x.size() == 0 for: 0 == 0
# A Template product test case - Foo<int>
ok {test-number} - x.size() == 0 for: 0 == 0
# A Template product test case - std::vector<float>
ok {test-number} - x.size() == 0 for: 0 == 0
# A Template product test case - std::vector<int>
ok {test-number} - x.size() == 0 for: 0 == 0
# A Template product test case with array signature - Bar<float, 42>
ok {test-number} - x.size() > 0 for: 42 > 0
# A Template product test case with array signature - Bar<int, 9>
ok {test-number} - x.size() > 0 for: 9 > 0
# A Template product test case with array signature - std::array<float, 42>
ok {test-number} - x.size() > 0 for: 42 > 0
# A Template product test case with array signature - std::array<int, 9>
ok {test-number} - x.size() > 0 for: 9 > 0
# A comparison that uses literals instead of the normal constructor
ok {test-number} - d == 1.23_a for: 1.23 == Approx( 1.23 )
# A comparison that uses literals instead of the normal constructor
ok {test-number} - d != 1.22_a for: 1.23 != Approx( 1.22 )
# A comparison that uses literals instead of the normal constructor
ok {test-number} - -d == -1.23_a for: -1.23 == Approx( -1.23 )
# A comparison that uses literals instead of the normal constructor
ok {test-number} - d == 1.2_a .epsilon(.1) for: 1.23 == Approx( 1.2 )
# A comparison that uses literals instead of the normal constructor
ok {test-number} - d != 1.2_a .epsilon(.001) for: 1.23 != Approx( 1.2 )
# A comparison that uses literals instead of the normal constructor
ok {test-number} - d == 1_a .epsilon(.3) for: 1.23 == Approx( 1.0 )
# A couple of nested sections followed by a failure
ok {test-number} - with 1 message: 'that's not flying - that's failing in style'
# A couple of nested sections followed by a failure
not ok {test-number} - explicitly with 1 message: 'to infinity and beyond'
# A failing expression with a non streamable type is still captured
not ok {test-number} - &o1 == &o2 for: 0x<hex digits> == 0x<hex digits>
# A failing expression with a non streamable type is still captured
not ok {test-number} - o1 == o2 for: {?} == {?}
# Absolute margin
ok {test-number} - 104.0 != Approx(100.0) for: 104.0 != Approx( 100.0 )
# Absolute margin
ok {test-number} - 104.0 == Approx(100.0).margin(5) for: 104.0 == Approx( 100.0 )
# Absolute margin
ok {test-number} - 104.0 == Approx(100.0).margin(4) for: 104.0 == Approx( 100.0 )
# Absolute margin
ok {test-number} - 104.0 != Approx(100.0).margin(3) for: 104.0 != Approx( 100.0 )
# Absolute margin
ok {test-number} - 100.3 != Approx(100.0) for: 100.3 != Approx( 100.0 )
# Absolute margin
ok {test-number} - 100.3 == Approx(100.0).margin(0.5) for: 100.3 == Approx( 100.0 )
# An expression with side-effects should only be evaluated once
ok {test-number} - i++ == 7 for: 7 == 7
# An expression with side-effects should only be evaluated once
ok {test-number} - i++ == 8 for: 8 == 8
# An unchecked exception reports the line of the last assertion
ok {test-number} - 1 == 1
# An unchecked exception reports the line of the last assertion
not ok {test-number} - unexpected exception with message: 'unexpected exception'; expression was: {Unknown expression after the reported line}
# Anonymous test case 1
ok {test-number} - with 1 message: 'anonymous test case'
# Approx setters validate their arguments
ok {test-number} - Approx(0).margin(0)
# Approx setters validate their arguments
ok {test-number} - Approx(0).margin(1234656)
# Approx setters validate their arguments
ok {test-number} - Approx(0).margin(-2), std::domain_error
# Approx setters validate their arguments
ok {test-number} - Approx(0).epsilon(0)
# Approx setters validate their arguments
ok {test-number} - Approx(0).epsilon(1)
# Approx setters validate their arguments
ok {test-number} - Approx(0).epsilon(-0.001), std::domain_error
# Approx setters validate their arguments
ok {test-number} - Approx(0).epsilon(1.0001), std::domain_error
# Approx with exactly-representable margin
ok {test-number} - 0.25f == Approx(0.0f).margin(0.25f) for: 0.25f == Approx( 0.0 )
# Approx with exactly-representable margin
ok {test-number} - 0.0f == Approx(0.25f).margin(0.25f) for: 0.0f == Approx( 0.25 )
# Approx with exactly-representable margin
ok {test-number} - 0.5f == Approx(0.25f).margin(0.25f) for: 0.5f == Approx( 0.25 )
# Approx with exactly-representable margin
ok {test-number} - 245.0f == Approx(245.25f).margin(0.25f) for: 245.0f == Approx( 245.25 )
# Approx with exactly-representable margin
ok {test-number} - 245.5f == Approx(245.25f).margin(0.25f) for: 245.5f == Approx( 245.25 )
# Approximate PI
ok {test-number} - divide( 22, 7 ) == Approx( 3.141 ).epsilon( 0.001 ) for: 3.1428571429 == Approx( 3.141 )
# Approximate PI
ok {test-number} - divide( 22, 7 ) != Approx( 3.141 ).epsilon( 0.0001 ) for: 3.1428571429 != Approx( 3.141 )
# Approximate comparisons with different epsilons
ok {test-number} - d != Approx( 1.231 ) for: 1.23 != Approx( 1.231 )
# Approximate comparisons with different epsilons
ok {test-number} - d == Approx( 1.231 ).epsilon( 0.1 ) for: 1.23 == Approx( 1.231 )
# Approximate comparisons with floats
ok {test-number} - 1.23f == Approx( 1.23f ) for: 1.23f == Approx( 1.2300000191 )
# Approximate comparisons with floats
ok {test-number} - 0.0f == Approx( 0.0f ) for: 0.0f == Approx( 0.0 )
# Approximate comparisons with ints
ok {test-number} - 1 == Approx( 1 ) for: 1 == Approx( 1.0 )
# Approximate comparisons with ints
ok {test-number} - 0 == Approx( 0 ) for: 0 == Approx( 0.0 )
# Approximate comparisons with mixed numeric types
ok {test-number} - 1.0f == Approx( 1 ) for: 1.0f == Approx( 1.0 )
# Approximate comparisons with mixed numeric types
ok {test-number} - 0 == Approx( dZero) for: 0 == Approx( 0.0 )
# Approximate comparisons with mixed numeric types
ok {test-number} - 0 == Approx( dSmall ).margin( 0.001 ) for: 0 == Approx( 0.00001 )
# Approximate comparisons with mixed numeric types
ok {test-number} - 1.234f == Approx( dMedium ) for: 1.234f == Approx( 1.234 )
# Approximate comparisons with mixed numeric types
ok {test-number} - dMedium == Approx( 1.234f ) for: 1.234 == Approx( 1.2339999676 )
# Arbitrary predicate matcher
ok {test-number} - 1, Predicate<int>( alwaysTrue, "always true" ) for: 1 matches predicate: "always true"
# Arbitrary predicate matcher
ok {test-number} - 1, !Predicate<int>( alwaysFalse, "always false" ) for: 1 not matches predicate: "always false"
# Arbitrary predicate matcher
ok {test-number} - "Hello olleH", Predicate<std::string>( []( std::string const& str ) -> bool { return str.front() == str.back(); }, "First and last character should be equal" ) for: "Hello olleH" matches predicate: "First and last character should be equal"
# Arbitrary predicate matcher
ok {test-number} - "This wouldn't pass", !Predicate<std::string>( []( std::string const& str ) -> bool { return str.front() == str.back(); } ) for: "This wouldn't pass" not matches undescribed predicate
# Assertion macros support bit operators and bool conversions
ok {test-number} - lhs | rhs for: Val: 1 | Val: 2
# Assertion macros support bit operators and bool conversions
ok {test-number} - !(lhs & rhs) for: !(Val: 1 & Val: 2)
# Assertion macros support bit operators and bool conversions
ok {test-number} - HasBitOperators{ 1 } & HasBitOperators{ 1 } for: Val: 1 & Val: 1
# Assertion macros support bit operators and bool conversions
ok {test-number} - lhs ^ rhs for: Val: 1 ^ Val: 2
# Assertion macros support bit operators and bool conversions
ok {test-number} - !(lhs ^ lhs) for: !(Val: 1 ^ Val: 1)
# Assertions then sections
ok {test-number} - true
# Assertions then sections
ok {test-number} - true
# Assertions then sections
ok {test-number} - true
# Assertions then sections
ok {test-number} - true
# Assertions then sections
ok {test-number} - true
# Assertions then sections
ok {test-number} - true
# Basic use of the Contains range matcher
ok {test-number} - a, Contains(1) for: { 1, 2, 3 } contains element 1
# Basic use of the Contains range matcher
ok {test-number} - b, Contains(1) for: { 0, 1, 2 } contains element 1
# Basic use of the Contains range matcher
ok {test-number} - c, !Contains(1) for: { 4, 5, 6 } not contains element 1
# Basic use of the Contains range matcher
ok {test-number} - a, Contains(0, close_enough) for: { 1, 2, 3 } contains element 0
# Basic use of the Contains range matcher
ok {test-number} - b, Contains(0, close_enough) for: { 0, 1, 2 } contains element 0
# Basic use of the Contains range matcher
ok {test-number} - c, !Contains(0, close_enough) for: { 4, 5, 6 } not contains element 0
# Basic use of the Contains range matcher
ok {test-number} - a, Contains(4, [](auto&& lhs, size_t sz) { return lhs.size() == sz; }) for: { "abc", "abcd", "abcde" } contains element 4
# Basic use of the Contains range matcher
ok {test-number} - in, Contains(1) for: { 1, 2, 3, 4, 5 } contains element 1
# Basic use of the Contains range matcher
ok {test-number} - in, !Contains(8) for: { 1, 2, 3, 4, 5 } not contains element 8
# Basic use of the Contains range matcher
ok {test-number} - in, Contains(MoveOnlyTestElement{ 2 }) for: { 1, 2, 3 } contains element 2
# Basic use of the Contains range matcher
ok {test-number} - in, !Contains(MoveOnlyTestElement{ 9 }) for: { 1, 2, 3 } not contains element 9
# Basic use of the Contains range matcher
ok {test-number} - in, Contains(Catch::Matchers::WithinAbs(0.5, 0.5)) for: { 1.0, 2.0, 3.0, 0.0 } contains element matching is within 0.5 of 0.5
# Basic use of the Empty range matcher
ok {test-number} - empty_array, IsEmpty() for: {  } is empty
# Basic use of the Empty range matcher
ok {test-number} - non_empty_array, !IsEmpty() for: { 0.0 } not is empty
# Basic use of the Empty range matcher
ok {test-number} - empty_vec, IsEmpty() for: {  } is empty
# Basic use of the Empty range matcher
ok {test-number} - non_empty_vec, !IsEmpty() for: { 'a', 'b', 'c' } not is empty
# Basic use of the Empty range matcher
ok {test-number} - inner_lists_are_empty, !IsEmpty() for: { {  } } not is empty
# Basic use of the Empty range matcher
ok {test-number} - inner_lists_are_empty.front(), IsEmpty() for: {  } is empty
# Basic use of the Empty range matcher
ok {test-number} - has_empty{}, !IsEmpty() for: {?} not is empty
# Basic use of the Empty range matcher
ok {test-number} - unrelated::ADL_empty{}, IsEmpty() for: {?} is empty
# CAPTURE can deal with complex expressions
ok {test-number} - with 7 messages: 'a := 1' and 'b := 2' and 'c := 3' and 'a + b := 3' and 'a+b := 3' and 'c > b := true' and 'a == 1 := true'
# CAPTURE can deal with complex expressions involving commas
ok {test-number} - with 7 messages: 'std::vector<int>{1, 2, 3}[0, 1, 2] := 3' and 'std::vector<int>{1, 2, 3}[(0, 1)] := 2' and 'std::vector<int>{1, 2, 3}[0] := 1' and '(helper_1436<int, int>{12, -12}) := { 12, -12 }' and '(helper_1436<int, int>(-12, 12)) := { -12, 12 }' and '(1, 2) := 2' and '(2, 3) := 3'
# CAPTURE parses string and character constants
ok {test-number} - with 11 messages: '("comma, in string", "escaped, \", ") := "escaped, ", "' and '"single quote in string,'," := "single quote in string,',"' and '"some escapes, \\,\\\\" := "some escapes, \,\\"' and '"some, ), unmatched, } prenheses {[<" := "some, ), unmatched, } prenheses {[<"' and ''"' := '"'' and ''\'' := '''' and '',' := ','' and ''}' := '}'' and '')' := ')'' and ''(' := '('' and ''{' := '{''
# Capture and info messages
ok {test-number} - true with 1 message: 'i := 2'
# Capture and info messages
ok {test-number} - true with 1 message: '3'
# CaseInsensitiveEqualsTo is case insensitive
ok {test-number} - eq( "", "" ) for: true
# CaseInsensitiveEqualsTo is case insensitive
ok {test-number} - !(eq( "", "a" )) for: !false
# CaseInsensitiveEqualsTo is case insensitive
ok {test-number} - eq( "a", "a" ) for: true
# CaseInsensitiveEqualsTo is case insensitive
ok {test-number} - eq( "a", "A" ) for: true
# CaseInsensitiveEqualsTo is case insensitive
ok {test-number} - eq( "A", "a" ) for: true
# CaseInsensitiveEqualsTo is case insensitive
ok {test-number} - eq( "A", "A" ) for: true
# CaseInsensitiveEqualsTo is case insensitive
ok {test-number} - !(eq( "a", "b" )) for: !false
# CaseInsensitiveEqualsTo is case insensitive
ok {test-number} - !(eq( "a", "B" )) for: !false
# CaseInsensitiveLess is case insensitive
ok {test-number} - lt( "", "a" ) for: true
# CaseInsensitiveLess is case insensitive
ok {test-number} - !(lt( "a", "a" )) for: !false
# CaseInsensitiveLess is case insensitive
ok {test-number} - !(lt( "", "" )) for: !false
# CaseInsensitiveLess is case insensitive
ok {test-number} - lt( "a", "b" ) for: true
# CaseInsensitiveLess is case insensitive
ok {test-number} - lt( "a", "B" ) for: true
# CaseInsensitiveLess is case insensitive
ok {test-number} - lt( "A", "b" ) for: true
# CaseInsensitiveLess is case insensitive
ok {test-number} - lt( "A", "B" ) for: true
# Character pretty printing
ok {test-number} - tab == '\t' for: '\t' == '\t'
# Character pretty printing
ok {test-number} - newline == '\n' for: '\n' == '\n'
# Character pretty printing
ok {test-number} - carr_return == '\r' for: '\r' == '\r'
# Character pretty printing
ok {test-number} - form_feed == '\f' for: '\f' == '\f'
# Character pretty printing
ok {test-number} - space == ' ' for: ' ' == ' '
# Character pretty printing
ok {test-number} - c == chars[i] for: 'a' == 'a'
# Character pretty printing
ok {test-number} - c == chars[i] for: 'z' == 'z'
# Character pretty printing
ok {test-number} - c == chars[i] for: 'A' == 'A'
# Character pretty printing
ok {test-number} - c == chars[i] for: 'Z' == 'Z'
# Character pretty printing
ok {test-number} - null_terminator == '\0' for: 0 == 0
# Character pretty printing
ok {test-number} - c == i for: 2 == 2
# Character pretty printing
ok {test-number} - c == i for: 3 == 3
# Character pretty printing
ok {test-number} - c == i for: 4 == 4
# Character pretty printing
ok {test-number} - c == i for: 5 == 5
# Clara::Arg supports single-arg parse the way Opt does
ok {test-number} - name.empty() for: true
# Clara::Arg supports single-arg parse the way Opt does
ok {test-number} - name == "foo" for: "foo" == "foo"
# Clara::Opt supports accept-many lambdas
ok {test-number} - !(parse_result) for: !{?}
# Clara::Opt supports accept-many lambdas
ok {test-number} - parse_result for: {?}
# Clara::Opt supports accept-many lambdas
ok {test-number} - res == std::vector<std::string>{ "aaa", "bbb" } for: { "aaa", "bbb" } == { "aaa", "bbb" }
# ColourGuard behaviour
ok {test-number} - streamWrapper.str().empty() for: true
# ColourGuard behaviour
ok {test-number} - streamWrapper.str() == "1\nUsing code: 2\n2\nUsing code: 0\n3\n" for: "1 Using code: 2 2 Using code: 0 3 " == "1 Using code: 2 2 Using code: 0 3 "
# ColourGuard behaviour
ok {test-number} - streamWrapper.str() == "Using code: 2\nA\nB\nUsing code: 0\nC\n" for: "Using code: 2 A B Using code: 0 C " == "Using code: 2 A B Using code: 0 C "
# Combining MatchAllOfGeneric does not nest
ok {test-number} - with 1 message: 'std::is_same< decltype( ( MatcherA() && MatcherB() ) && MatcherC() ), Catch::Matchers::Detail:: MatchAllOfGeneric<MatcherA, MatcherB, MatcherC>>::value'
# Combining MatchAllOfGeneric does not nest
ok {test-number} - 1, ( MatcherA() && MatcherB() ) && MatcherC() for: 1 ( equals: (int) 1 or (string) "1" and equals: (long long) 1 and equals: (T) 1 )
# Combining MatchAllOfGeneric does not nest
ok {test-number} - with 1 message: 'std::is_same< decltype( MatcherA() && ( MatcherB() && MatcherC() ) ), Catch::Matchers::Detail:: MatchAllOfGeneric<MatcherA, MatcherB, MatcherC>>::value'
# Combining MatchAllOfGeneric does not nest
ok {test-number} - 1, MatcherA() && ( MatcherB() && MatcherC() ) for: 1 ( equals: (int) 1 or (string) "1" and equals: (long long) 1 and equals: (T) 1 )
# Combining MatchAllOfGeneric does not nest
ok {test-number} - with 1 message: 'std::is_same< decltype( ( MatcherA() && MatcherB() ) && ( MatcherC() && MatcherD() ) ), Catch::Matchers::Detail:: MatchAllOfGeneric<MatcherA, MatcherB, MatcherC, MatcherD>>:: value'
# Combining MatchAllOfGeneric does not nest
ok {test-number} - 1, ( MatcherA() && MatcherB() ) && ( MatcherC() && MatcherD() ) for: 1 ( equals: (int) 1 or (string) "1" and equals: (long long) 1 and equals: (T) 1 and equals: true )
# Combining MatchAnyOfGeneric does not nest
ok {test-number} - with 1 message: 'std::is_same< decltype( ( MatcherA() || MatcherB() ) || MatcherC() ), Catch::Matchers::Detail:: MatchAnyOfGeneric<MatcherA, MatcherB, MatcherC>>::value'
# Combining MatchAnyOfGeneric does not nest
ok {test-number} - 1, ( MatcherA() || MatcherB() ) || MatcherC() for: 1 ( equals: (int) 1 or (string) "1" or equals: (long long) 1 or equals: (T) 1 )
# Combining MatchAnyOfGeneric does not nest
ok {test-number} - with 1 message: 'std::is_same< decltype( MatcherA() || ( MatcherB() || MatcherC() ) ), Catch::Matchers::Detail:: MatchAnyOfGeneric<MatcherA, MatcherB, MatcherC>>::value'
# Combining MatchAnyOfGeneric does not nest
ok {test-number} - 1, MatcherA() || ( MatcherB() || MatcherC() ) for: 1 ( equals: (int) 1 or (string) "1" or equals: (long long) 1 or equals: (T) 1 )
# Combining MatchAnyOfGeneric does not nest
ok {test-number} - with 1 message: 'std::is_same< decltype( ( MatcherA() || MatcherB() ) || ( MatcherC() || MatcherD() ) ), Catch::Matchers::Detail:: MatchAnyOfGeneric<MatcherA, MatcherB, MatcherC, MatcherD>>:: value'
# Combining MatchAnyOfGeneric does not nest
ok {test-number} - 1, ( MatcherA() || MatcherB() ) || ( MatcherC() || MatcherD() ) for: 1 ( equals: (int) 1 or (string) "1" or equals: (long long) 1 or equals: (T) 1 or equals: true )
# Combining MatchNotOfGeneric does not nest
ok {test-number} - with 1 message: 'std::is_same< decltype( !MatcherA() ), Catch::Matchers::Detail::MatchNotOfGeneric<MatcherA>>::value'
# Combining MatchNotOfGeneric does not nest
ok {test-number} - 0, !MatcherA() for: 0 not equals: (int) 1 or (string) "1"
# Combining MatchNotOfGeneric does not nest
ok {test-number} - with 1 message: 'std::is_same<decltype( !!MatcherA() ), MatcherA const&>::value'
# Combining MatchNotOfGeneric does not nest
ok {test-number} - 1, !!MatcherA() for: 1 equals: (int) 1 or (string) "1"
# Combining MatchNotOfGeneric does not nest
ok {test-number} - with 1 message: 'std::is_same< decltype( !!!MatcherA() ), Catch::Matchers::Detail::MatchNotOfGeneric<MatcherA>>::value'
# Combining MatchNotOfGeneric does not nest
ok {test-number} - 0, !!!MatcherA() for: 0 not equals: (int) 1 or (string) "1"
# Combining MatchNotOfGeneric does not nest
ok {test-number} - with 1 message: 'std::is_same<decltype( !!!!MatcherA() ), MatcherA const&>::value'
# Combining MatchNotOfGeneric does not nest
ok {test-number} - 1, !!!!MatcherA() for: 1 equals: (int) 1 or (string) "1"
# Combining concrete matchers does not use templated matchers
ok {test-number} - with 1 message: 'std::is_same<decltype( StartsWith( "foo" ) || ( StartsWith( "bar" ) && EndsWith( "bar" ) && !EndsWith( "foo" ) ) ), Catch::Matchers::Detail::MatchAnyOf<std::string>>::value'
# Combining only templated matchers
ok {test-number} - with 1 message: 'std::is_same<decltype( MatcherA() || MatcherB() ), Catch::Matchers::Detail:: MatchAnyOfGeneric<MatcherA, MatcherB>>::value'
# Combining only templated matchers
ok {test-number} - 1, MatcherA() || MatcherB() for: 1 ( equals: (int) 1 or (string) "1" or equals: (long long) 1 )
# Combining only templated matchers
ok {test-number} - with 1 message: 'std::is_same<decltype( MatcherA() && MatcherB() ), Catch::Matchers::Detail:: MatchAllOfGeneric<MatcherA, MatcherB>>::value'
# Combining only templated matchers
ok {test-number} - 1, MatcherA() && MatcherB() for: 1 ( equals: (int) 1 or (string) "1" and equals: (long long) 1 )
# Combining only templated matchers
ok {test-number} - with 1 message: 'std::is_same< decltype( MatcherA() || !MatcherB() ), Catch::Matchers::Detail::MatchAnyOfGeneric< MatcherA, Catch::Matchers::Detail::MatchNotOfGeneric<MatcherB>>>::value'
# Combining only templated matchers
ok {test-number} - 1, MatcherA() || !MatcherB() for: 1 ( equals: (int) 1 or (string) "1" or not equals: (long long) 1 )
# Combining templated and concrete matchers
ok {test-number} - vec, Predicate<std::vector<int>>( []( auto const& v ) { return std::all_of( v.begin(), v.end(), []( int elem ) { return elem % 2 == 1; } ); }, "All elements are odd" ) && !EqualsRange( a ) for: { 1, 3, 5 } ( matches predicate: "All elements are odd" and not Equals: { 5, 3, 1 } )
# Combining templated and concrete matchers
ok {test-number} - str, StartsWith( "foo" ) && EqualsRange( arr ) && EndsWith( "bar" ) for: "foobar" ( starts with: "foo" and Equals: { 'f', 'o', 'o', 'b', 'a', 'r' } and ends with: "bar" )
# Combining templated and concrete matchers
ok {test-number} - str, StartsWith( "foo" ) && !EqualsRange( bad_arr ) && EndsWith( "bar" ) for: "foobar" ( starts with: "foo" and not Equals: { 'o', 'o', 'f', 'b', 'a', 'r' } and ends with: "bar" )
# Combining templated and concrete matchers
ok {test-number} - str, EqualsRange( arr ) && StartsWith( "foo" ) && EndsWith( "bar" ) for: "foobar" ( Equals: { 'f', 'o', 'o', 'b', 'a', 'r' } and starts with: "foo" and ends with: "bar" )
# Combining templated and concrete matchers
ok {test-number} - str, !EqualsRange( bad_arr ) && StartsWith( "foo" ) && EndsWith( "bar" ) for: "foobar" ( not Equals: { 'o', 'o', 'f', 'b', 'a', 'r' } and starts with: "foo" and ends with: "bar" )
# Combining templated and concrete matchers
ok {test-number} - str, EqualsRange( bad_arr ) || ( StartsWith( "foo" ) && EndsWith( "bar" ) ) for: "foobar" ( Equals: { 'o', 'o', 'f', 'b', 'a', 'r' } or ( starts with: "foo" and ends with: "bar" ) )
# Combining templated and concrete matchers
ok {test-number} - str, ( StartsWith( "foo" ) && EndsWith( "bar" ) ) || EqualsRange( bad_arr ) for: "foobar" ( ( starts with: "foo" and ends with: "bar" ) or Equals: { 'o', 'o', 'f', 'b', 'a', 'r' } )
# Combining templated matchers
ok {test-number} - container, EqualsRange( a ) || EqualsRange( b ) || EqualsRange( c ) for: { 1, 2, 3 } ( Equals: { 1, 2, 3 } or Equals: { 0, 1, 2 } or Equals: { 4, 5, 6 } )
# Commas in various macros are allowed
ok {test-number} - std::vector<constructor_throws>{constructor_throws{}, constructor_throws{}}
# Commas in various macros are allowed
ok {test-number} - std::vector<constructor_throws>{constructor_throws{}, constructor_throws{}}
# Commas in various macros are allowed
ok {test-number} - std::vector<int>{1, 2, 3} == std::vector<int>{1, 2, 3}
# Commas in various macros are allowed
ok {test-number} - std::vector<int>{1, 2, 3} == std::vector<int>{1, 2, 3}
# Commas in various macros are allowed
ok {test-number} - std::vector<int>{1, 2} == std::vector<int>{1, 2} for: { 1, 2 } == { 1, 2 }
# Commas in various macros are allowed
ok {test-number} - std::vector<int>{1, 2} == std::vector<int>{1, 2} for: { 1, 2 } == { 1, 2 }
# Commas in various macros are allowed
ok {test-number} - !(std::vector<int>{1, 2} == std::vector<int>{1, 2, 3}) for: !({ 1, 2 } == { 1, 2, 3 })
# Commas in various macros are allowed
ok {test-number} - !(std::vector<int>{1, 2} == std::vector<int>{1, 2, 3}) for: !({ 1, 2 } == { 1, 2, 3 })
# Commas in various macros are allowed
ok {test-number} - std::vector<int>{1, 2} == std::vector<int>{1, 2} for: { 1, 2 } == { 1, 2 }
# Commas in various macros are allowed
ok {test-number} - std::vector<int>{1, 2} == std::vector<int>{1, 2} for: { 1, 2 } == { 1, 2 }
# Commas in various macros are allowed
ok {test-number} - true
# Commas in various macros are allowed
ok {test-number} - std::vector<int>{1, 2} == std::vector<int>{1, 2} for: { 1, 2 } == { 1, 2 }
# Comparing function pointers
ok {test-number} - a for: 0x<hex digits>
# Comparing function pointers
ok {test-number} - a == &foo for: 0x<hex digits> == 0x<hex digits>
# Comparison ops
ok {test-number} - SimplePcg32{} == SimplePcg32{} for: {?} == {?}
# Comparison ops
ok {test-number} - SimplePcg32{ 0 } != SimplePcg32{} for: {?} != {?}
# Comparison ops
ok {test-number} - !(SimplePcg32{ 1 } == SimplePcg32{ 2 }) for: !({?} == {?})
# Comparison ops
ok {test-number} - !(SimplePcg32{ 1 } != SimplePcg32{ 1 }) for: !({?} != {?})
# Comparison with explicitly convertible types
ok {test-number} - td == Approx(10.0) for: StrongDoubleTypedef(10) == Approx( 10.0 )
# Comparison with explicitly convertible types
ok {test-number} - Approx(10.0) == td for: Approx( 10.0 ) == StrongDoubleTypedef(10)
# Comparison with explicitly convertible types
ok {test-number} - td != Approx(11.0) for: StrongDoubleTypedef(10) != Approx( 11.0 )
# Comparison with explicitly convertible types
ok {test-number} - Approx(11.0) != td for: Approx( 11.0 ) != StrongDoubleTypedef(10)
# Comparison with explicitly convertible types
ok {test-number} - td <= Approx(10.0) for: StrongDoubleTypedef(10) <= Approx( 10.0 )
# Comparison with explicitly convertible types
ok {test-number} - td <= Approx(11.0) for: StrongDoubleTypedef(10) <= Approx( 11.0 )
# Comparison with explicitly convertible types
ok {test-number} - Approx(10.0) <= td for: Approx( 10.0 ) <= StrongDoubleTypedef(10)
# Comparison with explicitly convertible types
ok {test-number} - Approx(9.0) <= td for: Approx( 9.0 ) <= StrongDoubleTypedef(10)
# Comparison with explicitly convertible types
ok {test-number} - td >= Approx(9.0) for: StrongDoubleTypedef(10) >= Approx( 9.0 )
# Comparison with explicitly convertible types
ok {test-number} - td >= Approx(td) for: StrongDoubleTypedef(10) >= Approx( 10.0 )
# Comparison with explicitly convertible types
ok {test-number} - Approx(td) >= td for: Approx( 10.0 ) >= StrongDoubleTypedef(10)
# Comparison with explicitly convertible types
ok {test-number} - Approx(11.0) >= td for: Approx( 11.0 ) >= StrongDoubleTypedef(10)
# Comparisons between ints where one side is computed
ok {test-number} - 54 == 6*9 for: 54 == 54
# Comparisons between unsigned ints and negative signed ints match c++ standard behaviour
ok {test-number} - ( -1 > 2u ) for: true
# Comparisons between unsigned ints and negative signed ints match c++ standard behaviour
ok {test-number} - -1 > 2u for: -1 > 2
# Comparisons between unsigned ints and negative signed ints match c++ standard behaviour
ok {test-number} - ( 2u < -1 ) for: true
# Comparisons between unsigned ints and negative signed ints match c++ standard behaviour
ok {test-number} - 2u < -1 for: 2 < -1
# Comparisons between unsigned ints and negative signed ints match c++ standard behaviour
ok {test-number} - ( minInt > 2u ) for: true
# Comparisons between unsigned ints and negative signed ints match c++ standard behaviour
ok {test-number} - minInt > 2u for: -2147483648 > 2
# Comparisons with int literals don't warn when mixing signed/ unsigned
ok {test-number} - i == 1 for: 1 == 1
# Comparisons with int literals don't warn when mixing signed/ unsigned
ok {test-number} - ui == 2 for: 2 == 2
# Comparisons with int literals don't warn when mixing signed/ unsigned
ok {test-number} - l == 3 for: 3 == 3
# Comparisons with int literals don't warn when mixing signed/ unsigned
ok {test-number} - ul == 4 for: 4 == 4
# Comparisons with int literals don't warn when mixing signed/ unsigned
ok {test-number} - c == 5 for: 5 == 5
# Comparisons with int literals don't warn when mixing signed/ unsigned
ok {test-number} - uc == 6 for: 6 == 6
# Comparisons with int literals don't warn when mixing signed/ unsigned
ok {test-number} - 1 == i for: 1 == 1
# Comparisons with int literals don't warn when mixing signed/ unsigned
ok {test-number} - 2 == ui for: 2 == 2
# Comparisons with int literals don't warn when mixing signed/ unsigned
ok {test-number} - 3 == l for: 3 == 3
# Comparisons with int literals don't warn when mixing signed/ unsigned
ok {test-number} - 4 == ul for: 4 == 4
# Comparisons with int literals don't warn when mixing signed/ unsigned
ok {test-number} - 5 == c for: 5 == 5
# Comparisons with int literals don't warn when mixing signed/ unsigned
ok {test-number} - 6 == uc for: 6 == 6
# Comparisons with int literals don't warn when mixing signed/ unsigned
ok {test-number} - (std::numeric_limits<uint32_t>::max)() > ul for: 4294967295 (0x<hex digits>) > 4
# Composed generic matchers shortcircuit
ok {test-number} - !(matcher.match( 1 )) for: !false
# Composed generic matchers shortcircuit
ok {test-number} - first.matchCalled for: true
# Composed generic matchers shortcircuit
ok {test-number} - !second.matchCalled for: true
# Composed generic matchers shortcircuit
ok {test-number} - matcher.match( 1 ) for: true
# Composed generic matchers shortcircuit
ok {test-number} - first.matchCalled for: true
# Composed generic matchers shortcircuit
ok {test-number} - !second.matchCalled for: true
# Composed matchers shortcircuit
ok {test-number} - !(matcher.match( 1 )) for: !false
# Composed matchers shortcircuit
ok {test-number} - first.matchCalled for: true
# Composed matchers shortcircuit
ok {test-number} - !second.matchCalled for: true
# Composed matchers shortcircuit
ok {test-number} - matcher.match( 1 ) for: true
# Composed matchers shortcircuit
ok {test-number} - first.matchCalled for: true
# Composed matchers shortcircuit
ok {test-number} - !second.matchCalled for: true
# Contains string matcher
not ok {test-number} - testStringForMatching(), ContainsSubstring( "not there", Catch::CaseSensitive::No ) for: "this string contains 'abc' as a substring" contains: "not there" (case insensitive)
# Contains string matcher
not ok {test-number} - testStringForMatching(), ContainsSubstring( "STRING" ) for: "this string contains 'abc' as a substring" contains: "STRING"
# Copy and then generate a range
ok {test-number} - elem % 2 == 1 for: 1 == 1
# Copy and then generate a range
ok {test-number} - elem % 2 == 1 for: 1 == 1
# Copy and then generate a range
ok {test-number} - elem % 2 == 1 for: 1 == 1
# Copy and then generate a range
ok {test-number} - elem % 2 == 1 for: 1 == 1
# Copy and then generate a range
ok {test-number} - elem % 2 == 1 for: 1 == 1
# Copy and then generate a range
ok {test-number} - elem % 2 == 1 for: 1 == 1
# Copy and then generate a range
ok {test-number} - elem % 2 == 1 for: 1 == 1
# Copy and then generate a range
ok {test-number} - elem % 2 == 1 for: 1 == 1
# Copy and then generate a range
ok {test-number} - elem % 2 == 1 for: 1 == 1
# Copy and then generate a range
ok {test-number} - elem % 2 == 1 for: 1 == 1
# Copy and then generate a range
ok {test-number} - elem % 2 == 1 for: 1 == 1
# Copy and then generate a range
ok {test-number} - elem % 2 == 1 for: 1 == 1
# Copy and then generate a range
ok {test-number} - call_count == 1 for: 1 == 1
# Copy and then generate a range
ok {test-number} - make_data().size() == test_count for: 6 == 6
# Cout stream properly declares it writes to stdout
ok {test-number} - Catch::makeStream( "-" )->isConsole() for: true
# Custom exceptions can be translated when testing for nothrow
not ok {test-number} - unexpected exception with message: 'custom exception - not std'; expression was: throwCustom()
# Custom exceptions can be translated when testing for throwing as something else
not ok {test-number} - unexpected exception with message: 'custom exception - not std'; expression was: throwCustom(), std::exception
# Custom std-exceptions can be custom translated
not ok {test-number} - unexpected exception with message: 'custom std exception'
# Default scale is invisible to comparison
ok {test-number} - 101.000001 != Approx(100).epsilon(0.01) for: 101.000001 != Approx( 100.0 )
# Default scale is invisible to comparison
ok {test-number} - std::pow(10, -5) != Approx(std::pow(10, -7)) for: 0.00001 != Approx( 0.0000001 )
# Directly creating an EnumInfo
ok {test-number} - enumInfo->lookup(0) == "Value1" for: Value1 == "Value1"
# Directly creating an EnumInfo
ok {test-number} - enumInfo->lookup(1) == "Value2" for: Value2 == "Value2"
# Directly creating an EnumInfo
ok {test-number} - enumInfo->lookup(3) == "{** unexpected enum value **}" for: {** unexpected enum value **} == "{** unexpected enum value **}"
# Empty stream name opens cout stream
ok {test-number} - Catch::makeStream( "" )->isConsole() for: true
# Empty tag is not allowed
ok {test-number} - Catch::TestCaseInfo( "", { "fake test name", "[]" }, dummySourceLineInfo )
# EndsWith string matcher
not ok {test-number} - testStringForMatching(), EndsWith( "Substring" ) for: "this string contains 'abc' as a substring" ends with: "Substring"
# EndsWith string matcher
not ok {test-number} - testStringForMatching(), EndsWith( "this", Catch::CaseSensitive::No ) for: "this string contains 'abc' as a substring" ends with: "this" (case insensitive)
# Enums can quickly have stringification enabled using REGISTER_ENUM
ok {test-number} - stringify( EnumClass3::Value1 ) == "Value1" for: "Value1" == "Value1"
# Enums can quickly have stringification enabled using REGISTER_ENUM
ok {test-number} - stringify( EnumClass3::Value2 ) == "Value2" for: "Value2" == "Value2"
# Enums can quickly have stringification enabled using REGISTER_ENUM
ok {test-number} - stringify( EnumClass3::Value3 ) == "Value3" for: "Value3" == "Value3"
# Enums can quickly have stringification enabled using REGISTER_ENUM
ok {test-number} - stringify( EnumClass3::Value4 ) == "{** unexpected enum value **}" for: "{** unexpected enum value **}" == "{** unexpected enum value **}"
# Enums can quickly have stringification enabled using REGISTER_ENUM
ok {test-number} - stringify( ec3 ) == "Value2" for: "Value2" == "Value2"
# Enums in namespaces can quickly have stringification enabled using REGISTER_ENUM
ok {test-number} - stringify( Bikeshed::Colours::Red ) == "Red" for: "Red" == "Red"
# Enums in namespaces can quickly have stringification enabled using REGISTER_ENUM
ok {test-number} - stringify( Bikeshed::Colours::Blue ) == "Blue" for: "Blue" == "Blue"
# Epsilon only applies to Approx's value
ok {test-number} - 101.01 != Approx(100).epsilon(0.01) for: 101.01 != Approx( 100.0 )
# Equality checks that should fail
not ok {test-number} - data.int_seven == 6 for: 7 == 6
# Equality checks that should fail
not ok {test-number} - data.int_seven == 8 for: 7 == 8
# Equality checks that should fail
not ok {test-number} - data.int_seven == 0 for: 7 == 0
# Equality checks that should fail
not ok {test-number} - data.float_nine_point_one == Approx( 9.11f ) for: 9.1f == Approx( 9.1099996567 )
# Equality checks that should fail
not ok {test-number} - data.float_nine_point_one == Approx( 9.0f ) for: 9.1f == Approx( 9.0 )
# Equality checks that should fail
not ok {test-number} - data.float_nine_point_one == Approx( 1 ) for: 9.1f == Approx( 1.0 )
# Equality checks that should fail
not ok {test-number} - data.float_nine_point_one == Approx( 0 ) for: 9.1f == Approx( 0.0 )
# Equality checks that should fail
not ok {test-number} - data.double_pi == Approx( 3.1415 ) for: 3.1415926535 == Approx( 3.1415 )
# Equality checks that should fail
not ok {test-number} - data.str_hello == "goodbye" for: "hello" == "goodbye"
# Equality checks that should fail
not ok {test-number} - data.str_hello == "hell" for: "hello" == "hell"
# Equality checks that should fail
not ok {test-number} - data.str_hello == "hello1" for: "hello" == "hello1"
# Equality checks that should fail
not ok {test-number} - data.str_hello.size() == 6 for: 5 == 6
# Equality checks that should fail
not ok {test-number} - x == Approx( 1.301 ) for: 1.3 == Approx( 1.301 )
# Equality checks that should succeed
ok {test-number} - data.int_seven == 7 for: 7 == 7
# Equality checks that should succeed
ok {test-number} - data.float_nine_point_one == Approx( 9.1f ) for: 9.1f == Approx( 9.1000003815 )
# Equality checks that should succeed
ok {test-number} - data.double_pi == Approx( 3.1415926535 ) for: 3.1415926535 == Approx( 3.1415926535 )
# Equality checks that should succeed
ok {test-number} - data.str_hello == "hello" for: "hello" == "hello"
# Equality checks that should succeed
ok {test-number} - "hello" == data.str_hello for: "hello" == "hello"
# Equality checks that should succeed
ok {test-number} - data.str_hello.size() == 5 for: 5 == 5
# Equality checks that should succeed
ok {test-number} - x == Approx( 1.3 ) for: 1.3 == Approx( 1.3 )
# Equals
ok {test-number} - testStringForMatching(), Equals( "this string contains 'abc' as a substring" ) for: "this string contains 'abc' as a substring" equals: "this string contains 'abc' as a substring"
# Equals
ok {test-number} - testStringForMatching(), Equals( "this string contains 'ABC' as a substring", Catch::CaseSensitive::No ) for: "this string contains 'abc' as a substring" equals: "this string contains 'abc' as a substring" (case insensitive)
# Equals string matcher
not ok {test-number} - testStringForMatching(), Equals( "this string contains 'ABC' as a substring" ) for: "this string contains 'abc' as a substring" equals: "this string contains 'ABC' as a substring"
# Equals string matcher
not ok {test-number} - testStringForMatching(), Equals( "something else", Catch::CaseSensitive::No ) for: "this string contains 'abc' as a substring" equals: "something else" (case insensitive)
# Exception as a value (e.g. in REQUIRE_THROWS_MATCHES) can be stringified
ok {test-number} - ::Catch::Detail::stringify(WhatException{}) == "This exception has overridden what() method" for: "This exception has overridden what() method" == "This exception has overridden what() method"
# Exception as a value (e.g. in REQUIRE_THROWS_MATCHES) can be stringified
ok {test-number} - ::Catch::Detail::stringify(OperatorException{}) == "OperatorException" for: "OperatorException" == "OperatorException"
# Exception as a value (e.g. in REQUIRE_THROWS_MATCHES) can be stringified
ok {test-number} - ::Catch::Detail::stringify(StringMakerException{}) == "StringMakerException" for: "StringMakerException" == "StringMakerException"
# Exception matchers that fail
not ok {test-number} - expected exception, got none; expression was: doesNotThrow(), SpecialException, ExceptionMatcher{ 1 }
# Exception matchers that fail
not ok {test-number} - expected exception, got none; expression was: doesNotThrow(), SpecialException, ExceptionMatcher{ 1 }
# Exception matchers that fail
not ok {test-number} - unexpected exception with message: 'Unknown exception'; expression was: throwsAsInt( 1 ), SpecialException, ExceptionMatcher{ 1 }
# Exception matchers that fail
not ok {test-number} - unexpected exception with message: 'Unknown exception'; expression was: throwsAsInt( 1 ), SpecialException, ExceptionMatcher{ 1 }
# Exception matchers that fail
not ok {test-number} - throwsSpecialException( 3 ), SpecialException, ExceptionMatcher{ 1 } for: SpecialException::what special exception has value of 1
# Exception matchers that fail
not ok {test-number} - throwsSpecialException( 4 ), SpecialException, ExceptionMatcher{ 1 } for: SpecialException::what special exception has value of 1
# Exception matchers that succeed
ok {test-number} - throwsSpecialException( 1 ), SpecialException, ExceptionMatcher{ 1 } for: SpecialException::what special exception has value of 1
# Exception matchers that succeed
ok {test-number} - throwsSpecialException( 2 ), SpecialException, ExceptionMatcher{ 2 } for: SpecialException::what special exception has value of 2
# Exception message can be matched
ok {test-number} - throwsDerivedException(), DerivedException, MessageMatches( StartsWith( "Derived" ) ) for: DerivedException::what  matches "starts with: "Derived""
# Exception message can be matched
ok {test-number} - throwsDerivedException(), DerivedException, MessageMatches( EndsWith( "::what" ) ) for: DerivedException::what  matches "ends with: "::what""
# Exception message can be matched
ok {test-number} - throwsDerivedException(), DerivedException, MessageMatches( !StartsWith( "::what" ) ) for: DerivedException::what  matches "not starts with: "::what""
# Exception message can be matched
ok {test-number} - throwsSpecialException( 2 ), SpecialException, MessageMatches( StartsWith( "Special" ) ) for: SpecialException::what  matches "starts with: "Special""
# Exception messages can be tested for
ok {test-number} - thisThrows(), "expected exception" for: "expected exception" equals: "expected exception"
# Exception messages can be tested for
ok {test-number} - thisThrows(), Equals( "expecteD Exception", Catch::CaseSensitive::No ) for: "expected exception" equals: "expected exception" (case insensitive)
# Exception messages can be tested for
ok {test-number} - thisThrows(), StartsWith( "expected" ) for: "expected exception" starts with: "expected"
# Exception messages can be tested for
ok {test-number} - thisThrows(), EndsWith( "exception" ) for: "expected exception" ends with: "exception"
# Exception messages can be tested for
ok {test-number} - thisThrows(), ContainsSubstring( "except" ) for: "expected exception" contains: "except"
# Exception messages can be tested for
ok {test-number} - thisThrows(), ContainsSubstring( "exCept", Catch::CaseSensitive::No ) for: "expected exception" contains: "except" (case insensitive)
# Exceptions matchers
ok {test-number} - throwsDerivedException(), DerivedException, Message( "DerivedException::what" ) for: DerivedException::what exception message matches "DerivedException::what"
# Exceptions matchers
ok {test-number} - throwsDerivedException(), DerivedException, !Message( "derivedexception::what" ) for: DerivedException::what not exception message matches "derivedexception::what"
# Exceptions matchers
ok {test-number} - throwsSpecialException( 2 ), SpecialException, !Message( "DerivedException::what" ) for: SpecialException::what not exception message matches "DerivedException::what"
# Exceptions matchers
ok {test-number} - throwsSpecialException( 2 ), SpecialException, Message( "SpecialException::what" ) for: SpecialException::what exception message matches "SpecialException::what"
# Expected exceptions that don't throw or unexpected exceptions fail the test
not ok {test-number} - unexpected exception with message: 'expected exception'; expression was: thisThrows(), std::string
# Expected exceptions that don't throw or unexpected exceptions fail the test
not ok {test-number} - expected exception, got none; expression was: thisDoesntThrow(), std::domain_error
# Expected exceptions that don't throw or unexpected exceptions fail the test
not ok {test-number} - unexpected exception with message: 'expected exception'; expression was: thisThrows()
# FAIL aborts the test
not ok {test-number} - explicitly with 1 message: 'This is a failure'
# FAIL does not require an argument
not ok {test-number} - explicitly
# FAIL_CHECK does not abort the test
not ok {test-number} - explicitly with 1 message: 'This is a failure'
# FAIL_CHECK does not abort the test
warning {test-number} - 'This message appears in the output'
# Factorials are computed
ok {test-number} - Factorial(0) == 1 for: 1 == 1
# Factorials are computed
ok {test-number} - Factorial(1) == 1 for: 1 == 1
# Factorials are computed
ok {test-number} - Factorial(2) == 2 for: 2 == 2
# Factorials are computed
ok {test-number} - Factorial(3) == 6 for: 6 == 6
# Factorials are computed
ok {test-number} - Factorial(10) == 3628800 for: 3628800 (0x<hex digits>) == 3628800 (0x<hex digits>)
# Filter generator throws exception for empty generator
ok {test-number} - filter( []( int ) { return false; }, value( 3 ) ), Catch::GeneratorException
# Floating point matchers: double
ok {test-number} - 10., WithinRel( 11.1, 0.1 ) for: 10.0 and 11.1 are within 10% of each other
# Floating point matchers: double
ok {test-number} - 10., !WithinRel( 11.2, 0.1 ) for: 10.0 not and 11.2 are within 10% of each other
# Floating point matchers: double
ok {test-number} - 1., !WithinRel( 0., 0.99 ) for: 1.0 not and 0 are within 99% of each other
# Floating point matchers: double
ok {test-number} - -0., WithinRel( 0. ) for: -0.0 and 0 are within 2.22045e-12% of each other
# Floating point matchers: double
ok {test-number} - v1, WithinRel( v2 ) for: 0.0 and 2.22507e-308 are within 2.22045e-12% of each other
# Floating point matchers: double
ok {test-number} - 1., WithinAbs( 1., 0 ) for: 1.0 is within 0.0 of 1.0
# Floating point matchers: double
ok {test-number} - 0., WithinAbs( 1., 1 ) for: 0.0 is within 1.0 of 1.0
# Floating point matchers: double
ok {test-number} - 0., !WithinAbs( 1., 0.99 ) for: 0.0 not is within 0.99 of 1.0
# Floating point matchers: double
ok {test-number} - 0., !WithinAbs( 1., 0.99 ) for: 0.0 not is within 0.99 of 1.0
# Floating point matchers: double
ok {test-number} - 11., !WithinAbs( 10., 0.5 ) for: 11.0 not is within 0.5 of 10.0
# Floating point matchers: double
ok {test-number} - 10., !WithinAbs( 11., 0.5 ) for: 10.0 not is within 0.5 of 11.0
# Floating point matchers: double
ok {test-number} - -10., WithinAbs( -10., 0.5 ) for: -10.0 is within 0.5 of -10.0
# Floating point matchers: double
ok {test-number} - -10., WithinAbs( -9.6, 0.5 ) for: -10.0 is within 0.5 of -9.6
# Floating point matchers: double
ok {test-number} - 1., WithinULP( 1., 0 ) for: 1.0 is within 0 ULPs of 1.0000000000000000e+00 ([1.0000000000000000e+00, 1.0000000000000000e+00])
# Floating point matchers: double
ok {test-number} - nextafter( 1., 2. ), WithinULP( 1., 1 ) for: 1.0 is within 1 ULPs of 1.0000000000000000e+00 ([9.9999999999999989e-01, 1.0000000000000002e+00])
# Floating point matchers: double
ok {test-number} - 0., WithinULP( nextafter( 0., 1. ), 1 ) for: 0.0 is within 1 ULPs of 4.9406564584124654e-324 ([0.0000000000000000e+00, 9.8813129168249309e-324])
# Floating point matchers: double
ok {test-number} - 1., WithinULP( nextafter( 1., 0. ), 1 ) for: 1.0 is within 1 ULPs of 9.9999999999999989e-01 ([9.9999999999999978e-01, 1.0000000000000000e+00])
# Floating point matchers: double
ok {test-number} - 1., !WithinULP( nextafter( 1., 2. ), 0 ) for: 1.0 not is within 0 ULPs of 1.0000000000000002e+00 ([1.0000000000000002e+00, 1.0000000000000002e+00])
# Floating point matchers: double
ok {test-number} - 1., WithinULP( 1., 0 ) for: 1.0 is within 0 ULPs of 1.0000000000000000e+00 ([1.0000000000000000e+00, 1.0000000000000000e+00])
# Floating point matchers: double
ok {test-number} - -0., WithinULP( 0., 0 ) for: -0.0 is within 0 ULPs of 0.0000000000000000e+00 ([0.0000000000000000e+00, 0.0000000000000000e+00])
# Floating point matchers: double
ok {test-number} - 1., WithinAbs( 1., 0.5 ) || WithinULP( 2., 1 ) for: 1.0 ( is within 0.5 of 1.0 or is within 1 ULPs of 2.0000000000000000e+00 ([1.9999999999999998e+00, 2.0000000000000004e+00]) )
# Floating point matchers: double
ok {test-number} - 1., WithinAbs( 2., 0.5 ) || WithinULP( 1., 0 ) for: 1.0 ( is within 0.5 of 2.0 or is within 0 ULPs of 1.0000000000000000e+00 ([1.0000000000000000e+00, 1.0000000000000000e+00]) )
# Floating point matchers: double
ok {test-number} - 0.0001, WithinAbs( 0., 0.001 ) || WithinRel( 0., 0.1 ) for: 0.0001 ( is within 0.001 of 0.0 or and 0 are within 10% of each other )
# Floating point matchers: double
ok {test-number} - WithinAbs( 1., 0. )
# Floating point matchers: double
ok {test-number} - WithinAbs( 1., -1. ), std::domain_error
# Floating point matchers: double
ok {test-number} - WithinULP( 1., 0 )
# Floating point matchers: double
ok {test-number} - WithinRel( 1., 0. )
# Floating point matchers: double
ok {test-number} - WithinRel( 1., -0.2 ), std::domain_error
# Floating point matchers: double
ok {test-number} - WithinRel( 1., 1. ), std::domain_error
# Floating point matchers: double
ok {test-number} - 1., !IsNaN() for: 1.0 not is NaN
# Floating point matchers: float
ok {test-number} - 10.f, WithinRel( 11.1f, 0.1f ) for: 10.0f and 11.1 are within 10% of each other
# Floating point matchers: float
ok {test-number} - 10.f, !WithinRel( 11.2f, 0.1f ) for: 10.0f not and 11.2 are within 10% of each other
# Floating point matchers: float
ok {test-number} - 1.f, !WithinRel( 0.f, 0.99f ) for: 1.0f not and 0 are within 99% of each other
# Floating point matchers: float
ok {test-number} - -0.f, WithinRel( 0.f ) for: -0.0f and 0 are within 0.00119209% of each other
# Floating point matchers: float
ok {test-number} - v1, WithinRel( v2 ) for: 0.0f and 1.17549e-38 are within 0.00119209% of each other
# Floating point matchers: float
ok {test-number} - 1.f, WithinAbs( 1.f, 0 ) for: 1.0f is within 0.0 of 1.0
# Floating point matchers: float
ok {test-number} - 0.f, WithinAbs( 1.f, 1 ) for: 0.0f is within 1.0 of 1.0
# Floating point matchers: float
ok {test-number} - 0.f, !WithinAbs( 1.f, 0.99f ) for: 0.0f not is within 0.9900000095 of 1.0
# Floating point matchers: float
ok {test-number} - 0.f, !WithinAbs( 1.f, 0.99f ) for: 0.0f not is within 0.9900000095 of 1.0
# Floating point matchers: float
ok {test-number} - 0.f, WithinAbs( -0.f, 0 ) for: 0.0f is within 0.0 of -0.0
# Floating point matchers: float
ok {test-number} - 11.f, !WithinAbs( 10.f, 0.5f ) for: 11.0f not is within 0.5 of 10.0
# Floating point matchers: float
ok {test-number} - 10.f, !WithinAbs( 11.f, 0.5f ) for: 10.0f not is within 0.5 of 11.0
# Floating point matchers: float
ok {test-number} - -10.f, WithinAbs( -10.f, 0.5f ) for: -10.0f is within 0.5 of -10.0
# Floating point matchers: float
ok {test-number} - -10.f, WithinAbs( -9.6f, 0.5f ) for: -10.0f is within 0.5 of -9.6000003815
# Floating point matchers: float
ok {test-number} - 1.f, WithinULP( 1.f, 0 ) for: 1.0f is within 0 ULPs of 1.00000000e+00f ([1.00000000e+00, 1.00000000e+00])
# Floating point matchers: float
ok {test-number} - -1.f, WithinULP( -1.f, 0 ) for: -1.0f is within 0 ULPs of -1.00000000e+00f ([-1.00000000e+00, -1.00000000e+00])
# Floating point matchers: float
ok {test-number} - nextafter( 1.f, 2.f ), WithinULP( 1.f, 1 ) for: 1.0f is within 1 ULPs of 1.00000000e+00f ([9.99999940e-01, 1.00000012e+00])
# Floating point matchers: float
ok {test-number} - 0.f, WithinULP( nextafter( 0.f, 1.f ), 1 ) for: 0.0f is within 1 ULPs of 1.40129846e-45f ([0.00000000e+00, 2.80259693e-45])
# Floating point matchers: float
ok {test-number} - 1.f, WithinULP( nextafter( 1.f, 0.f ), 1 ) for: 1.0f is within 1 ULPs of 9.99999940e-01f ([9.99999881e-01, 1.00000000e+00])
# Floating point matchers: float
ok {test-number} - 1.f, !WithinULP( nextafter( 1.f, 2.f ), 0 ) for: 1.0f not is within 0 ULPs of 1.00000012e+00f ([1.00000012e+00, 1.00000012e+00])
# Floating point matchers: float
ok {test-number} - 1.f, WithinULP( 1.f, 0 ) for: 1.0f is within 0 ULPs of 1.00000000e+00f ([1.00000000e+00, 1.00000000e+00])
# Floating point matchers: float
ok {test-number} - -0.f, WithinULP( 0.f, 0 ) for: -0.0f is within 0 ULPs of 0.00000000e+00f ([0.00000000e+00, 0.00000000e+00])
# Floating point matchers: float
ok {test-number} - 1.f, WithinAbs( 1.f, 0.5 ) || WithinULP( 1.f, 1 ) for: 1.0f ( is within 0.5 of 1.0 or is within 1 ULPs of 1.00000000e+00f ([9.99999940e-01, 1.00000012e+00]) )
# Floating point matchers: float
ok {test-number} - 1.f, WithinAbs( 2.f, 0.5 ) || WithinULP( 1.f, 0 ) for: 1.0f ( is within 0.5 of 2.0 or is within 0 ULPs of 1.00000000e+00f ([1.00000000e+00, 1.00000000e+00]) )
# Floating point matchers: float
ok {test-number} - 0.0001f, WithinAbs( 0.f, 0.001f ) || WithinRel( 0.f, 0.1f ) for: 0.0001f ( is within 0.001 of 0.0 or and 0 are within 10% of each other )
# Floating point matchers: float
ok {test-number} - WithinAbs( 1.f, 0.f )
# Floating point matchers: float
ok {test-number} - WithinAbs( 1.f, -1.f ), std::domain_error
# Floating point matchers: float
ok {test-number} - WithinULP( 1.f, 0 )
# Floating point matchers: float
ok {test-number} - WithinULP( 1.f, static_cast<uint64_t>( -1 ) ), std::domain_error
# Floating point matchers: float
ok {test-number} - WithinRel( 1.f, 0.f )
# Floating point matchers: float
ok {test-number} - WithinRel( 1.f, -0.2f ), std::domain_error
# Floating point matchers: float
ok {test-number} - WithinRel( 1.f, 1.f ), std::domain_error
# Floating point matchers: float
ok {test-number} - 1., !IsNaN() for: 1.0 not is NaN
# Generators -- adapters
ok {test-number} - i % 2 == 0 for: 0 == 0
# Generators -- adapters
ok {test-number} - i % 2 == 0 for: 0 == 0
# Generators -- adapters
ok {test-number} - i % 2 == 0 for: 0 == 0
# Generators -- adapters
ok {test-number} - filter([] (int) {return false; }, value(1)), Catch::GeneratorException
# Generators -- adapters
ok {test-number} - i < 4 for: 1 < 4
# Generators -- adapters
ok {test-number} - i < 4 for: 2 < 4
# Generators -- adapters
ok {test-number} - i < 4 for: 3 < 4
# Generators -- adapters
ok {test-number} - i % 2 == 0 for: 0 == 0
# Generators -- adapters
ok {test-number} - i % 2 == 0 for: 0 == 0
# Generators -- adapters
ok {test-number} - i % 2 == 0 for: 0 == 0
# Generators -- adapters
ok {test-number} - i.size() == 1 for: 1 == 1
# Generators -- adapters
ok {test-number} - i.size() == 1 for: 1 == 1
# Generators -- adapters
ok {test-number} - i.size() == 1 for: 1 == 1
# Generators -- adapters
ok {test-number} - i.size() == 1 for: 1 == 1
# Generators -- adapters
ok {test-number} - i.size() == 1 for: 1 == 1
# Generators -- adapters
ok {test-number} - i.size() == 1 for: 1 == 1
# Generators -- adapters
ok {test-number} - j > 0 for: 1 > 0
# Generators -- adapters
ok {test-number} - j > 0 for: 2 > 0
# Generators -- adapters
ok {test-number} - j > 0 for: 3 > 0
# Generators -- adapters
ok {test-number} - j > 0 for: 1 > 0
# Generators -- adapters
ok {test-number} - j > 0 for: 2 > 0
# Generators -- adapters
ok {test-number} - j > 0 for: 3 > 0
# Generators -- adapters
ok {test-number} - chunk2.size() == 2 for: 2 == 2
# Generators -- adapters
ok {test-number} - chunk2.front() == chunk2.back() for: 1 == 1
# Generators -- adapters
ok {test-number} - chunk2.size() == 2 for: 2 == 2
# Generators -- adapters
ok {test-number} - chunk2.front() == chunk2.back() for: 2 == 2
# Generators -- adapters
ok {test-number} - chunk2.size() == 2 for: 2 == 2
# Generators -- adapters
ok {test-number} - chunk2.front() == chunk2.back() for: 3 == 3
# Generators -- adapters
ok {test-number} - chunk2.size() == 2 for: 2 == 2
# Generators -- adapters
ok {test-number} - chunk2.front() == chunk2.back() for: 1 == 1
# Generators -- adapters
ok {test-number} - chunk2.front() < 3 for: 1 < 3
# Generators -- adapters
ok {test-number} - chunk2.size() == 2 for: 2 == 2
# Generators -- adapters
ok {test-number} - chunk2.front() == chunk2.back() for: 2 == 2
# Generators -- adapters
ok {test-number} - chunk2.front() < 3 for: 2 < 3
# Generators -- adapters
ok {test-number} - chunk2.size() == 0 for: 0 == 0
# Generators -- adapters
ok {test-number} - chunk2.size() == 0 for: 0 == 0
# Generators -- adapters
ok {test-number} - chunk2.size() == 0 for: 0 == 0
# Generators -- adapters
ok {test-number} - chunk(2, value(1)), Catch::GeneratorException
# Generators -- simple
ok {test-number} - j < i for: -3 < 1
# Generators -- simple
ok {test-number} - j < i for: -2 < 1
# Generators -- simple
ok {test-number} - j < i for: -1 < 1
# Generators -- simple
ok {test-number} - 4u * i > str.size() for: 4 > 1
# Generators -- simple
ok {test-number} - 4u * i > str.size() for: 4 > 2
# Generators -- simple
ok {test-number} - 4u * i > str.size() for: 4 > 3
# Generators -- simple
ok {test-number} - j < i for: -3 < 2
# Generators -- simple
ok {test-number} - j < i for: -2 < 2
# Generators -- simple
ok {test-number} - j < i for: -1 < 2
# Generators -- simple
ok {test-number} - 4u * i > str.size() for: 8 > 1
# Generators -- simple
ok {test-number} - 4u * i > str.size() for: 8 > 2
# Generators -- simple
ok {test-number} - 4u * i > str.size() for: 8 > 3
# Generators -- simple
ok {test-number} - j < i for: -3 < 3
# Generators -- simple
ok {test-number} - j < i for: -2 < 3
# Generators -- simple
ok {test-number} - j < i for: -1 < 3
# Generators -- simple
ok {test-number} - 4u * i > str.size() for: 12 > 1
# Generators -- simple
ok {test-number} - 4u * i > str.size() for: 12 > 2
# Generators -- simple
ok {test-number} - 4u * i > str.size() for: 12 > 3
# Generators internals
ok {test-number} - gen.get() == 123 for: 123 == 123
# Generators internals
ok {test-number} - !(gen.next()) for: !false
# Generators internals
ok {test-number} - gen.get() == 1 for: 1 == 1
# Generators internals
ok {test-number} - gen.next() for: true
# Generators internals
ok {test-number} - gen.get() == 3 for: 3 == 3
# Generators internals
ok {test-number} - gen.next() for: true
# Generators internals
ok {test-number} - gen.get() == 5 for: 5 == 5
# Generators internals
ok {test-number} - !(gen.next()) for: !false
# Generators internals
ok {test-number} - gen.get() == 1 for: 1 == 1
# Generators internals
ok {test-number} - gen.next() for: true
# Generators internals
ok {test-number} - gen.get() == 5 for: 5 == 5
# Generators internals
ok {test-number} - gen.next() for: true
# Generators internals
ok {test-number} - gen.get() == 2 for: 2 == 2
# Generators internals
ok {test-number} - gen.next() for: true
# Generators internals
ok {test-number} - gen.get() == 4 for: 4 == 4
# Generators internals
ok {test-number} - gen.next() for: true
# Generators internals
ok {test-number} - gen.get() == 0 for: 0 == 0
# Generators internals
ok {test-number} - !(gen.next()) for: !false
# Generators internals
ok {test-number} - gen.get().size() == 2 for: 2 == 2
# Generators internals
ok {test-number} - gen.get() == "aa" for: "aa" == "aa"
# Generators internals
ok {test-number} - gen.next() for: true
# Generators internals
ok {test-number} - gen.get() == "bb" for: "bb" == "bb"
# Generators internals
ok {test-number} - gen.next() for: true
# Generators internals
ok {test-number} - gen.get() == "cc" for: "cc" == "cc"
# Generators internals
ok {test-number} - !(gen.next()) for: !false
# Generators internals
ok {test-number} - gen.get() == 1 for: 1 == 1
# Generators internals
ok {test-number} - gen.next() for: true
# Generators internals
ok {test-number} - gen.get() == 3 for: 3 == 3
# Generators internals
ok {test-number} - !(gen.next()) for: !false
# Generators internals
ok {test-number} - gen.get() == 1 for: 1 == 1
# Generators internals
ok {test-number} - gen.next() for: true
# Generators internals
ok {test-number} - gen.get() == 3 for: 3 == 3
# Generators internals
ok {test-number} - !(gen.next()) for: !false
# Generators internals
ok {test-number} - filter([](int) { return false; }, value(1)), Catch::GeneratorException
# Generators internals
ok {test-number} - filter([](int) { return false; }, values({ 1, 2, 3 })), Catch::GeneratorException
# Generators internals
ok {test-number} - gen.get() == 1 for: 1 == 1
# Generators internals
ok {test-number} - gen.next() for: true
# Generators internals
ok {test-number} - gen.get() == 2 for: 2 == 2
# Generators internals
ok {test-number} - !(gen.next()) for: !false
# Generators internals
ok {test-number} - gen.get() == 1 for: 1 == 1
# Generators internals
ok {test-number} - !(gen.next()) for: !false
# Generators internals
ok {test-number} - gen.get() == 2.0 for: 2.0 == 2.0
# Generators internals
ok {test-number} - gen.next() for: true
# Generators internals
ok {test-number} - gen.get() == 4.0 for: 4.0 == 4.0
# Generators internals
ok {test-number} - gen.next() for: true
# Generators internals
ok {test-number} - gen.get() == 6.0 for: 6.0 == 6.0
# Generators internals
ok {test-number} - !(gen.next()) for: !false
# Generators internals
ok {test-number} - gen.get() == 2.0 for: 2.0 == 2.0
# Generators internals
ok {test-number} - gen.next() for: true
# Generators internals
ok {test-number} - gen.get() == 4.0 for: 4.0 == 4.0
# Generators internals
ok {test-number} - gen.next() for: true
# Generators internals
ok {test-number} - gen.get() == 6.0 for: 6.0 == 6.0
# Generators internals
ok {test-number} - !(gen.next()) for: !false
# Generators internals
ok {test-number} - gen.get() == 3 for: 3 == 3
# Generators internals
ok {test-number} - !(gen.next()) for: !false
# Generators internals
ok {test-number} - gen.get() == 1 for: 1 == 1
# Generators internals
ok {test-number} - gen.next() for: true
# Generators internals
ok {test-number} - gen.get() == 2 for: 2 == 2
# Generators internals
ok {test-number} - gen.next() for: true
# Generators internals
ok {test-number} - gen.get() == 3 for: 3 == 3
# Generators internals
ok {test-number} - gen.next() for: true
# Generators internals
ok {test-number} - gen.get() == 1 for: 1 == 1
# Generators internals
ok {test-number} - gen.next() for: true
# Generators internals
ok {test-number} - gen.get() == 2 for: 2 == 2
# Generators internals
ok {test-number} - gen.next() for: true
# Generators internals
ok {test-number} - gen.get() == 3 for: 3 == 3
# Generators internals
ok {test-number} - !(gen.next()) for: !false
# Generators internals
ok {test-number} - gen.get() == -2 for: -2 == -2
# Generators internals
ok {test-number} - gen.next() for: true
# Generators internals
ok {test-number} - gen.get() == -1 for: -1 == -1
# Generators internals
ok {test-number} - gen.next() for: true
# Generators internals
ok {test-number} - gen.get() == 0 for: 0 == 0
# Generators internals
ok {test-number} - gen.next() for: true
# Generators internals
ok {test-number} - gen.get() == 1 for: 1 == 1
# Generators internals
ok {test-number} - !(gen.next()) for: !false
# Generators internals
ok {test-number} - gen.get() == 2 for: 2 == 2
# Generators internals
ok {test-number} - gen.next() for: true
# Generators internals
ok {test-number} - gen.get() == 1 for: 1 == 1
# Generators internals
ok {test-number} - gen.next() for: true
# Generators internals
ok {test-number} - gen.get() == 0 for: 0 == 0
# Generators internals
ok {test-number} - gen.next() for: true
# Generators internals
ok {test-number} - gen.get() == -1 for: -1 == -1
# Generators internals
ok {test-number} - !(gen.next()) for: !false
# Generators internals
ok {test-number} - gen.get() == -7 for: -7 == -7
# Generators internals
ok {test-number} - gen.next() for: true
# Generators internals
ok {test-number} - gen.get() == -4 for: -4 == -4
# Generators internals
ok {test-number} - gen.next() for: true
# Generators internals
ok {test-number} - gen.get() == -1 for: -1 == -1
# Generators internals
ok {test-number} - gen.next() for: true
# Generators internals
ok {test-number} - gen.get() == 2 for: 2 == 2
# Generators internals
ok {test-number} - !(gen.next()) for: !false
# Generators internals
ok {test-number} - gen.get() == -7 for: -7 == -7
# Generators internals
ok {test-number} - gen.next() for: true
# Generators internals
ok {test-number} - gen.get() == -4 for: -4 == -4
# Generators internals
ok {test-number} - gen.next() for: true
# Generators internals
ok {test-number} - gen.get() == -1 for: -1 == -1
# Generators internals
ok {test-number} - gen.next() for: true
# Generators internals
ok {test-number} - gen.get() == 2 for: 2 == 2
# Generators internals
ok {test-number} - !(gen.next()) for: !false
# Generators internals
ok {test-number} - gen.get() == -7 for: -7 == -7
# Generators internals
ok {test-number} - gen.next() for: true
# Generators internals
ok {test-number} - gen.get() == -4 for: -4 == -4
# Generators internals
ok {test-number} - gen.next() for: true
# Generators internals
ok {test-number} - gen.get() == -1 for: -1 == -1
# Generators internals
ok {test-number} - gen.next() for: true
# Generators internals
ok {test-number} - gen.get() == 2 for: 2 == 2
# Generators internals
ok {test-number} - gen.next() for: true
# Generators internals
ok {test-number} - gen.get() == 5 for: 5 == 5
# Generators internals
ok {test-number} - !(gen.next()) for: !false
# Generators internals
ok {test-number} - gen.get() == Approx(expected) for: -1.0 == Approx( -1.0 ) with 1 message: 'Current expected value is -1'
# Generators internals
ok {test-number} - gen.next() for: true with 1 message: 'Current expected value is -1'
# Generators internals
ok {test-number} - gen.get() == Approx(expected) for: -0.9 == Approx( -0.9 ) with 1 message: 'Current expected value is -0.9'
# Generators internals
ok {test-number} - gen.next() for: true with 1 message: 'Current expected value is -0.9'
# Generators internals
ok {test-number} - gen.get() == Approx(expected) for: -0.8 == Approx( -0.8 ) with 1 message: 'Current expected value is -0.8'
# Generators internals
ok {test-number} - gen.next() for: true with 1 message: 'Current expected value is -0.8'
# Generators internals
ok {test-number} - gen.get() == Approx(expected) for: -0.7 == Approx( -0.7 ) with 1 message: 'Current expected value is -0.7'
# Generators internals
ok {test-number} - gen.next() for: true with 1 message: 'Current expected value is -0.7'
# Generators internals
ok {test-number} - gen.get() == Approx(expected) for: -0.6 == Approx( -0.6 ) with 1 message: 'Current expected value is -0.6'
# Generators internals
ok {test-number} - gen.next() for: true with 1 message: 'Current expected value is -0.6'
# Generators internals
ok {test-number} - gen.get() == Approx(expected) for: -0.5 == Approx( -0.5 ) with 1 message: 'Current expected value is -0.5'
# Generators internals
ok {test-number} - gen.next() for: true with 1 message: 'Current expected value is -0.5'
# Generators internals
ok {test-number} - gen.get() == Approx(expected) for: -0.4 == Approx( -0.4 ) with 1 message: 'Current expected value is -0.4'
# Generators internals
ok {test-number} - gen.next() for: true with 1 message: 'Current expected value is -0.4'
# Generators internals
ok {test-number} - gen.get() == Approx(expected) for: -0.3 == Approx( -0.3 ) with 1 message: 'Current expected value is -0.3'
# Generators internals
ok {test-number} - gen.next() for: true with 1 message: 'Current expected value is -0.3'
# Generators internals
ok {test-number} - gen.get() == Approx(expected) for: -0.2 == Approx( -0.2 ) with 1 message: 'Current expected value is -0.2'
# Generators internals
ok {test-number} - gen.next() for: true with 1 message: 'Current expected value is -0.2'
# Generators internals
ok {test-number} - gen.get() == Approx(expected) for: -0.1 == Approx( -0.1 ) with 1 message: 'Current expected value is -0.1'
# Generators internals
ok {test-number} - gen.next() for: true with 1 message: 'Current expected value is -0.1'
# Generators internals
ok {test-number} - gen.get() == Approx(expected) for: -0.0 == Approx( -0.0 ) with 1 message: 'Current expected value is -1.38778e-16'
# Generators internals
ok {test-number} - gen.next() for: true with 1 message: 'Current expected value is -1.38778e-16'
# Generators internals
ok {test-number} - gen.get() == Approx(expected) for: 0.1 == Approx( 0.1 ) with 1 message: 'Current expected value is 0.1'
# Generators internals
ok {test-number} - gen.next() for: true with 1 message: 'Current expected value is 0.1'
# Generators internals
ok {test-number} - gen.get() == Approx(expected) for: 0.2 == Approx( 0.2 ) with 1 message: 'Current expected value is 0.2'
# Generators internals
ok {test-number} - gen.next() for: true with 1 message: 'Current expected value is 0.2'
# Generators internals
ok {test-number} - gen.get() == Approx(expected) for: 0.3 == Approx( 0.3 ) with 1 message: 'Current expected value is 0.3'
# Generators internals
ok {test-number} - gen.next() for: true with 1 message: 'Current expected value is 0.3'
# Generators internals
ok {test-number} - gen.get() == Approx(expected) for: 0.4 == Approx( 0.4 ) with 1 message: 'Current expected value is 0.4'
# Generators internals
ok {test-number} - gen.next() for: true with 1 message: 'Current expected value is 0.4'
# Generators internals
ok {test-number} - gen.get() == Approx(expected) for: 0.5 == Approx( 0.5 ) with 1 message: 'Current expected value is 0.5'
# Generators internals
ok {test-number} - gen.next() for: true with 1 message: 'Current expected value is 0.5'
# Generators internals
ok {test-number} - gen.get() == Approx(expected) for: 0.6 == Approx( 0.6 ) with 1 message: 'Current expected value is 0.6'
# Generators internals
ok {test-number} - gen.next() for: true with 1 message: 'Current expected value is 0.6'
# Generators internals
ok {test-number} - gen.get() == Approx(expected) for: 0.7 == Approx( 0.7 ) with 1 message: 'Current expected value is 0.7'
# Generators internals
ok {test-number} - gen.next() for: true with 1 message: 'Current expected value is 0.7'
# Generators internals
ok {test-number} - gen.get() == Approx(expected) for: 0.8 == Approx( 0.8 ) with 1 message: 'Current expected value is 0.8'
# Generators internals
ok {test-number} - gen.next() for: true with 1 message: 'Current expected value is 0.8'
# Generators internals
ok {test-number} - gen.get() == Approx(expected) for: 0.9 == Approx( 0.9 ) with 1 message: 'Current expected value is 0.9'
# Generators internals
ok {test-number} - gen.next() for: true with 1 message: 'Current expected value is 0.9'
# Generators internals
ok {test-number} - gen.get() == Approx( rangeEnd ) for: 1.0 == Approx( 1.0 )
# Generators internals
ok {test-number} - !(gen.next()) for: !false
# Generators internals
ok {test-number} - gen.get() == Approx(expected) for: -1.0 == Approx( -1.0 ) with 1 message: 'Current expected value is -1'
# Generators internals
ok {test-number} - gen.next() for: true with 1 message: 'Current expected value is -1'
# Generators internals
ok {test-number} - gen.get() == Approx(expected) for: -0.7 == Approx( -0.7 ) with 1 message: 'Current expected value is -0.7'
# Generators internals
ok {test-number} - gen.next() for: true with 1 message: 'Current expected value is -0.7'
# Generators internals
ok {test-number} - gen.get() == Approx(expected) for: -0.4 == Approx( -0.4 ) with 1 message: 'Current expected value is -0.4'
# Generators internals
ok {test-number} - gen.next() for: true with 1 message: 'Current expected value is -0.4'
# Generators internals
ok {test-number} - gen.get() == Approx(expected) for: -0.1 == Approx( -0.1 ) with 1 message: 'Current expected value is -0.1'
# Generators internals
ok {test-number} - gen.next() for: true with 1 message: 'Current expected value is -0.1'
# Generators internals
ok {test-number} - gen.get() == Approx(expected) for: 0.2 == Approx( 0.2 ) with 1 message: 'Current expected value is 0.2'
# Generators internals
ok {test-number} - gen.next() for: true with 1 message: 'Current expected value is 0.2'
# Generators internals
ok {test-number} - gen.get() == Approx(expected) for: 0.5 == Approx( 0.5 ) with 1 message: 'Current expected value is 0.5'
# Generators internals
ok {test-number} - gen.next() for: true with 1 message: 'Current expected value is 0.5'
# Generators internals
ok {test-number} - !(gen.next()) for: !false
# Generators internals
ok {test-number} - gen.get() == Approx(expected) for: -1.0 == Approx( -1.0 ) with 1 message: 'Current expected value is -1'
# Generators internals
ok {test-number} - gen.next() for: true with 1 message: 'Current expected value is -1'
# Generators internals
ok {test-number} - gen.get() == Approx(expected) for: -0.7 == Approx( -0.7 ) with 1 message: 'Current expected value is -0.7'
# Generators internals
ok {test-number} - gen.next() for: true with 1 message: 'Current expected value is -0.7'
# Generators internals
ok {test-number} - gen.get() == Approx(expected) for: -0.4 == Approx( -0.4 ) with 1 message: 'Current expected value is -0.4'
# Generators internals
ok {test-number} - gen.next() for: true with 1 message: 'Current expected value is -0.4'
# Generators internals
ok {test-number} - gen.get() == Approx(expected) for: -0.1 == Approx( -0.1 ) with 1 message: 'Current expected value is -0.1'
# Generators internals
ok {test-number} - gen.next() for: true with 1 message: 'Current expected value is -0.1'
# Generators internals
ok {test-number} - gen.get() == Approx(expected) for: 0.2 == Approx( 0.2 ) with 1 message: 'Current expected value is 0.2'
# Generators internals
ok {test-number} - gen.next() for: true with 1 message: 'Current expected value is 0.2'
# Generators internals
ok {test-number} - gen.get() == Approx(expected) for: 0.5 == Approx( 0.5 ) with 1 message: 'Current expected value is 0.5'
# Generators internals
ok {test-number} - gen.next() for: true with 1 message: 'Current expected value is 0.5'
# Generators internals
ok {test-number} - !(gen.next()) for: !false
# Generators internals
ok {test-number} - gen.get() == 5 for: 5 == 5
# Generators internals
ok {test-number} - gen.next() for: true
# Generators internals
ok {test-number} - gen.get() == 2 for: 2 == 2
# Generators internals
ok {test-number} - gen.next() for: true
# Generators internals
ok {test-number} - gen.get() == -1 for: -1 == -1
# Generators internals
ok {test-number} - gen.next() for: true
# Generators internals
ok {test-number} - gen.get() == -4 for: -4 == -4
# Generators internals
ok {test-number} - !(gen.next()) for: !false
# Generators internals
ok {test-number} - gen.get() == 5 for: 5 == 5
# Generators internals
ok {test-number} - gen.next() for: true
# Generators internals
ok {test-number} - gen.get() == 2 for: 2 == 2
# Generators internals
ok {test-number} - gen.next() for: true
# Generators internals
ok {test-number} - gen.get() == -1 for: -1 == -1
# Generators internals
ok {test-number} - gen.next() for: true
# Generators internals
ok {test-number} - gen.get() == -4 for: -4 == -4
# Generators internals
ok {test-number} - !(gen.next()) for: !false
# Generators internals
ok {test-number} - gen.get() == 5 for: 5 == 5
# Generators internals
ok {test-number} - gen.next() for: true
# Generators internals
ok {test-number} - gen.get() == 2 for: 2 == 2
# Generators internals
ok {test-number} - gen.next() for: true
# Generators internals
ok {test-number} - gen.get() == -1 for: -1 == -1
# Generators internals
ok {test-number} - gen.next() for: true
# Generators internals
ok {test-number} - gen.get() == -4 for: -4 == -4
# Generators internals
ok {test-number} - gen.next() for: true
# Generators internals
ok {test-number} - gen.get() == -7 for: -7 == -7
# Generators internals
ok {test-number} - !(gen.next()) for: !false
# Greater-than inequalities with different epsilons
ok {test-number} - d >= Approx( 1.22 ) for: 1.23 >= Approx( 1.22 )
# Greater-than inequalities with different epsilons
ok {test-number} - d >= Approx( 1.23 ) for: 1.23 >= Approx( 1.23 )
# Greater-than inequalities with different epsilons
ok {test-number} - !(d >= Approx( 1.24 )) for: !(1.23 >= Approx( 1.24 ))
# Greater-than inequalities with different epsilons
ok {test-number} - d >= Approx( 1.24 ).epsilon(0.1) for: 1.23 >= Approx( 1.24 )
# Hashers with different seed produce different hash with same test case
ok {test-number} - h1( dummy ) != h2( dummy ) for: 3422778688 (0x<hex digits>) != 130711275 (0x<hex digits>)
# Hashers with same seed produce same hash
ok {test-number} - h1( dummy ) == h2( dummy ) for: 3422778688 (0x<hex digits>) == 3422778688 (0x<hex digits>)
# Hashing different test cases produces different result
ok {test-number} - h( dummy1 ) != h( dummy2 ) for: 2903002874 (0x<hex digits>) != 2668622104 (0x<hex digits>)
# Hashing different test cases produces different result
ok {test-number} - h( dummy1 ) != h( dummy2 ) for: 2673152918 (0x<hex digits>) != 3916075712 (0x<hex digits>)
# Hashing different test cases produces different result
ok {test-number} - h( dummy1 ) != h( dummy2 ) for: 2074929312 (0x<hex digits>) != 3429949824 (0x<hex digits>)
# Hashing test case produces same hash across multiple calls
ok {test-number} - h( dummy ) == h( dummy ) for: 3422778688 (0x<hex digits>) == 3422778688 (0x<hex digits>)
# INFO and WARN do not abort tests
warning {test-number} - 'this is a message' with 1 message: 'this is a warning'
# INFO gets logged on failure
not ok {test-number} - a == 1 for: 2 == 1 with 2 messages: 'this message should be logged' and 'so should this'
# INFO gets logged on failure, even if captured before successful assertions
ok {test-number} - a == 2 for: 2 == 2 with 1 message: 'this message may be logged later'
# INFO gets logged on failure, even if captured before successful assertions
not ok {test-number} - a == 1 for: 2 == 1 with 2 messages: 'this message may be logged later' and 'this message should be logged'
# INFO gets logged on failure, even if captured before successful assertions
not ok {test-number} - a == 0 for: 2 == 0 with 3 messages: 'this message may be logged later' and 'this message should be logged' and 'and this, but later'
# INFO gets logged on failure, even if captured before successful assertions
ok {test-number} - a == 2 for: 2 == 2 with 4 messages: 'this message may be logged later' and 'this message should be logged' and 'and this, but later' and 'but not this'
# INFO is reset for each loop
ok {test-number} - i < 10 for: 0 < 10 with 2 messages: 'current counter 0' and 'i := 0'
# INFO is reset for each loop
ok {test-number} - i < 10 for: 1 < 10 with 2 messages: 'current counter 1' and 'i := 1'
# INFO is reset for each loop
ok {test-number} - i < 10 for: 2 < 10 with 2 messages: 'current counter 2' and 'i := 2'
# INFO is reset for each loop
ok {test-number} - i < 10 for: 3 < 10 with 2 messages: 'current counter 3' and 'i := 3'
# INFO is reset for each loop
ok {test-number} - i < 10 for: 4 < 10 with 2 messages: 'current counter 4' and 'i := 4'
# INFO is reset for each loop
ok {test-number} - i < 10 for: 5 < 10 with 2 messages: 'current counter 5' and 'i := 5'
# INFO is reset for each loop
ok {test-number} - i < 10 for: 6 < 10 with 2 messages: 'current counter 6' and 'i := 6'
# INFO is reset for each loop
ok {test-number} - i < 10 for: 7 < 10 with 2 messages: 'current counter 7' and 'i := 7'
# INFO is reset for each loop
ok {test-number} - i < 10 for: 8 < 10 with 2 messages: 'current counter 8' and 'i := 8'
# INFO is reset for each loop
ok {test-number} - i < 10 for: 9 < 10 with 2 messages: 'current counter 9' and 'i := 9'
# INFO is reset for each loop
not ok {test-number} - i < 10 for: 10 < 10 with 2 messages: 'current counter 10' and 'i := 10'
# Inequality checks that should fail
not ok {test-number} - data.int_seven != 7 for: 7 != 7
# Inequality checks that should fail
not ok {test-number} - data.float_nine_point_one != Approx( 9.1f ) for: 9.1f != Approx( 9.1000003815 )
# Inequality checks that should fail
not ok {test-number} - data.double_pi != Approx( 3.1415926535 ) for: 3.1415926535 != Approx( 3.1415926535 )
# Inequality checks that should fail
not ok {test-number} - data.str_hello != "hello" for: "hello" != "hello"
# Inequality checks that should fail
not ok {test-number} - data.str_hello.size() != 5 for: 5 != 5
# Inequality checks that should succeed
ok {test-number} - data.int_seven != 6 for: 7 != 6
# Inequality checks that should succeed
ok {test-number} - data.int_seven != 8 for: 7 != 8
# Inequality checks that should succeed
ok {test-number} - data.float_nine_point_one != Approx( 9.11f ) for: 9.1f != Approx( 9.1099996567 )
# Inequality checks that should succeed
ok {test-number} - data.float_nine_point_one != Approx( 9.0f ) for: 9.1f != Approx( 9.0 )
# Inequality checks that should succeed
ok {test-number} - data.float_nine_point_one != Approx( 1 ) for: 9.1f != Approx( 1.0 )
# Inequality checks that should succeed
ok {test-number} - data.float_nine_point_one != Approx( 0 ) for: 9.1f != Approx( 0.0 )
# Inequality checks that should succeed
ok {test-number} - data.double_pi != Approx( 3.1415 ) for: 3.1415926535 != Approx( 3.1415 )
# Inequality checks that should succeed
ok {test-number} - data.str_hello != "goodbye" for: "hello" != "goodbye"
# Inequality checks that should succeed
ok {test-number} - data.str_hello != "hell" for: "hello" != "hell"
# Inequality checks that should succeed
ok {test-number} - data.str_hello != "hello1" for: "hello" != "hello1"
# Inequality checks that should succeed
ok {test-number} - data.str_hello.size() != 6 for: 5 != 6
# Lambdas in assertions
ok {test-number} - []() { return true; }() for: true
# Less-than inequalities with different epsilons
ok {test-number} - d <= Approx( 1.24 ) for: 1.23 <= Approx( 1.24 )
# Less-than inequalities with different epsilons
ok {test-number} - d <= Approx( 1.23 ) for: 1.23 <= Approx( 1.23 )
# Less-than inequalities with different epsilons
ok {test-number} - !(d <= Approx( 1.22 )) for: !(1.23 <= Approx( 1.22 ))
# Less-than inequalities with different epsilons
ok {test-number} - d <= Approx( 1.22 ).epsilon(0.1) for: 1.23 <= Approx( 1.22 )
# ManuallyRegistered
ok {test-number} - with 1 message: 'was called'
# Matchers can be (AllOf) composed with the && operator
ok {test-number} - testStringForMatching(), ContainsSubstring( "string" ) && ContainsSubstring( "abc" ) && ContainsSubstring( "substring" ) && ContainsSubstring( "contains" ) for: "this string contains 'abc' as a substring" ( contains: "string" and contains: "abc" and contains: "substring" and contains: "contains" )
# Matchers can be (AnyOf) composed with the || operator
ok {test-number} - testStringForMatching(), ContainsSubstring( "string" ) || ContainsSubstring( "different" ) || ContainsSubstring( "random" ) for: "this string contains 'abc' as a substring" ( contains: "string" or contains: "different" or contains: "random" )
# Matchers can be (AnyOf) composed with the || operator
ok {test-number} - testStringForMatching2(), ContainsSubstring( "string" ) || ContainsSubstring( "different" ) || ContainsSubstring( "random" ) for: "some completely different text that contains one common word" ( contains: "string" or contains: "different" or contains: "random" )
# Matchers can be composed with both && and ||
ok {test-number} - testStringForMatching(), ( ContainsSubstring( "string" ) || ContainsSubstring( "different" ) ) && ContainsSubstring( "substring" ) for: "this string contains 'abc' as a substring" ( ( contains: "string" or contains: "different" ) and contains: "substring" )
# Matchers can be composed with both && and || - failing
not ok {test-number} - testStringForMatching(), ( ContainsSubstring( "string" ) || ContainsSubstring( "different" ) ) && ContainsSubstring( "random" ) for: "this string contains 'abc' as a substring" ( ( contains: "string" or contains: "different" ) and contains: "random" )
# Matchers can be negated (Not) with the ! operator
ok {test-number} - testStringForMatching(), !ContainsSubstring( "different" ) for: "this string contains 'abc' as a substring" not contains: "different"
# Matchers can be negated (Not) with the ! operator - failing
not ok {test-number} - testStringForMatching(), !ContainsSubstring( "substring" ) for: "this string contains 'abc' as a substring" not contains: "substring"
# Mayfail test case with nested sections
not ok {test-number} - explicitly
# Mayfail test case with nested sections
not ok {test-number} - explicitly
# Mayfail test case with nested sections
not ok {test-number} - explicitly
# Mayfail test case with nested sections
not ok {test-number} - explicitly
# Mismatching exception messages failing the test
ok {test-number} - thisThrows(), "expected exception" for: "expected exception" equals: "expected exception"
# Mismatching exception messages failing the test
not ok {test-number} - thisThrows(), "should fail" for: "expected exception" equals: "should fail"
# Multireporter calls reporters and listeners in correct order
ok {test-number} - records == expected for: { "Hello", "world", "Goodbye", "world" } == { "Hello", "world", "Goodbye", "world" }
# Multireporter updates ReporterPreferences properly
ok {test-number} - multiReporter.getPreferences().shouldRedirectStdOut == false for: false == false
# Multireporter updates ReporterPreferences properly
ok {test-number} - multiReporter.getPreferences().shouldReportAllAssertions == false for: false == false
# Multireporter updates ReporterPreferences properly
ok {test-number} - multiReporter.getPreferences().shouldRedirectStdOut == true for: true == true
# Multireporter updates ReporterPreferences properly
ok {test-number} - multiReporter.getPreferences().shouldReportAllAssertions == false for: false == false
# Multireporter updates ReporterPreferences properly
ok {test-number} - multiReporter.getPreferences().shouldRedirectStdOut == true for: true == true
# Multireporter updates ReporterPreferences properly
ok {test-number} - multiReporter.getPreferences().shouldReportAllAssertions == true for: true == true
# Multireporter updates ReporterPreferences properly
ok {test-number} - multiReporter.getPreferences().shouldRedirectStdOut == true for: true == true
# Multireporter updates ReporterPreferences properly
ok {test-number} - multiReporter.getPreferences().shouldReportAllAssertions == true for: true == true
# Multireporter updates ReporterPreferences properly
ok {test-number} - multiReporter.getPreferences().shouldRedirectStdOut == false for: false == false
# Multireporter updates ReporterPreferences properly
ok {test-number} - multiReporter.getPreferences().shouldReportAllAssertions == false for: false == false
# Multireporter updates ReporterPreferences properly
ok {test-number} - multiReporter.getPreferences().shouldRedirectStdOut == true for: true == true
# Multireporter updates ReporterPreferences properly
ok {test-number} - multiReporter.getPreferences().shouldReportAllAssertions == false for: false == false
# Multireporter updates ReporterPreferences properly
ok {test-number} - multiReporter.getPreferences().shouldRedirectStdOut == true for: true == true
# Multireporter updates ReporterPreferences properly
ok {test-number} - multiReporter.getPreferences().shouldReportAllAssertions == true for: true == true
# Multireporter updates ReporterPreferences properly
ok {test-number} - multiReporter.getPreferences().shouldRedirectStdOut == true for: true == true
# Multireporter updates ReporterPreferences properly
ok {test-number} - multiReporter.getPreferences().shouldReportAllAssertions == true for: true == true
# Nested generators and captured variables
ok {test-number} - values > -6 for: 3 > -6
# Nested generators and captured variables
ok {test-number} - values > -6 for: 4 > -6
# Nested generators and captured variables
ok {test-number} - values > -6 for: 5 > -6
# Nested generators and captured variables
ok {test-number} - values > -6 for: 6 > -6
# Nested generators and captured variables
ok {test-number} - values > -6 for: -5 > -6
# Nested generators and captured variables
ok {test-number} - values > -6 for: -4 > -6
# Nested generators and captured variables
ok {test-number} - values > -6 for: 90 > -6
# Nested generators and captured variables
ok {test-number} - values > -6 for: 91 > -6
# Nested generators and captured variables
ok {test-number} - values > -6 for: 92 > -6
# Nested generators and captured variables
ok {test-number} - values > -6 for: 93 > -6
# Nested generators and captured variables
ok {test-number} - values > -6 for: 94 > -6
# Nested generators and captured variables
ok {test-number} - values > -6 for: 95 > -6
# Nested generators and captured variables
ok {test-number} - values > -6 for: 96 > -6
# Nested generators and captured variables
ok {test-number} - values > -6 for: 97 > -6
# Nested generators and captured variables
ok {test-number} - values > -6 for: 98 > -6
# Nested generators and captured variables
ok {test-number} - values > -6 for: 99 > -6
# Nice descriptive name
warning {test-number} - 'This one ran'
# Non-std exceptions can be translated
not ok {test-number} - unexpected exception with message: 'custom exception'
# Objects that evaluated in boolean contexts can be checked
ok {test-number} - True for: {?}
# Objects that evaluated in boolean contexts can be checked
ok {test-number} - !False for: true
# Objects that evaluated in boolean contexts can be checked
ok {test-number} - !(False) for: !{?}
# Optionally static assertions
ok {test-number} - with 1 message: 'std::is_void<void>::value'
# Optionally static assertions
ok {test-number} - with 1 message: '!(std::is_void<int>::value)'
# Optionally static assertions
ok {test-number} - with 1 message: 'std::is_void<void>::value'
# Optionally static assertions
ok {test-number} - with 1 message: '!(std::is_void<int>::value)'
# Ordering comparison checks that should fail
not ok {test-number} - data.int_seven > 7 for: 7 > 7
# Ordering comparison checks that should fail
not ok {test-number} - data.int_seven < 7 for: 7 < 7
# Ordering comparison checks that should fail
not ok {test-number} - data.int_seven > 8 for: 7 > 8
# Ordering comparison checks that should fail
not ok {test-number} - data.int_seven < 6 for: 7 < 6
# Ordering comparison checks that should fail
not ok {test-number} - data.int_seven < 0 for: 7 < 0
# Ordering comparison checks that should fail
not ok {test-number} - data.int_seven < -1 for: 7 < -1
# Ordering comparison checks that should fail
not ok {test-number} - data.int_seven >= 8 for: 7 >= 8
# Ordering comparison checks that should fail
not ok {test-number} - data.int_seven <= 6 for: 7 <= 6
# Ordering comparison checks that should fail
not ok {test-number} - data.float_nine_point_one < 9 for: 9.1f < 9
# Ordering comparison checks that should fail
not ok {test-number} - data.float_nine_point_one > 10 for: 9.1f > 10
# Ordering comparison checks that should fail
not ok {test-number} - data.float_nine_point_one > 9.2 for: 9.1f > 9.2
# Ordering comparison checks that should fail
not ok {test-number} - data.str_hello > "hello" for: "hello" > "hello"
# Ordering comparison checks that should fail
not ok {test-number} - data.str_hello < "hello" for: "hello" < "hello"
# Ordering comparison checks that should fail
not ok {test-number} - data.str_hello > "hellp" for: "hello" > "hellp"
# Ordering comparison checks that should fail
not ok {test-number} - data.str_hello > "z" for: "hello" > "z"
# Ordering comparison checks that should fail
not ok {test-number} - data.str_hello < "hellm" for: "hello" < "hellm"
# Ordering comparison checks that should fail
not ok {test-number} - data.str_hello < "a" for: "hello" < "a"
# Ordering comparison checks that should fail
not ok {test-number} - data.str_hello >= "z" for: "hello" >= "z"
# Ordering comparison checks that should fail
not ok {test-number} - data.str_hello <= "a" for: "hello" <= "a"
# Ordering comparison checks that should succeed
ok {test-number} - data.int_seven < 8 for: 7 < 8
# Ordering comparison checks that should succeed
ok {test-number} - data.int_seven > 6 for: 7 > 6
# Ordering comparison checks that should succeed
ok {test-number} - data.int_seven > 0 for: 7 > 0
# Ordering comparison checks that should succeed
ok {test-number} - data.int_seven > -1 for: 7 > -1
# Ordering comparison checks that should succeed
ok {test-number} - data.int_seven >= 7 for: 7 >= 7
# Ordering comparison checks that should succeed
ok {test-number} - data.int_seven >= 6 for: 7 >= 6
# Ordering comparison checks that should succeed
ok {test-number} - data.int_seven <= 7 for: 7 <= 7
# Ordering comparison checks that should succeed
ok {test-number} - data.int_seven <= 8 for: 7 <= 8
# Ordering comparison checks that should succeed
ok {test-number} - data.float_nine_point_one > 9 for: 9.1f > 9
# Ordering comparison checks that should succeed
ok {test-number} - data.float_nine_point_one < 10 for: 9.1f < 10
# Ordering comparison checks that should succeed
ok {test-number} - data.float_nine_point_one < 9.2 for: 9.1f < 9.2
# Ordering comparison checks that should succeed
ok {test-number} - data.str_hello <= "hello" for: "hello" <= "hello"
# Ordering comparison checks that should succeed
ok {test-number} - data.str_hello >= "hello" for: "hello" >= "hello"
# Ordering comparison checks that should succeed
ok {test-number} - data.str_hello < "hellp" for: "hello" < "hellp"
# Ordering comparison checks that should succeed
ok {test-number} - data.str_hello < "zebra" for: "hello" < "zebra"
# Ordering comparison checks that should succeed
ok {test-number} - data.str_hello > "hellm" for: "hello" > "hellm"
# Ordering comparison checks that should succeed
ok {test-number} - data.str_hello > "a" for: "hello" > "a"
# Our PCG implementation provides expected results for known seeds
ok {test-number} - rng() == 0x<hex digits> for: 4242248763 (0x<hex digits>) == 4242248763 (0x<hex digits>)
# Our PCG implementation provides expected results for known seeds
ok {test-number} - rng() == 0x<hex digits> for: 1867888929 (0x<hex digits>) == 1867888929 (0x<hex digits>)
# Our PCG implementation provides expected results for known seeds
ok {test-number} - rng() == 0x<hex digits> for: 1276619030 (0x<hex digits>) == 1276619030 (0x<hex digits>)
# Our PCG implementation provides expected results for known seeds
ok {test-number} - rng() == 0x<hex digits> for: 1911218783 (0x<hex digits>) == 1911218783 (0x<hex digits>)
# Our PCG implementation provides expected results for known seeds
ok {test-number} - rng() == 0x<hex digits> for: 1827115164 (0x<hex digits>) == 1827115164 (0x<hex digits>)
# Our PCG implementation provides expected results for known seeds
ok {test-number} - rng() == 0x<hex digits> for: 1472234645 (0x<hex digits>) == 1472234645 (0x<hex digits>)
# Our PCG implementation provides expected results for known seeds
ok {test-number} - rng() == 0x<hex digits> for: 868832940 (0x<hex digits>) == 868832940 (0x<hex digits>)
# Our PCG implementation provides expected results for known seeds
ok {test-number} - rng() == 0x<hex digits> for: 570883446 (0x<hex digits>) == 570883446 (0x<hex digits>)
# Our PCG implementation provides expected results for known seeds
ok {test-number} - rng() == 0x<hex digits> for: 889299803 (0x<hex digits>) == 889299803 (0x<hex digits>)
# Our PCG implementation provides expected results for known seeds
ok {test-number} - rng() == 0x<hex digits> for: 4261393167 (0x<hex digits>) == 4261393167 (0x<hex digits>)
# Our PCG implementation provides expected results for known seeds
ok {test-number} - rng() == 0x<hex digits> for: 1472234645 (0x<hex digits>) == 1472234645 (0x<hex digits>)
# Our PCG implementation provides expected results for known seeds
ok {test-number} - rng() == 0x<hex digits> for: 868832940 (0x<hex digits>) == 868832940 (0x<hex digits>)
# Our PCG implementation provides expected results for known seeds
ok {test-number} - rng() == 0x<hex digits> for: 570883446 (0x<hex digits>) == 570883446 (0x<hex digits>)
# Our PCG implementation provides expected results for known seeds
ok {test-number} - rng() == 0x<hex digits> for: 889299803 (0x<hex digits>) == 889299803 (0x<hex digits>)
# Our PCG implementation provides expected results for known seeds
ok {test-number} - rng() == 0x<hex digits> for: 4261393167 (0x<hex digits>) == 4261393167 (0x<hex digits>)
# Output from all sections is reported
not ok {test-number} - explicitly with 1 message: 'Message from section one'
# Output from all sections is reported
not ok {test-number} - explicitly with 1 message: 'Message from section two'
# Overloaded comma or address-of operators are not used
ok {test-number} - ( EvilMatcher(), EvilMatcher() ), EvilCommaOperatorUsed
# Overloaded comma or address-of operators are not used
ok {test-number} - &EvilMatcher(), EvilAddressOfOperatorUsed
# Overloaded comma or address-of operators are not used
ok {test-number} - EvilMatcher() || ( EvilMatcher() && !EvilMatcher() )
# Overloaded comma or address-of operators are not used
ok {test-number} - ( EvilMatcher() && EvilMatcher() ) || !EvilMatcher()
# Parse uints
ok {test-number} - parseUInt( "0" ) == Optional<unsigned int>{ 0 } for: {?} == {?}
# Parse uints
ok {test-number} - parseUInt( "100" ) == Optional<unsigned int>{ 100 } for: {?} == {?}
# Parse uints
ok {test-number} - parseUInt( "4294967295" ) == Optional<unsigned int>{ 4294967295 } for: {?} == {?}
# Parse uints
ok {test-number} - parseUInt( "0x<hex digits>", 16 ) == Optional<unsigned int>{ 255 } for: {?} == {?}
# Parse uints
ok {test-number} - !(parseUInt( "" )) for: !{?}
# Parse uints
ok {test-number} - !(parseUInt( "!!KJHF*#" )) for: !{?}
# Parse uints
ok {test-number} - !(parseUInt( "-1" )) for: !{?}
# Parse uints
ok {test-number} - !(parseUInt( "4294967296" )) for: !{?}
# Parse uints
ok {test-number} - !(parseUInt( "42949672964294967296429496729642949672964294967296" )) for: !{?}
# Parse uints
ok {test-number} - !(parseUInt( "2 4" )) for: !{?}
# Parse uints
ok {test-number} - !(parseUInt( "0x<hex digits>", 10 )) for: !{?}
# Parsed tags are matched case insensitive
ok {test-number} - spec.hasFilters() for: true
# Parsed tags are matched case insensitive
ok {test-number} - spec.getInvalidSpecs().empty() for: true
# Parsed tags are matched case insensitive
ok {test-number} - spec.matches( testCase ) for: true
# Parsing sharding-related cli flags
ok {test-number} - cli.parse({ "test", "--shard-count=8" }) for: {?}
# Parsing sharding-related cli flags
ok {test-number} - config.shardCount == 8 for: 8 == 8
# Parsing sharding-related cli flags
ok {test-number} - !(result) for: !{?}
# Parsing sharding-related cli flags
ok {test-number} - result.errorMessage(), ContainsSubstring( "Could not parse '-1' as shard count" ) for: "Could not parse '-1' as shard count" contains: "Could not parse '-1' as shard count"
# Parsing sharding-related cli flags
ok {test-number} - !(result) for: !{?}
# Parsing sharding-related cli flags
ok {test-number} - result.errorMessage(), ContainsSubstring( "Shard count must be positive" ) for: "Shard count must be positive" contains: "Shard count must be positive"
# Parsing sharding-related cli flags
ok {test-number} - cli.parse({ "test", "--shard-index=2" }) for: {?}
# Parsing sharding-related cli flags
ok {test-number} - config.shardIndex == 2 for: 2 == 2
# Parsing sharding-related cli flags
ok {test-number} - !(result) for: !{?}
# Parsing sharding-related cli flags
ok {test-number} - result.errorMessage(), ContainsSubstring( "Could not parse '-12' as shard index" ) for: "Could not parse '-12' as shard index" contains: "Could not parse '-12' as shard index"
# Parsing sharding-related cli flags
ok {test-number} - cli.parse({ "test", "--shard-index=0" }) for: {?}
# Parsing sharding-related cli flags
ok {test-number} - config.shardIndex == 0 for: 0 == 0
# Parsing tags with non-alphabetical characters is pass-through
ok {test-number} - spec.hasFilters() for: true with 1 message: 'tagString := "[tag with spaces]"'
# Parsing tags with non-alphabetical characters is pass-through
ok {test-number} - spec.getInvalidSpecs().empty() for: true with 1 message: 'tagString := "[tag with spaces]"'
# Parsing tags with non-alphabetical characters is pass-through
ok {test-number} - spec.matches( testCase ) for: true with 1 message: 'tagString := "[tag with spaces]"'
# Parsing tags with non-alphabetical characters is pass-through
ok {test-number} - spec.hasFilters() for: true with 1 message: 'tagString := "[I said "good day" sir!]"'
# Parsing tags with non-alphabetical characters is pass-through
ok {test-number} - spec.getInvalidSpecs().empty() for: true with 1 message: 'tagString := "[I said "good day" sir!]"'
# Parsing tags with non-alphabetical characters is pass-through
ok {test-number} - spec.matches( testCase ) for: true with 1 message: 'tagString := "[I said "good day" sir!]"'
# Parsing warnings
ok {test-number} - cli.parse( { "test", "-w", "NoAssertions" } ) for: {?}
# Parsing warnings
ok {test-number} - config.warnings == WarnAbout::NoAssertions for: 1 == 1
# Parsing warnings
ok {test-number} - !(cli.parse( { "test", "-w", "NoTests" } )) for: !{?}
# Parsing warnings
ok {test-number} - cli.parse( { "test", "--warn", "NoAssertions", "--warn", "UnmatchedTestSpec" } ) for: {?}
# Parsing warnings
ok {test-number} - config.warnings == ( WarnAbout::NoAssertions | WarnAbout::UnmatchedTestSpec ) for: 3 == 3
# Pointers can be compared to null
ok {test-number} - p == 0 for: 0 == 0
# Pointers can be compared to null
ok {test-number} - p == pNULL for: 0 == 0
# Pointers can be compared to null
ok {test-number} - p != 0 for: 0x<hex digits> != 0
# Pointers can be compared to null
ok {test-number} - cp != 0 for: 0x<hex digits> != 0
# Pointers can be compared to null
ok {test-number} - cpc != 0 for: 0x<hex digits> != 0
# Pointers can be compared to null
ok {test-number} - returnsNull() == 0 for: {null string} == 0
# Pointers can be compared to null
ok {test-number} - returnsConstNull() == 0 for: {null string} == 0
# Pointers can be compared to null
ok {test-number} - 0 != p for: 0 != 0x<hex digits>
# Precision of floating point stringification can be set
ok {test-number} - str1.size() == 3 + 5 for: 8 == 8
# Precision of floating point stringification can be set
ok {test-number} - str2.size() == 3 + 10 for: 13 == 13
# Precision of floating point stringification can be set
ok {test-number} - str1.size() == 2 + 5 for: 7 == 7
# Precision of floating point stringification can be set
ok {test-number} - str2.size() == 2 + 15 for: 17 == 17
# Predicate matcher can accept const char*
ok {test-number} - "foo", Predicate<const char*>( []( const char* const& ) { return true; } ) for: "foo" matches undescribed predicate
# Process can be configured on command line
ok {test-number} - result for: {?}
# Process can be configured on command line
ok {test-number} - config.processName == "" for: "" == ""
# Process can be configured on command line
ok {test-number} - result for: {?}
# Process can be configured on command line
ok {test-number} - config.processName == "test" for: "test" == "test"
# Process can be configured on command line
ok {test-number} - config.shouldDebugBreak == false for: false == false
# Process can be configured on command line
ok {test-number} - config.abortAfter == -1 for: -1 == -1
# Process can be configured on command line
ok {test-number} - config.noThrow == false for: false == false
# Process can be configured on command line
ok {test-number} - config.reporterSpecifications.empty() for: true
# Process can be configured on command line
ok {test-number} - !(cfg.hasTestFilters()) for: !false
# Process can be configured on command line
ok {test-number} - cfg.getReporterSpecs().size() == 1 for: 1 == 1
# Process can be configured on command line
ok {test-number} - cfg.getReporterSpecs()[0] == Catch::ReporterSpec{ expectedReporter, {}, {}, {} } for: {?} == {?}
# Process can be configured on command line
ok {test-number} - cfg.getProcessedReporterSpecs().size() == 1 for: 1 == 1
# Process can be configured on command line
ok {test-number} - cfg.getProcessedReporterSpecs()[0] == Catch::ProcessedReporterSpec{ expectedReporter, std::string{}, Catch::ColourMode::PlatformDefault, {} } for: {?} == {?}
# Process can be configured on command line
ok {test-number} - result for: {?}
# Process can be configured on command line
ok {test-number} - cfg.hasTestFilters() for: true
# Process can be configured on command line
ok {test-number} - cfg.testSpec().matches(*fakeTestCase("notIncluded")) == false for: false == false
# Process can be configured on command line
ok {test-number} - cfg.testSpec().matches(*fakeTestCase("test1")) for: true
# Process can be configured on command line
ok {test-number} - result for: {?}
# Process can be configured on command line
ok {test-number} - cfg.hasTestFilters() for: true
# Process can be configured on command line
ok {test-number} - cfg.testSpec().matches(*fakeTestCase("test1")) == false for: false == false
# Process can be configured on command line
ok {test-number} - cfg.testSpec().matches(*fakeTestCase("alwaysIncluded")) for: true
# Process can be configured on command line
ok {test-number} - result for: {?}
# Process can be configured on command line
ok {test-number} - cfg.hasTestFilters() for: true
# Process can be configured on command line
ok {test-number} - cfg.testSpec().matches(*fakeTestCase("test1")) == false for: false == false
# Process can be configured on command line
ok {test-number} - cfg.testSpec().matches(*fakeTestCase("alwaysIncluded")) for: true
# Process can be configured on command line
ok {test-number} - result for: {?} with 1 message: 'result.errorMessage() := ""'
# Process can be configured on command line
ok {test-number} - config.reporterSpecifications == vec_Specs{ { "console", {}, {}, {} } } for: { {?} } == { {?} } with 1 message: 'result.errorMessage() := ""'
# Process can be configured on command line
ok {test-number} - result for: {?} with 1 message: 'result.errorMessage() := ""'
# Process can be configured on command line
ok {test-number} - config.reporterSpecifications == vec_Specs{ { "xml", {}, {}, {} } } for: { {?} } == { {?} } with 1 message: 'result.errorMessage() := ""'
# Process can be configured on command line
ok {test-number} - result for: {?} with 1 message: 'result.errorMessage() := ""'
# Process can be configured on command line
ok {test-number} - config.reporterSpecifications == vec_Specs{ { "junit", {}, {}, {} } } for: { {?} } == { {?} } with 1 message: 'result.errorMessage() := ""'
# Process can be configured on command line
ok {test-number} - !result for: true
# Process can be configured on command line
ok {test-number} - result.errorMessage(), ContainsSubstring("Unrecognized reporter") for: "Unrecognized reporter, 'unsupported'. Check available with --list-reporters" contains: "Unrecognized reporter"
# Process can be configured on command line
ok {test-number} - result for: {?} with 1 message: 'result.errorMessage() := ""'
# Process can be configured on command line
ok {test-number} - config.reporterSpecifications == vec_Specs{ { "console", "out.txt"s, {}, {} } } for: { {?} } == { {?} } with 1 message: 'result.errorMessage() := ""'
# Process can be configured on command line
ok {test-number} - result for: {?} with 1 message: 'result.errorMessage() := ""'
# Process can be configured on command line
ok {test-number} - config.reporterSpecifications == vec_Specs{ { "console", "C:\\Temp\\out.txt"s, {}, {} } } for: { {?} } == { {?} } with 1 message: 'result.errorMessage() := ""'
# Process can be configured on command line
ok {test-number} - cli.parse({ "test", "-r", "xml::out=output.xml", "-r", "junit::out=output-junit.xml" }) for: {?}
# Process can be configured on command line
ok {test-number} - config.reporterSpecifications == vec_Specs{ { "xml", "output.xml"s, {}, {} }, { "junit", "output-junit.xml"s, {}, {} } } for: { {?}, {?} } == { {?}, {?} }
# Process can be configured on command line
ok {test-number} - cli.parse({ "test", "-r", "xml::out=output.xml", "-r", "console" }) for: {?}
# Process can be configured on command line
ok {test-number} - config.reporterSpecifications == vec_Specs{ { "xml", "output.xml"s, {}, {} }, { "console", {}, {}, {} } } for: { {?}, {?} } == { {?}, {?} }
# Process can be configured on command line
ok {test-number} - !result for: true
# Process can be configured on command line
ok {test-number} - result.errorMessage(), ContainsSubstring("Only one reporter may have unspecified output file.") for: "Only one reporter may have unspecified output file." contains: "Only one reporter may have unspecified output file."
# Process can be configured on command line
ok {test-number} - cli.parse({"test", "-b"}) for: {?}
# Process can be configured on command line
ok {test-number} - config.shouldDebugBreak == true for: true == true
# Process can be configured on command line
ok {test-number} - cli.parse({"test", "--break"}) for: {?}
# Process can be configured on command line
ok {test-number} - config.shouldDebugBreak for: true
# Process can be configured on command line
ok {test-number} - cli.parse({"test", "-a"}) for: {?}
# Process can be configured on command line
ok {test-number} - config.abortAfter == 1 for: 1 == 1
# Process can be configured on command line
ok {test-number} - cli.parse({"test", "-x", "2"}) for: {?}
# Process can be configured on command line
ok {test-number} - config.abortAfter == 2 for: 2 == 2
# Process can be configured on command line
ok {test-number} - !result for: true
# Process can be configured on command line
ok {test-number} - result.errorMessage(), ContainsSubstring("convert") && ContainsSubstring("oops") for: "Unable to convert 'oops' to destination type" ( contains: "convert" and contains: "oops" )
# Process can be configured on command line
ok {test-number} - cli.parse({"test", "--wait-for-keypress", std::get<0>(input)}) for: {?}
# Process can be configured on command line
ok {test-number} - config.waitForKeypress == std::get<1>(input) for: 0 == 0
# Process can be configured on command line
ok {test-number} - cli.parse({"test", "--wait-for-keypress", std::get<0>(input)}) for: {?}
# Process can be configured on command line
ok {test-number} - config.waitForKeypress == std::get<1>(input) for: 1 == 1
# Process can be configured on command line
ok {test-number} - cli.parse({"test", "--wait-for-keypress", std::get<0>(input)}) for: {?}
# Process can be configured on command line
ok {test-number} - config.waitForKeypress == std::get<1>(input) for: 2 == 2
# Process can be configured on command line
ok {test-number} - cli.parse({"test", "--wait-for-keypress", std::get<0>(input)}) for: {?}
# Process can be configured on command line
ok {test-number} - config.waitForKeypress == std::get<1>(input) for: 3 == 3
# Process can be configured on command line
ok {test-number} - !result for: true
# Process can be configured on command line
ok {test-number} - result.errorMessage(), ContainsSubstring("never") && ContainsSubstring("both") for: "keypress argument must be one of: never, start, exit or both. 'sometimes' not recognised" ( contains: "never" and contains: "both" )
# Process can be configured on command line
ok {test-number} - cli.parse({"test", "-e"}) for: {?}
# Process can be configured on command line
ok {test-number} - config.noThrow for: true
# Process can be configured on command line
ok {test-number} - cli.parse({"test", "--nothrow"}) for: {?}
# Process can be configured on command line
ok {test-number} - config.noThrow for: true
# Process can be configured on command line
ok {test-number} - cli.parse({"test", "-o", "filename.ext"}) for: {?}
# Process can be configured on command line
ok {test-number} - config.defaultOutputFilename == "filename.ext" for: "filename.ext" == "filename.ext"
# Process can be configured on command line
ok {test-number} - cli.parse({"test", "--out", "filename.ext"}) for: {?}
# Process can be configured on command line
ok {test-number} - config.defaultOutputFilename == "filename.ext" for: "filename.ext" == "filename.ext"
# Process can be configured on command line
ok {test-number} - cli.parse({"test", "-abe"}) for: {?}
# Process can be configured on command line
ok {test-number} - config.abortAfter == 1 for: 1 == 1
# Process can be configured on command line
ok {test-number} - config.shouldDebugBreak for: true
# Process can be configured on command line
ok {test-number} - config.noThrow == true for: true == true
# Process can be configured on command line
ok {test-number} - cli.parse({"test"}) for: {?}
# Process can be configured on command line
ok {test-number} - config.defaultColourMode == ColourMode::PlatformDefault for: 0 == 0
# Process can be configured on command line
ok {test-number} - cli.parse( { "test", "--colour-mode", "default" } ) for: {?}
# Process can be configured on command line
ok {test-number} - config.defaultColourMode == ColourMode::PlatformDefault for: 0 == 0
# Process can be configured on command line
ok {test-number} - cli.parse({"test", "--colour-mode", "ansi"}) for: {?}
# Process can be configured on command line
ok {test-number} - config.defaultColourMode == ColourMode::ANSI for: 1 == 1
# Process can be configured on command line
ok {test-number} - cli.parse({"test", "--colour-mode", "none"}) for: {?}
# Process can be configured on command line
ok {test-number} - config.defaultColourMode == ColourMode::None for: 3 == 3
# Process can be configured on command line
ok {test-number} - !result for: true
# Process can be configured on command line
ok {test-number} - result.errorMessage(), ContainsSubstring( "colour mode must be one of" ) for: "colour mode must be one of: default, ansi, win32, or none. 'wrong' is not recognised" contains: "colour mode must be one of"
# Process can be configured on command line
ok {test-number} - cli.parse({ "test", "--benchmark-samples=200" }) for: {?}
# Process can be configured on command line
ok {test-number} - config.benchmarkSamples == 200 for: 200 == 200
# Process can be configured on command line
ok {test-number} - cli.parse({ "test", "--benchmark-resamples=20000" }) for: {?}
# Process can be configured on command line
ok {test-number} - config.benchmarkResamples == 20000 for: 20000 (0x<hex digits>) == 20000 (0x<hex digits>)
# Process can be configured on command line
ok {test-number} - cli.parse({ "test", "--benchmark-confidence-interval=0.99" }) for: {?}
# Process can be configured on command line
ok {test-number} - config.benchmarkConfidenceInterval == Catch::Approx(0.99) for: 0.99 == Approx( 0.99 )
# Process can be configured on command line
ok {test-number} - cli.parse({ "test", "--benchmark-no-analysis" }) for: {?}
# Process can be configured on command line
ok {test-number} - config.benchmarkNoAnalysis for: true
# Process can be configured on command line
ok {test-number} - cli.parse({ "test", "--benchmark-warmup-time=10" }) for: {?}
# Process can be configured on command line
ok {test-number} - config.benchmarkWarmupTime == 10 for: 10 == 10
# Product with differing arities - std::tuple<int, double, float>
ok {test-number} - std::tuple_size<TestType>::value >= 1 for: 3 >= 1
# Product with differing arities - std::tuple<int, double>
ok {test-number} - std::tuple_size<TestType>::value >= 1 for: 2 >= 1
# Product with differing arities - std::tuple<int>
ok {test-number} - std::tuple_size<TestType>::value >= 1 for: 1 >= 1
# Random seed generation accepts known methods
ok {test-number} - Catch::generateRandomSeed(method)
# Random seed generation accepts known methods
ok {test-number} - Catch::generateRandomSeed(method)
# Random seed generation accepts known methods
ok {test-number} - Catch::generateRandomSeed(method)
# Random seed generation reports unknown methods
ok {test-number} - Catch::generateRandomSeed(static_cast<Catch::GenerateFrom>(77))
# Range type with sentinel
ok {test-number} - Catch::Detail::stringify(UsesSentinel{}) == "{  }" for: "{  }" == "{  }"
# Reconstruction should be based on stringification: #914
not ok {test-number} - truthy(false) for: Hey, its truthy!
# Regex string matcher
not ok {test-number} - testStringForMatching(), Matches( "this STRING contains 'abc' as a substring" ) for: "this string contains 'abc' as a substring" matches "this STRING contains 'abc' as a substring" case sensitively
# Regex string matcher
not ok {test-number} - testStringForMatching(), Matches( "contains 'abc' as a substring" ) for: "this string contains 'abc' as a substring" matches "contains 'abc' as a substring" case sensitively
# Regex string matcher
not ok {test-number} - testStringForMatching(), Matches( "this string contains 'abc' as a" ) for: "this string contains 'abc' as a substring" matches "this string contains 'abc' as a" case sensitively
# Registering reporter with '::' in name fails
ok {test-number} - registry.registerReporter( "with::doublecolons", Catch::Detail::make_unique<TestReporterFactory>() ), "'::' is not allowed in reporter name: 'with::doublecolons'" for: "'::' is not allowed in reporter name: 'with::doublecolons'" equals: "'::' is not allowed in reporter name: 'with::doublecolons'"
# Regression test #1
ok {test-number} - actual, !UnorderedEquals( expected ) for: { 'a', 'b' } not UnorderedEquals: { 'c', 'b' }
# Reporter's write listings to provided stream
ok {test-number} - !(factories.empty()) for: !false
# Reporter's write listings to provided stream
ok {test-number} - listingString, ContainsSubstring("fakeTag"s) for: "All available tags:    1  [fakeTag] 1 tag  " contains: "fakeTag" with 1 message: 'Tested reporter: Automake'
# Reporter's write listings to provided stream
ok {test-number} - !(factories.empty()) for: !false
# Reporter's write listings to provided stream
ok {test-number} - listingString, ContainsSubstring("fake reporter"s) for: "Available reporters:   fake reporter:  fake description  " contains: "fake reporter" with 1 message: 'Tested reporter: Automake'
# Reporter's write listings to provided stream
ok {test-number} - !(factories.empty()) for: !false
# Reporter's write listings to provided stream
ok {test-number} - listingString, ContainsSubstring( "fake test name"s ) && ContainsSubstring( "fakeTestTag"s ) for: "All available test cases:   fake test name       [fakeTestTag] 1 test case  " ( contains: "fake test name" and contains: "fakeTestTag" ) with 1 message: 'Tested reporter: Automake'
# Reporter's write listings to provided stream
ok {test-number} - !(factories.empty()) for: !false
# Reporter's write listings to provided stream
ok {test-number} - listingString, ContainsSubstring("fakeTag"s) for: "All available tags:    1  [fakeTag] 1 tag  " contains: "fakeTag" with 1 message: 'Tested reporter: compact'
# Reporter's write listings to provided stream
ok {test-number} - !(factories.empty()) for: !false
# Reporter's write listings to provided stream
ok {test-number} - listingString, ContainsSubstring("fake reporter"s) for: "Available reporters:   fake reporter:  fake description  " contains: "fake reporter" with 1 message: 'Tested reporter: compact'
# Reporter's write listings to provided stream
ok {test-number} - !(factories.empty()) for: !false
# Reporter's write listings to provided stream
ok {test-number} - listingString, ContainsSubstring( "fake test name"s ) && ContainsSubstring( "fakeTestTag"s ) for: "All available test cases:   fake test name       [fakeTestTag] 1 test case  " ( contains: "fake test name" and contains: "fakeTestTag" ) with 1 message: 'Tested reporter: compact'
# Reporter's write listings to provided stream
ok {test-number} - !(factories.empty()) for: !false
# Reporter's write listings to provided stream
ok {test-number} - listingString, ContainsSubstring("fakeTag"s) for: "All available tags:    1  [fakeTag] 1 tag  " contains: "fakeTag" with 1 message: 'Tested reporter: console'
# Reporter's write listings to provided stream
ok {test-number} - !(factories.empty()) for: !false
# Reporter's write listings to provided stream
ok {test-number} - listingString, ContainsSubstring("fake reporter"s) for: "Available reporters:   fake reporter:  fake description  " contains: "fake reporter" with 1 message: 'Tested reporter: console'
# Reporter's write listings to provided stream
ok {test-number} - !(factories.empty()) for: !false
# Reporter's write listings to provided stream
ok {test-number} - listingString, ContainsSubstring( "fake test name"s ) && ContainsSubstring( "fakeTestTag"s ) for: "All available test cases:   fake test name       [fakeTestTag] 1 test case  " ( contains: "fake test name" and contains: "fakeTestTag" ) with 1 message: 'Tested reporter: console'
# Reporter's write listings to provided stream
ok {test-number} - !(factories.empty()) for: !false
# Reporter's write listings to provided stream
ok {test-number} - listingString, ContainsSubstring("fakeTag"s) for: "<?xml version="1.0" encoding="UTF-8"?> All available tags:    1  [fakeTag] 1 tag  " contains: "fakeTag" with 1 message: 'Tested reporter: JUnit'
# Reporter's write listings to provided stream
ok {test-number} - !(factories.empty()) for: !false
# Reporter's write listings to provided stream
ok {test-number} - listingString, ContainsSubstring("fake reporter"s) for: "<?xml version="1.0" encoding="UTF-8"?> Available reporters:   fake reporter:  fake description  " contains: "fake reporter" with 1 message: 'Tested reporter: JUnit'
# Reporter's write listings to provided stream
ok {test-number} - !(factories.empty()) for: !false
# Reporter's write listings to provided stream
ok {test-number} - listingString, ContainsSubstring( "fake test name"s ) && ContainsSubstring( "fakeTestTag"s ) for: "<?xml version="1.0" encoding="UTF-8"?> All available test cases:   fake test name       [fakeTestTag] 1 test case  " ( contains: "fake test name" and contains: "fakeTestTag" ) with 1 message: 'Tested reporter: JUnit'
# Reporter's write listings to provided stream
ok {test-number} - !(factories.empty()) for: !false
# Reporter's write listings to provided stream
ok {test-number} - listingString, ContainsSubstring("fakeTag"s) for: "<?xml version="1.0" encoding="UTF-8"?> All available tags:    1  [fakeTag] 1 tag  " contains: "fakeTag" with 1 message: 'Tested reporter: SonarQube'
# Reporter's write listings to provided stream
ok {test-number} - !(factories.empty()) for: !false
# Reporter's write listings to provided stream
ok {test-number} - listingString, ContainsSubstring("fake reporter"s) for: "<?xml version="1.0" encoding="UTF-8"?> Available reporters:   fake reporter:  fake description  " contains: "fake reporter" with 1 message: 'Tested reporter: SonarQube'
# Reporter's write listings to provided stream
ok {test-number} - !(factories.empty()) for: !false
# Reporter's write listings to provided stream
ok {test-number} - listingString, ContainsSubstring( "fake test name"s ) && ContainsSubstring( "fakeTestTag"s ) for: "<?xml version="1.0" encoding="UTF-8"?> All available test cases:   fake test name       [fakeTestTag] 1 test case  " ( contains: "fake test name" and contains: "fakeTestTag" ) with 1 message: 'Tested reporter: SonarQube'
# Reporter's write listings to provided stream
ok {test-number} - !(factories.empty()) for: !false
# Reporter's write listings to provided stream
ok {test-number} - listingString, ContainsSubstring("fakeTag"s) for: "All available tags:    1  [fakeTag] 1 tag  " contains: "fakeTag" with 1 message: 'Tested reporter: TAP'
# Reporter's write listings to provided stream
ok {test-number} - !(factories.empty()) for: !false
# Reporter's write listings to provided stream
ok {test-number} - listingString, ContainsSubstring("fake reporter"s) for: "Available reporters:   fake reporter:  fake description  " contains: "fake reporter" with 1 message: 'Tested reporter: TAP'
# Reporter's write listings to provided stream
ok {test-number} - !(factories.empty()) for: !false
# Reporter's write listings to provided stream
ok {test-number} - listingString, ContainsSubstring( "fake test name"s ) && ContainsSubstring( "fakeTestTag"s ) for: "All available test cases:   fake test name       [fakeTestTag] 1 test case  " ( contains: "fake test name" and contains: "fakeTestTag" ) with 1 message: 'Tested reporter: TAP'
# Reporter's write listings to provided stream
ok {test-number} - !(factories.empty()) for: !false
# Reporter's write listings to provided stream
ok {test-number} - listingString, ContainsSubstring("fakeTag"s) for: "All available tags:    1  [fakeTag] 1 tag  " contains: "fakeTag" with 1 message: 'Tested reporter: TeamCity'
# Reporter's write listings to provided stream
ok {test-number} - !(factories.empty()) for: !false
# Reporter's write listings to provided stream
ok {test-number} - listingString, ContainsSubstring("fake reporter"s) for: "Available reporters:   fake reporter:  fake description  " contains: "fake reporter" with 1 message: 'Tested reporter: TeamCity'
# Reporter's write listings to provided stream
ok {test-number} - !(factories.empty()) for: !false
# Reporter's write listings to provided stream
ok {test-number} - listingString, ContainsSubstring( "fake test name"s ) && ContainsSubstring( "fakeTestTag"s ) for: "All available test cases:   fake test name       [fakeTestTag] 1 test case  " ( contains: "fake test name" and contains: "fakeTestTag" ) with 1 message: 'Tested reporter: TeamCity'
# Reporter's write listings to provided stream
ok {test-number} - !(factories.empty()) for: !false
# Reporter's write listings to provided stream
ok {test-number} - listingString, ContainsSubstring("fakeTag"s) for: "<?xml version="1.0" encoding="UTF-8"?> <TagsFromMatchingTests>   <Tag>     <Count>1</Count>     <Aliases>       <Alias>fakeTag</Alias>     </Aliases>   </Tag> </TagsFromMatchingTests>" contains: "fakeTag" with 1 message: 'Tested reporter: XML'
# Reporter's write listings to provided stream
ok {test-number} - !(factories.empty()) for: !false
# Reporter's write listings to provided stream
ok {test-number} - listingString, ContainsSubstring("fake reporter"s) for: "<?xml version="1.0" encoding="UTF-8"?> <AvailableReporters>   <Reporter>     <Name>fake reporter</Name>     <Description>fake description</Description>   </Reporter> </AvailableReporters>" contains: "fake reporter" with 1 message: 'Tested reporter: XML'
# Reporter's write listings to provided stream
ok {test-number} - !(factories.empty()) for: !false
# Reporter's write listings to provided stream
ok {test-number} - listingString, ContainsSubstring( "fake test name"s ) && ContainsSubstring( "fakeTestTag"s ) for: "<?xml version="1.0" encoding="UTF-8"?> <MatchingTests>   <TestCase>     <Name>fake test name</Name>     <ClassName/>     <Tags>[fakeTestTag]</Tags>     <SourceInfo>       <File>fake-file.cpp</File>       <Line>123456789</Line>     </SourceInfo>   </TestCase> </MatchingTests>" ( contains: "fake test name" and contains: "fakeTestTag" ) with 1 message: 'Tested reporter: XML'
# Reproducer for #2309 - a very long description past 80 chars (default console width) with a late colon : blablabla
ok {test-number} -
# SUCCEED counts as a test pass
ok {test-number} - with 1 message: 'this is a success'
# SUCCEED does not require an argument
ok {test-number} -
# Scenario: BDD tests requiring Fixtures to provide commonly-accessed data or methods
ok {test-number} - before == 0 for: 0 == 0
# Scenario: BDD tests requiring Fixtures to provide commonly-accessed data or methods
ok {test-number} - after > before for: 1 > 0
# Scenario: Do that thing with the thing
ok {test-number} - itDoesThis() for: true
# Scenario: Do that thing with the thing
ok {test-number} - itDoesThat() for: true
# Scenario: This is a really long scenario name to see how the list command deals with wrapping
ok {test-number} - with 1 message: 'boo!'
# Scenario: Vector resizing affects size and capacity
ok {test-number} - v.size() == 0 for: 0 == 0
# Scenario: Vector resizing affects size and capacity
ok {test-number} - v.size() == 10 for: 10 == 10
# Scenario: Vector resizing affects size and capacity
ok {test-number} - v.capacity() >= 10 for: 10 >= 10
# Scenario: Vector resizing affects size and capacity
ok {test-number} - v.size() == 5 for: 5 == 5
# Scenario: Vector resizing affects size and capacity
ok {test-number} - v.capacity() >= 10 for: 10 >= 10
# Scenario: Vector resizing affects size and capacity
ok {test-number} - v.size() == 0 for: 0 == 0
# Scenario: Vector resizing affects size and capacity
ok {test-number} - v.capacity() >= 10 for: 10 >= 10
# Scenario: Vector resizing affects size and capacity
ok {test-number} - v.size() == 0 for: 0 == 0
# Some simple comparisons between doubles
ok {test-number} - d == Approx( 1.23 ) for: 1.23 == Approx( 1.23 )
# Some simple comparisons between doubles
ok {test-number} - d != Approx( 1.22 ) for: 1.23 != Approx( 1.22 )
# Some simple comparisons between doubles
ok {test-number} - d != Approx( 1.24 ) for: 1.23 != Approx( 1.24 )
# Some simple comparisons between doubles
ok {test-number} - d == 1.23_a for: 1.23 == Approx( 1.23 )
# Some simple comparisons between doubles
ok {test-number} - d != 1.22_a for: 1.23 != Approx( 1.22 )
# Some simple comparisons between doubles
ok {test-number} - Approx( d ) == 1.23 for: Approx( 1.23 ) == 1.23
# Some simple comparisons between doubles
ok {test-number} - Approx( d ) != 1.22 for: Approx( 1.23 ) != 1.22
# Some simple comparisons between doubles
ok {test-number} - Approx( d ) != 1.24 for: Approx( 1.23 ) != 1.24
# StartsWith string matcher
not ok {test-number} - testStringForMatching(), StartsWith( "This String" ) for: "this string contains 'abc' as a substring" starts with: "This String"
# StartsWith string matcher
not ok {test-number} - testStringForMatching(), StartsWith( "string", Catch::CaseSensitive::No ) for: "this string contains 'abc' as a substring" starts with: "string" (case insensitive)
# Static arrays are convertible to string
ok {test-number} - Catch::Detail::stringify(singular) == "{ 1 }" for: "{ 1 }" == "{ 1 }"
# Static arrays are convertible to string
ok {test-number} - Catch::Detail::stringify(arr) == "{ 3, 2, 1 }" for: "{ 3, 2, 1 }" == "{ 3, 2, 1 }"
# Static arrays are convertible to string
ok {test-number} - Catch::Detail::stringify(arr) == R"({ { "1:1", "1:2", "1:3" }, { "2:1", "2:2" } })" for: "{ { "1:1", "1:2", "1:3" }, { "2:1", "2:2" } }" == "{ { "1:1", "1:2", "1:3" }, { "2:1", "2:2" } }"
# String matchers
ok {test-number} - testStringForMatching(), ContainsSubstring( "string" ) for: "this string contains 'abc' as a substring" contains: "string"
# String matchers
ok {test-number} - testStringForMatching(), ContainsSubstring( "string", Catch::CaseSensitive::No ) for: "this string contains 'abc' as a substring" contains: "string" (case insensitive)
# String matchers
ok {test-number} - testStringForMatching(), ContainsSubstring( "abc" ) for: "this string contains 'abc' as a substring" contains: "abc"
# String matchers
ok {test-number} - testStringForMatching(), ContainsSubstring( "aBC", Catch::CaseSensitive::No ) for: "this string contains 'abc' as a substring" contains: "abc" (case insensitive)
# String matchers
ok {test-number} - testStringForMatching(), StartsWith( "this" ) for: "this string contains 'abc' as a substring" starts with: "this"
# String matchers
ok {test-number} - testStringForMatching(), StartsWith( "THIS", Catch::CaseSensitive::No ) for: "this string contains 'abc' as a substring" starts with: "this" (case insensitive)
# String matchers
ok {test-number} - testStringForMatching(), EndsWith( "substring" ) for: "this string contains 'abc' as a substring" ends with: "substring"
# String matchers
ok {test-number} - testStringForMatching(), EndsWith( " SuBsTrInG", Catch::CaseSensitive::No ) for: "this string contains 'abc' as a substring" ends with: " substring" (case insensitive)
# StringRef
ok {test-number} - empty.empty() for: true
# StringRef
ok {test-number} - empty.size() == 0 for: 0 == 0
# StringRef
ok {test-number} - std::strcmp( empty.data(), "" ) == 0 for: 0 == 0
# StringRef
ok {test-number} - s.empty() == false for: false == false
# StringRef
ok {test-number} - s.size() == 5 for: 5 == 5
# StringRef
ok {test-number} - std::strcmp( rawChars, "hello" ) == 0 for: 0 == 0
# StringRef
ok {test-number} - s.data() == rawChars for: "hello" == "hello"
# StringRef
ok {test-number} - original == "original"
# StringRef
ok {test-number} - original.data()
# StringRef
ok {test-number} - original.begin() == copy.begin() for: "original string" == "original string"
# StringRef
ok {test-number} - original.begin() == copy.begin() for: "original string" == "original string"
# StringRef
ok {test-number} - ss.empty() == false for: false == false
# StringRef
ok {test-number} - ss.size() == 5 for: 5 == 5
# StringRef
ok {test-number} - std::strncmp( ss.data(), "hello", 5 ) == 0 for: 0 == 0
# StringRef
ok {test-number} - ss == "hello" for: hello == "hello"
# StringRef
ok {test-number} - ss.size() == 6 for: 6 == 6
# StringRef
ok {test-number} - std::strcmp( ss.data(), "world!" ) == 0 for: 0 == 0
# StringRef
ok {test-number} - s.data() == s2.data() for: "hello world!" == "hello world!"
# StringRef
ok {test-number} - s.data() == ss.data() for: "hello world!" == "hello world!"
# StringRef
ok {test-number} - s.substr(s.size() + 1, 123).empty() for: true
# StringRef
ok {test-number} - std::strcmp(ss.data(), "world!") == 0 for: 0 == 0
# StringRef
ok {test-number} - s.substr(1'000'000, 1).empty() for: true
# StringRef
ok {test-number} - reinterpret_cast<char*>(buffer1) != reinterpret_cast<char*>(buffer2) for: "Hello" != "Hello"
# StringRef
ok {test-number} - left == right for: Hello == Hello
# StringRef
ok {test-number} - left != left.substr(0, 3) for: Hello != Hel
# StringRef
ok {test-number} - sr == "a standard string" for: a standard string == "a standard string"
# StringRef
ok {test-number} - sr.size() == stdStr.size() for: 17 == 17
# StringRef
ok {test-number} - sr == "a standard string" for: a standard string == "a standard string"
# StringRef
ok {test-number} - sr.size() == stdStr.size() for: 17 == 17
# StringRef
ok {test-number} - sr == "a standard string" for: a standard string == "a standard string"
# StringRef
ok {test-number} - sr.size() == stdStr.size() for: 17 == 17
# StringRef
ok {test-number} - stdStr == "a stringref" for: "a stringref" == "a stringref"
# StringRef
ok {test-number} - stdStr.size() == sr.size() for: 11 == 11
# StringRef
ok {test-number} - stdStr == "a stringref" for: "a stringref" == "a stringref"
# StringRef
ok {test-number} - stdStr.size() == sr.size() for: 11 == 11
# StringRef
ok {test-number} - lhs == "some string += the stringref contents" for: "some string += the stringref contents" == "some string += the stringref contents"
# StringRef
ok {test-number} - together == "abrakadabra" for: "abrakadabra" == "abrakadabra"
# StringRef at compilation time
ok {test-number} - with 1 message: 'empty.size() == 0'
# StringRef at compilation time
ok {test-number} - with 1 message: 'empty.begin() == empty.end()'
# StringRef at compilation time
ok {test-number} - with 1 message: 'stringref.size() == 3'
# StringRef at compilation time
ok {test-number} - with 1 message: 'stringref.data() == abc'
# StringRef at compilation time
ok {test-number} - with 1 message: 'stringref.begin() == abc'
# StringRef at compilation time
ok {test-number} - with 1 message: 'stringref.begin() != stringref.end()'
# StringRef at compilation time
ok {test-number} - with 1 message: 'stringref.substr(10, 0).empty()'
# StringRef at compilation time
ok {test-number} - with 1 message: 'stringref.substr(2, 1).data() == abc + 2'
# StringRef at compilation time
ok {test-number} - with 1 message: 'stringref[1] == 'b''
# StringRef at compilation time
ok {test-number} - with 1 message: 'shortened.size() == 2'
# StringRef at compilation time
ok {test-number} - with 1 message: 'shortened.data() == abc'
# StringRef at compilation time
ok {test-number} - with 1 message: 'shortened.begin() != shortened.end()'
# StringRef at compilation time
ok {test-number} - with 1 message: '!(sr1.empty())'
# StringRef at compilation time
ok {test-number} - with 1 message: 'sr1.size() == 3'
# StringRef at compilation time
ok {test-number} - with 1 message: 'sr2.empty()'
# StringRef at compilation time
ok {test-number} - with 1 message: 'sr2.size() == 0'
# Stringifying char arrays with statically known sizes - char
ok {test-number} - ::Catch::Detail::stringify( with_null_terminator ) == R"("abc")"s for: ""abc"" == ""abc""
# Stringifying char arrays with statically known sizes - char
ok {test-number} - ::Catch::Detail::stringify( no_null_terminator ) == R"("abc")"s for: ""abc"" == ""abc""
# Stringifying char arrays with statically known sizes - signed char
ok {test-number} - ::Catch::Detail::stringify( with_null_terminator ) == R"("abc")"s for: ""abc"" == ""abc""
# Stringifying char arrays with statically known sizes - signed char
ok {test-number} - ::Catch::Detail::stringify( no_null_terminator ) == R"("abc")"s for: ""abc"" == ""abc""
# Stringifying char arrays with statically known sizes - unsigned char
ok {test-number} - ::Catch::Detail::stringify( with_null_terminator ) == R"("abc")"s for: ""abc"" == ""abc""
# Stringifying char arrays with statically known sizes - unsigned char
ok {test-number} - ::Catch::Detail::stringify( no_null_terminator ) == R"("abc")"s for: ""abc"" == ""abc""
# Stringifying std::chrono::duration helpers
ok {test-number} - minute == seconds for: 1 m == 60 s
# Stringifying std::chrono::duration helpers
ok {test-number} - hour != seconds for: 1 h != 60 s
# Stringifying std::chrono::duration helpers
ok {test-number} - micro != milli for: 1 us != 1 ms
# Stringifying std::chrono::duration helpers
ok {test-number} - nano != micro for: 1 ns != 1 us
# Stringifying std::chrono::duration with weird ratios
ok {test-number} - half_minute != femto_second for: 1 [30/1]s != 1 fs
# Stringifying std::chrono::duration with weird ratios
ok {test-number} - pico_second != atto_second for: 1 ps != 1 as
# Stringifying std::chrono::time_point<system_clock>
ok {test-number} - now != later for: {iso8601-timestamp} != {iso8601-timestamp}
# Tabs and newlines show in output
not ok {test-number} - s1 == s2 for: "if ($b == 10) { 		$a	= 20; }" == "if ($b == 10) { 	$a = 20; } "
# Tag alias can be registered against tag patterns
ok {test-number} - what, ContainsSubstring( "[@zzz]" ) for: "error: tag alias, '[@zzz]' already registered. 	First seen at: file:2 	Redefined at: file:10" contains: "[@zzz]"
# Tag alias can be registered against tag patterns
ok {test-number} - what, ContainsSubstring( "file" ) for: "error: tag alias, '[@zzz]' already registered. 	First seen at: file:2 	Redefined at: file:10" contains: "file"
# Tag alias can be registered against tag patterns
ok {test-number} - what, ContainsSubstring( "2" ) for: "error: tag alias, '[@zzz]' already registered. 	First seen at: file:2 	Redefined at: file:10" contains: "2"
# Tag alias can be registered against tag patterns
ok {test-number} - what, ContainsSubstring( "10" ) for: "error: tag alias, '[@zzz]' already registered. 	First seen at: file:2 	Redefined at: file:10" contains: "10"
# Tag alias can be registered against tag patterns
ok {test-number} - registry.add( "[no ampersat]", "", Catch::SourceLineInfo( "file", 3 ) )
# Tag alias can be registered against tag patterns
ok {test-number} - registry.add( "[the @ is not at the start]", "", Catch::SourceLineInfo( "file", 3 ) )
# Tag alias can be registered against tag patterns
ok {test-number} - registry.add( "@no square bracket at start]", "", Catch::SourceLineInfo( "file", 3 ) )
# Tag alias can be registered against tag patterns
ok {test-number} - registry.add( "[@no square bracket at end", "", Catch::SourceLineInfo( "file", 3 ) )
# Tags with spaces and non-alphanumerical characters are accepted
ok {test-number} - testCase.tags.size() == 2 for: 2 == 2
# Tags with spaces and non-alphanumerical characters are accepted
ok {test-number} - testCase.tags, VectorContains( Tag( "tag with spaces" ) ) && VectorContains( Tag( "I said \"good day\" sir!"_catch_sr ) ) for: { {?}, {?} } ( Contains: {?} and Contains: {?} )
# Template test case method with test types specified inside std::tuple - MyTypes - 0
ok {test-number} - Template_Fixture<TestType>::m_a == 1 for: 1 == 1
# Template test case method with test types specified inside std::tuple - MyTypes - 1
ok {test-number} - Template_Fixture<TestType>::m_a == 1 for: 1 == 1
# Template test case method with test types specified inside std::tuple - MyTypes - 2
ok {test-number} - Template_Fixture<TestType>::m_a == 1 for: 1.0 == 1
# Template test case with test types specified inside non-copyable and non-movable std::tuple - NonCopyableAndNonMovableTypes - 0
ok {test-number} - sizeof(TestType) > 0 for: 1 > 0
# Template test case with test types specified inside non-copyable and non-movable std::tuple - NonCopyableAndNonMovableTypes - 1
ok {test-number} - sizeof(TestType) > 0 for: 4 > 0
# Template test case with test types specified inside non-default-constructible std::tuple - MyNonDefaultConstructibleTypes - 0
ok {test-number} - sizeof(TestType) > 0 for: 1 > 0
# Template test case with test types specified inside non-default-constructible std::tuple - MyNonDefaultConstructibleTypes - 1
ok {test-number} - sizeof(TestType) > 0 for: 4 > 0
# Template test case with test types specified inside std::tuple - MyTypes - 0
ok {test-number} - sizeof(TestType) > 0 for: 4 > 0
# Template test case with test types specified inside std::tuple - MyTypes - 1
ok {test-number} - sizeof(TestType) > 0 for: 1 > 0
# Template test case with test types specified inside std::tuple - MyTypes - 2
ok {test-number} - sizeof(TestType) > 0 for: 4 > 0
# TemplateTest: vectors can be sized and resized - float
ok {test-number} - v.size() == 5 for: 5 == 5
# TemplateTest: vectors can be sized and resized - float
ok {test-number} - v.capacity() >= 5 for: 5 >= 5
# TemplateTest: vectors can be sized and resized - float
ok {test-number} - v.size() == 10 for: 10 == 10
# TemplateTest: vectors can be sized and resized - float
ok {test-number} - v.capacity() >= 10 for: 10 >= 10
# TemplateTest: vectors can be sized and resized - float
ok {test-number} - v.size() == 5 for: 5 == 5
# TemplateTest: vectors can be sized and resized - float
ok {test-number} - v.capacity() >= 5 for: 5 >= 5
# TemplateTest: vectors can be sized and resized - float
ok {test-number} - v.size() == 0 for: 0 == 0
# TemplateTest: vectors can be sized and resized - float
ok {test-number} - v.capacity() >= 5 for: 5 >= 5
# TemplateTest: vectors can be sized and resized - float
ok {test-number} - v.capacity() == 0 for: 0 == 0
# TemplateTest: vectors can be sized and resized - float
ok {test-number} - v.size() == 5 for: 5 == 5
# TemplateTest: vectors can be sized and resized - float
ok {test-number} - v.capacity() >= 5 for: 5 >= 5
# TemplateTest: vectors can be sized and resized - float
ok {test-number} - v.size() == 5 for: 5 == 5
# TemplateTest: vectors can be sized and resized - float
ok {test-number} - v.capacity() >= 10 for: 10 >= 10
# TemplateTest: vectors can be sized and resized - float
ok {test-number} - v.size() == 5 for: 5 == 5
# TemplateTest: vectors can be sized and resized - float
ok {test-number} - v.capacity() >= 5 for: 5 >= 5
# TemplateTest: vectors can be sized and resized - float
ok {test-number} - v.size() == 5 for: 5 == 5
# TemplateTest: vectors can be sized and resized - float
ok {test-number} - v.capacity() >= 5 for: 5 >= 5
# TemplateTest: vectors can be sized and resized - int
ok {test-number} - v.size() == 5 for: 5 == 5
# TemplateTest: vectors can be sized and resized - int
ok {test-number} - v.capacity() >= 5 for: 5 >= 5
# TemplateTest: vectors can be sized and resized - int
ok {test-number} - v.size() == 10 for: 10 == 10
# TemplateTest: vectors can be sized and resized - int
ok {test-number} - v.capacity() >= 10 for: 10 >= 10
# TemplateTest: vectors can be sized and resized - int
ok {test-number} - v.size() == 5 for: 5 == 5
# TemplateTest: vectors can be sized and resized - int
ok {test-number} - v.capacity() >= 5 for: 5 >= 5
# TemplateTest: vectors can be sized and resized - int
ok {test-number} - v.size() == 0 for: 0 == 0
# TemplateTest: vectors can be sized and resized - int
ok {test-number} - v.capacity() >= 5 for: 5 >= 5
# TemplateTest: vectors can be sized and resized - int
ok {test-number} - v.capacity() == 0 for: 0 == 0
# TemplateTest: vectors can be sized and resized - int
ok {test-number} - v.size() == 5 for: 5 == 5
# TemplateTest: vectors can be sized and resized - int
ok {test-number} - v.capacity() >= 5 for: 5 >= 5
# TemplateTest: vectors can be sized and resized - int
ok {test-number} - v.size() == 5 for: 5 == 5
# TemplateTest: vectors can be sized and resized - int
ok {test-number} - v.capacity() >= 10 for: 10 >= 10
# TemplateTest: vectors can be sized and resized - int
ok {test-number} - v.size() == 5 for: 5 == 5
# TemplateTest: vectors can be sized and resized - int
ok {test-number} - v.capacity() >= 5 for: 5 >= 5
# TemplateTest: vectors can be sized and resized - int
ok {test-number} - v.size() == 5 for: 5 == 5
# TemplateTest: vectors can be sized and resized - int
ok {test-number} - v.capacity() >= 5 for: 5 >= 5
# TemplateTest: vectors can be sized and resized - std::string
ok {test-number} - v.size() == 5 for: 5 == 5
# TemplateTest: vectors can be sized and resized - std::string
ok {test-number} - v.capacity() >= 5 for: 5 >= 5
# TemplateTest: vectors can be sized and resized - std::string
ok {test-number} - v.size() == 10 for: 10 == 10
# TemplateTest: vectors can be sized and resized - std::string
ok {test-number} - v.capacity() >= 10 for: 10 >= 10
# TemplateTest: vectors can be sized and resized - std::string
ok {test-number} - v.size() == 5 for: 5 == 5
# TemplateTest: vectors can be sized and resized - std::string
ok {test-number} - v.capacity() >= 5 for: 5 >= 5
# TemplateTest: vectors can be sized and resized - std::string
ok {test-number} - v.size() == 0 for: 0 == 0
# TemplateTest: vectors can be sized and resized - std::string
ok {test-number} - v.capacity() >= 5 for: 5 >= 5
# TemplateTest: vectors can be sized and resized - std::string
ok {test-number} - v.capacity() == 0 for: 0 == 0
# TemplateTest: vectors can be sized and resized - std::string
ok {test-number} - v.size() == 5 for: 5 == 5
# TemplateTest: vectors can be sized and resized - std::string
ok {test-number} - v.capacity() >= 5 for: 5 >= 5
# TemplateTest: vectors can be sized and resized - std::string
ok {test-number} - v.size() == 5 for: 5 == 5
# TemplateTest: vectors can be sized and resized - std::string
ok {test-number} - v.capacity() >= 10 for: 10 >= 10
# TemplateTest: vectors can be sized and resized - std::string
ok {test-number} - v.size() == 5 for: 5 == 5
# TemplateTest: vectors can be sized and resized - std::string
ok {test-number} - v.capacity() >= 5 for: 5 >= 5
# TemplateTest: vectors can be sized and resized - std::string
ok {test-number} - v.size() == 5 for: 5 == 5
# TemplateTest: vectors can be sized and resized - std::string
ok {test-number} - v.capacity() >= 5 for: 5 >= 5
# TemplateTest: vectors can be sized and resized - std::tuple<int,float>
ok {test-number} - v.size() == 5 for: 5 == 5
# TemplateTest: vectors can be sized and resized - std::tuple<int,float>
ok {test-number} - v.capacity() >= 5 for: 5 >= 5
# TemplateTest: vectors can be sized and resized - std::tuple<int,float>
ok {test-number} - v.size() == 10 for: 10 == 10
# TemplateTest: vectors can be sized and resized - std::tuple<int,float>
ok {test-number} - v.capacity() >= 10 for: 10 >= 10
# TemplateTest: vectors can be sized and resized - std::tuple<int,float>
ok {test-number} - v.size() == 5 for: 5 == 5
# TemplateTest: vectors can be sized and resized - std::tuple<int,float>
ok {test-number} - v.capacity() >= 5 for: 5 >= 5
# TemplateTest: vectors can be sized and resized - std::tuple<int,float>
ok {test-number} - v.size() == 0 for: 0 == 0
# TemplateTest: vectors can be sized and resized - std::tuple<int,float>
ok {test-number} - v.capacity() >= 5 for: 5 >= 5
# TemplateTest: vectors can be sized and resized - std::tuple<int,float>
ok {test-number} - v.capacity() == 0 for: 0 == 0
# TemplateTest: vectors can be sized and resized - std::tuple<int,float>
ok {test-number} - v.size() == 5 for: 5 == 5
# TemplateTest: vectors can be sized and resized - std::tuple<int,float>
ok {test-number} - v.capacity() >= 5 for: 5 >= 5
# TemplateTest: vectors can be sized and resized - std::tuple<int,float>
ok {test-number} - v.size() == 5 for: 5 == 5
# TemplateTest: vectors can be sized and resized - std::tuple<int,float>
ok {test-number} - v.capacity() >= 10 for: 10 >= 10
# TemplateTest: vectors can be sized and resized - std::tuple<int,float>
ok {test-number} - v.size() == 5 for: 5 == 5
# TemplateTest: vectors can be sized and resized - std::tuple<int,float>
ok {test-number} - v.capacity() >= 5 for: 5 >= 5
# TemplateTest: vectors can be sized and resized - std::tuple<int,float>
ok {test-number} - v.size() == 5 for: 5 == 5
# TemplateTest: vectors can be sized and resized - std::tuple<int,float>
ok {test-number} - v.capacity() >= 5 for: 5 >= 5
# TemplateTestSig: vectors can be sized and resized - (std::tuple<int, float>), 6
ok {test-number} - v.size() == V for: 6 == 6
# TemplateTestSig: vectors can be sized and resized - (std::tuple<int, float>), 6
ok {test-number} - v.capacity() >= V for: 6 >= 6
# TemplateTestSig: vectors can be sized and resized - (std::tuple<int, float>), 6
ok {test-number} - v.size() == 2 * V for: 12 == 12
# TemplateTestSig: vectors can be sized and resized - (std::tuple<int, float>), 6
ok {test-number} - v.capacity() >= 2 * V for: 12 >= 12
# TemplateTestSig: vectors can be sized and resized - (std::tuple<int, float>), 6
ok {test-number} - v.size() == V for: 6 == 6
# TemplateTestSig: vectors can be sized and resized - (std::tuple<int, float>), 6
ok {test-number} - v.capacity() >= V for: 6 >= 6
# TemplateTestSig: vectors can be sized and resized - (std::tuple<int, float>), 6
ok {test-number} - v.size() == 0 for: 0 == 0
# TemplateTestSig: vectors can be sized and resized - (std::tuple<int, float>), 6
ok {test-number} - v.capacity() >= V for: 6 >= 6
# TemplateTestSig: vectors can be sized and resized - (std::tuple<int, float>), 6
ok {test-number} - v.capacity() == 0 for: 0 == 0
# TemplateTestSig: vectors can be sized and resized - (std::tuple<int, float>), 6
ok {test-number} - v.size() == V for: 6 == 6
# TemplateTestSig: vectors can be sized and resized - (std::tuple<int, float>), 6
ok {test-number} - v.capacity() >= V for: 6 >= 6
# TemplateTestSig: vectors can be sized and resized - (std::tuple<int, float>), 6
ok {test-number} - v.size() == V for: 6 == 6
# TemplateTestSig: vectors can be sized and resized - (std::tuple<int, float>), 6
ok {test-number} - v.capacity() >= 2 * V for: 12 >= 12
# TemplateTestSig: vectors can be sized and resized - (std::tuple<int, float>), 6
ok {test-number} - v.size() == V for: 6 == 6
# TemplateTestSig: vectors can be sized and resized - (std::tuple<int, float>), 6
ok {test-number} - v.capacity() >= V for: 6 >= 6
# TemplateTestSig: vectors can be sized and resized - (std::tuple<int, float>), 6
ok {test-number} - v.size() == V for: 6 == 6
# TemplateTestSig: vectors can be sized and resized - (std::tuple<int, float>), 6
ok {test-number} - v.capacity() >= V for: 6 >= 6
# TemplateTestSig: vectors can be sized and resized - float,4
ok {test-number} - v.size() == V for: 4 == 4
# TemplateTestSig: vectors can be sized and resized - float,4
ok {test-number} - v.capacity() >= V for: 4 >= 4
# TemplateTestSig: vectors can be sized and resized - float,4
ok {test-number} - v.size() == 2 * V for: 8 == 8
# TemplateTestSig: vectors can be sized and resized - float,4
ok {test-number} - v.capacity() >= 2 * V for: 8 >= 8
# TemplateTestSig: vectors can be sized and resized - float,4
ok {test-number} - v.size() == V for: 4 == 4
# TemplateTestSig: vectors can be sized and resized - float,4
ok {test-number} - v.capacity() >= V for: 4 >= 4
# TemplateTestSig: vectors can be sized and resized - float,4
ok {test-number} - v.size() == 0 for: 0 == 0
# TemplateTestSig: vectors can be sized and resized - float,4
ok {test-number} - v.capacity() >= V for: 4 >= 4
# TemplateTestSig: vectors can be sized and resized - float,4
ok {test-number} - v.capacity() == 0 for: 0 == 0
# TemplateTestSig: vectors can be sized and resized - float,4
ok {test-number} - v.size() == V for: 4 == 4
# TemplateTestSig: vectors can be sized and resized - float,4
ok {test-number} - v.capacity() >= V for: 4 >= 4
# TemplateTestSig: vectors can be sized and resized - float,4
ok {test-number} - v.size() == V for: 4 == 4
# TemplateTestSig: vectors can be sized and resized - float,4
ok {test-number} - v.capacity() >= 2 * V for: 8 >= 8
# TemplateTestSig: vectors can be sized and resized - float,4
ok {test-number} - v.size() == V for: 4 == 4
# TemplateTestSig: vectors can be sized and resized - float,4
ok {test-number} - v.capacity() >= V for: 4 >= 4
# TemplateTestSig: vectors can be sized and resized - float,4
ok {test-number} - v.size() == V for: 4 == 4
# TemplateTestSig: vectors can be sized and resized - float,4
ok {test-number} - v.capacity() >= V for: 4 >= 4
# TemplateTestSig: vectors can be sized and resized - int,5
ok {test-number} - v.size() == V for: 5 == 5
# TemplateTestSig: vectors can be sized and resized - int,5
ok {test-number} - v.capacity() >= V for: 5 >= 5
# TemplateTestSig: vectors can be sized and resized - int,5
ok {test-number} - v.size() == 2 * V for: 10 == 10
# TemplateTestSig: vectors can be sized and resized - int,5
ok {test-number} - v.capacity() >= 2 * V for: 10 >= 10
# TemplateTestSig: vectors can be sized and resized - int,5
ok {test-number} - v.size() == V for: 5 == 5
# TemplateTestSig: vectors can be sized and resized - int,5
ok {test-number} - v.capacity() >= V for: 5 >= 5
# TemplateTestSig: vectors can be sized and resized - int,5
ok {test-number} - v.size() == 0 for: 0 == 0
# TemplateTestSig: vectors can be sized and resized - int,5
ok {test-number} - v.capacity() >= V for: 5 >= 5
# TemplateTestSig: vectors can be sized and resized - int,5
ok {test-number} - v.capacity() == 0 for: 0 == 0
# TemplateTestSig: vectors can be sized and resized - int,5
ok {test-number} - v.size() == V for: 5 == 5
# TemplateTestSig: vectors can be sized and resized - int,5
ok {test-number} - v.capacity() >= V for: 5 >= 5
# TemplateTestSig: vectors can be sized and resized - int,5
ok {test-number} - v.size() == V for: 5 == 5
# TemplateTestSig: vectors can be sized and resized - int,5
ok {test-number} - v.capacity() >= 2 * V for: 10 >= 10
# TemplateTestSig: vectors can be sized and resized - int,5
ok {test-number} - v.size() == V for: 5 == 5
# TemplateTestSig: vectors can be sized and resized - int,5
ok {test-number} - v.capacity() >= V for: 5 >= 5
# TemplateTestSig: vectors can be sized and resized - int,5
ok {test-number} - v.size() == V for: 5 == 5
# TemplateTestSig: vectors can be sized and resized - int,5
ok {test-number} - v.capacity() >= V for: 5 >= 5
# TemplateTestSig: vectors can be sized and resized - std::string,15
ok {test-number} - v.size() == V for: 15 == 15
# TemplateTestSig: vectors can be sized and resized - std::string,15
ok {test-number} - v.capacity() >= V for: 15 >= 15
# TemplateTestSig: vectors can be sized and resized - std::string,15
ok {test-number} - v.size() == 2 * V for: 30 == 30
# TemplateTestSig: vectors can be sized and resized - std::string,15
ok {test-number} - v.capacity() >= 2 * V for: 30 >= 30
# TemplateTestSig: vectors can be sized and resized - std::string,15
ok {test-number} - v.size() == V for: 15 == 15
# TemplateTestSig: vectors can be sized and resized - std::string,15
ok {test-number} - v.capacity() >= V for: 15 >= 15
# TemplateTestSig: vectors can be sized and resized - std::string,15
ok {test-number} - v.size() == 0 for: 0 == 0
# TemplateTestSig: vectors can be sized and resized - std::string,15
ok {test-number} - v.capacity() >= V for: 15 >= 15
# TemplateTestSig: vectors can be sized and resized - std::string,15
ok {test-number} - v.capacity() == 0 for: 0 == 0
# TemplateTestSig: vectors can be sized and resized - std::string,15
ok {test-number} - v.size() == V for: 15 == 15
# TemplateTestSig: vectors can be sized and resized - std::string,15
ok {test-number} - v.capacity() >= V for: 15 >= 15
# TemplateTestSig: vectors can be sized and resized - std::string,15
ok {test-number} - v.size() == V for: 15 == 15
# TemplateTestSig: vectors can be sized and resized - std::string,15
ok {test-number} - v.capacity() >= 2 * V for: 30 >= 30
# TemplateTestSig: vectors can be sized and resized - std::string,15
ok {test-number} - v.size() == V for: 15 == 15
# TemplateTestSig: vectors can be sized and resized - std::string,15
ok {test-number} - v.capacity() >= V for: 15 >= 15
# TemplateTestSig: vectors can be sized and resized - std::string,15
ok {test-number} - v.size() == V for: 15 == 15
# TemplateTestSig: vectors can be sized and resized - std::string,15
ok {test-number} - v.capacity() >= V for: 15 >= 15
# Test case with identical tags keeps just one
ok {test-number} - testCase.tags.size() == 1 for: 1 == 1
# Test case with identical tags keeps just one
ok {test-number} - testCase.tags[0] == Tag( "tag1" ) for: {?} == {?}
# Test case with one argument
ok {test-number} - with 1 message: 'no assertions'
# Test enum bit values
ok {test-number} - 0x<hex digits> == bit30and31 for: 3221225472 (0x<hex digits>) == 3221225472
# Test with special, characters "in name
ok {test-number} -
# Testing checked-if
ok {test-number} - true
# Testing checked-if
ok {test-number} -
# Testing checked-if
ok {test-number} - false  # TODO
# Testing checked-if
ok {test-number} - true
# Testing checked-if
ok {test-number} - false  # TODO
# Testing checked-if
ok {test-number} -
# Testing checked-if 2
ok {test-number} - true
# Testing checked-if 2
not ok {test-number} - explicitly
# Testing checked-if 3
ok {test-number} - false  # TODO
# Testing checked-if 3
not ok {test-number} - explicitly
# The NO_FAIL macro reports a failure but does not fail the test
ok {test-number} - 1 == 2  # TODO
# The default listing implementation write to provided stream
ok {test-number} - listingString, ContainsSubstring("[fakeTag]"s) for: "All available tags:    1  [fakeTag] 1 tag  " contains: "[fakeTag]"
# The default listing implementation write to provided stream
ok {test-number} - listingString, ContainsSubstring( "fake reporter"s ) && ContainsSubstring( "fake description"s ) for: "Available reporters:   fake reporter:  fake description  " ( contains: "fake reporter" and contains: "fake description" )
# The default listing implementation write to provided stream
ok {test-number} - listingString, ContainsSubstring( "fake test name"s ) && ContainsSubstring( "fakeTestTag"s ) for: "All available test cases:   fake test name       [fakeTestTag] 1 test case  " ( contains: "fake test name" and contains: "fakeTestTag" )
# The default listing implementation write to provided stream
ok {test-number} - listingString, ContainsSubstring( "fakeListener"s ) && ContainsSubstring( "fake description"s ) for: "Registered listeners:   fakeListener:  fake description  " ( contains: "fakeListener" and contains: "fake description" )
# This test 'should' fail but doesn't
ok {test-number} - with 1 message: 'oops!'
# Thrown string literals are translated
not ok {test-number} - unexpected exception with message: 'For some reason someone is throwing a string literal!'
# Tracker
ok {test-number} - testCase.isOpen() for: true
# Tracker
ok {test-number} - s1.isOpen() for: true
# Tracker
ok {test-number} - s1.isSuccessfullyCompleted() for: true
# Tracker
ok {test-number} - testCase.isComplete() == false for: false == false
# Tracker
ok {test-number} - ctx.completedCycle() for: true
# Tracker
ok {test-number} - testCase.isSuccessfullyCompleted() for: true
# Tracker
ok {test-number} - testCase.isOpen() for: true
# Tracker
ok {test-number} - s1.isOpen() for: true
# Tracker
ok {test-number} - s1.isComplete() for: true
# Tracker
ok {test-number} - s1.isSuccessfullyCompleted() == false for: false == false
# Tracker
ok {test-number} - testCase.isComplete() == false for: false == false
# Tracker
ok {test-number} - ctx.completedCycle() for: true
# Tracker
ok {test-number} - testCase.isSuccessfullyCompleted() == false for: false == false
# Tracker
ok {test-number} - testCase2.isOpen() for: true
# Tracker
ok {test-number} - s1b.isOpen() == false for: false == false
# Tracker
ok {test-number} - ctx.completedCycle() for: true
# Tracker
ok {test-number} - testCase.isComplete() for: true
# Tracker
ok {test-number} - testCase.isSuccessfullyCompleted() for: true
# Tracker
ok {test-number} - testCase.isOpen() for: true
# Tracker
ok {test-number} - s1.isOpen() for: true
# Tracker
ok {test-number} - s1.isComplete() for: true
# Tracker
ok {test-number} - s1.isSuccessfullyCompleted() == false for: false == false
# Tracker
ok {test-number} - testCase.isComplete() == false for: false == false
# Tracker
ok {test-number} - ctx.completedCycle() for: true
# Tracker
ok {test-number} - testCase.isSuccessfullyCompleted() == false for: false == false
# Tracker
ok {test-number} - testCase2.isOpen() for: true
# Tracker
ok {test-number} - s1b.isOpen() == false for: false == false
# Tracker
ok {test-number} - s2.isOpen() for: true
# Tracker
ok {test-number} - ctx.completedCycle() for: true
# Tracker
ok {test-number} - testCase.isComplete() for: true
# Tracker
ok {test-number} - testCase.isSuccessfullyCompleted() for: true
# Tracker
ok {test-number} - testCase.isOpen() for: true
# Tracker
ok {test-number} - s1.isOpen() for: true
# Tracker
ok {test-number} - s2.isOpen() == false for: false == false
# Tracker
ok {test-number} - testCase.isComplete() == false for: false == false
# Tracker
ok {test-number} - testCase2.isOpen() for: true
# Tracker
ok {test-number} - s1b.isOpen() == false for: false == false
# Tracker
ok {test-number} - s2b.isOpen() for: true
# Tracker
ok {test-number} - ctx.completedCycle() == false for: false == false
# Tracker
ok {test-number} - ctx.completedCycle() for: true
# Tracker
ok {test-number} - s2b.isSuccessfullyCompleted() for: true
# Tracker
ok {test-number} - testCase2.isComplete() == false for: false == false
# Tracker
ok {test-number} - testCase2.isSuccessfullyCompleted() for: true
# Tracker
ok {test-number} - testCase.isOpen() for: true
# Tracker
ok {test-number} - s1.isOpen() for: true
# Tracker
ok {test-number} - s2.isOpen() == false for: false == false
# Tracker
ok {test-number} - testCase.isComplete() == false for: false == false
# Tracker
ok {test-number} - testCase2.isOpen() for: true
# Tracker
ok {test-number} - s1b.isOpen() == false for: false == false
# Tracker
ok {test-number} - s2b.isOpen() for: true
# Tracker
ok {test-number} - ctx.completedCycle() == false for: false == false
# Tracker
ok {test-number} - ctx.completedCycle() for: true
# Tracker
ok {test-number} - s2b.isComplete() for: true
# Tracker
ok {test-number} - s2b.isSuccessfullyCompleted() == false for: false == false
# Tracker
ok {test-number} - testCase2.isSuccessfullyCompleted() == false for: false == false
# Tracker
ok {test-number} - testCase3.isOpen() for: true
# Tracker
ok {test-number} - s1c.isOpen() == false for: false == false
# Tracker
ok {test-number} - s2c.isOpen() == false for: false == false
# Tracker
ok {test-number} - testCase3.isSuccessfullyCompleted() for: true
# Tracker
ok {test-number} - testCase.isOpen() for: true
# Tracker
ok {test-number} - s1.isOpen() for: true
# Tracker
ok {test-number} - s2.isOpen() for: true
# Tracker
ok {test-number} - s2.isComplete() for: true
# Tracker
ok {test-number} - s1.isComplete() == false for: false == false
# Tracker
ok {test-number} - s1.isComplete() for: true
# Tracker
ok {test-number} - testCase.isComplete() == false for: false == false
# Tracker
ok {test-number} - testCase.isComplete() for: true
# Trim strings
ok {test-number} - trim(std::string(no_whitespace)) == no_whitespace for: "There is no extra whitespace here" == "There is no extra whitespace here"
# Trim strings
ok {test-number} - trim(std::string(leading_whitespace)) == no_whitespace for: "There is no extra whitespace here" == "There is no extra whitespace here"
# Trim strings
ok {test-number} - trim(std::string(trailing_whitespace)) == no_whitespace for: "There is no extra whitespace here" == "There is no extra whitespace here"
# Trim strings
ok {test-number} - trim(std::string(whitespace_at_both_ends)) == no_whitespace for: "There is no extra whitespace here" == "There is no extra whitespace here"
# Trim strings
ok {test-number} - trim(StringRef(no_whitespace)) == StringRef(no_whitespace) for: There is no extra whitespace here == There is no extra whitespace here
# Trim strings
ok {test-number} - trim(StringRef(leading_whitespace)) == StringRef(no_whitespace) for: There is no extra whitespace here == There is no extra whitespace here
# Trim strings
ok {test-number} - trim(StringRef(trailing_whitespace)) == StringRef(no_whitespace) for: There is no extra whitespace here == There is no extra whitespace here
# Trim strings
ok {test-number} - trim(StringRef(whitespace_at_both_ends)) == StringRef(no_whitespace) for: There is no extra whitespace here == There is no extra whitespace here
# Type conversions of RangeEquals and similar
ok {test-number} - array_int_a, RangeEquals( c_array ) for: { 1, 2, 3 } elements are { 1, 2, 3 }
# Type conversions of RangeEquals and similar
ok {test-number} - array_int_a, UnorderedRangeEquals( c_array ) for: { 1, 2, 3 } unordered elements are { 1, 2, 3 }
# Type conversions of RangeEquals and similar
ok {test-number} - array_int_3, !RangeEquals( array_int_4 ) for: { 1, 2, 3 } not elements are { 1, 2, 3, 4 }
# Type conversions of RangeEquals and similar
ok {test-number} - array_int_3, !UnorderedRangeEquals( array_int_4 ) for: { 1, 2, 3 } not unordered elements are { 1, 2, 3, 4 }
# Type conversions of RangeEquals and similar
ok {test-number} - array_int_a, RangeEquals( vector_char_a ) for: { 1, 2, 3 } elements are { 1, 2, 3 }
# Type conversions of RangeEquals and similar
ok {test-number} - array_int_a, UnorderedRangeEquals( vector_char_a ) for: { 1, 2, 3 } unordered elements are { 1, 2, 3 }
# Type conversions of RangeEquals and similar
ok {test-number} - with 1 message: 'ContainerIsRandomAccess( array_int_a ) != ContainerIsRandomAccess( list_char_a )'
# Type conversions of RangeEquals and similar
ok {test-number} - array_int_a, RangeEquals( list_char_a ) for: { 1, 2, 3 } elements are { 1, 2, 3 }
# Type conversions of RangeEquals and similar
ok {test-number} - array_int_a, UnorderedRangeEquals( list_char_a ) for: { 1, 2, 3 } unordered elements are { 1, 2, 3 }
# Type conversions of RangeEquals and similar
ok {test-number} - vector_int_a, RangeEquals( vector_char_a ) for: { 1, 2, 3 } elements are { 1, 2, 3 }
# Type conversions of RangeEquals and similar
ok {test-number} - vector_int_a, UnorderedRangeEquals( vector_char_a ) for: { 1, 2, 3 } unordered elements are { 1, 2, 3 }
# Type conversions of RangeEquals and similar
ok {test-number} - vector_int_a, !RangeEquals( vector_char_b ) for: { 1, 2, 3 } not elements are { 1, 2, 2 }
# Type conversions of RangeEquals and similar
ok {test-number} - vector_int_a, !UnorderedRangeEquals( vector_char_b ) for: { 1, 2, 3 } not unordered elements are { 1, 2, 2 }
# Type conversions of RangeEquals and similar
ok {test-number} - a, !RangeEquals( b ) for: { 1, 2, 3 } not elements are { 3, 2, 1 }
# Type conversions of RangeEquals and similar
ok {test-number} - a, UnorderedRangeEquals( b ) for: { 1, 2, 3 } unordered elements are { 3, 2, 1 }
# Type conversions of RangeEquals and similar
ok {test-number} - vector_a, RangeEquals( array_a_plus_1, close_enough ) for: { 1, 2, 3 } elements are { 2, 3, 4 }
# Type conversions of RangeEquals and similar
ok {test-number} - vector_a, UnorderedRangeEquals( array_a_plus_1, close_enough ) for: { 1, 2, 3 } unordered elements are { 2, 3, 4 }
# Unexpected exceptions can be translated
not ok {test-number} - unexpected exception with message: '3.14'
# Upcasting special member functions
ok {test-number} - bptr->i == 3 for: 3 == 3
# Upcasting special member functions
ok {test-number} - bptr->i == 3 for: 3 == 3
# Usage of AllMatch range matcher
ok {test-number} - data, AllMatch(SizeIs(5)) for: { { 0, 1, 2, 3, 5 }, { 4, -3, -2, 5, 0 }, { 0, 0, 0, 5, 0 }, { 0, -5, 0, 5, 0 }, { 1, 0, 0, -1, 5 } } all match has size == 5
# Usage of AllMatch range matcher
ok {test-number} - data, !AllMatch(Contains(0) && Contains(1)) for: { { 0, 1, 2, 3, 5 }, { 4, -3, -2, 5, 0 }, { 0, 0, 0, 5, 0 }, { 0, -5, 0, 5, 0 }, { 1, 0, 0, -1, 5 } } not all match ( contains element 0 and contains element 1 )
# Usage of AllMatch range matcher
ok {test-number} - needs_adl, AllMatch( Predicate<int>( []( int elem ) { return elem < 6; } ) ) for: { 1, 2, 3, 4, 5 } all match matches undescribed predicate
# Usage of AllMatch range matcher
ok {test-number} - mocked, allMatch for: { 1, 2, 3, 4, 5 } all match matches undescribed predicate
# Usage of AllMatch range matcher
ok {test-number} - mocked.m_derefed[0] for: true
# Usage of AllMatch range matcher
ok {test-number} - mocked.m_derefed[1] for: true
# Usage of AllMatch range matcher
ok {test-number} - mocked.m_derefed[2] for: true
# Usage of AllMatch range matcher
ok {test-number} - mocked.m_derefed[3] for: true
# Usage of AllMatch range matcher
ok {test-number} - mocked.m_derefed[4] for: true
# Usage of AllMatch range matcher
ok {test-number} - mocked, !allMatch for: { 1, 2, 3, 4, 5 } not all match matches undescribed predicate
# Usage of AllMatch range matcher
ok {test-number} - mocked.m_derefed[0] for: true
# Usage of AllMatch range matcher
ok {test-number} - mocked.m_derefed[1] for: true
# Usage of AllMatch range matcher
ok {test-number} - mocked.m_derefed[2] for: true
# Usage of AllMatch range matcher
ok {test-number} - !(mocked.m_derefed[3]) for: !false
# Usage of AllMatch range matcher
ok {test-number} - !(mocked.m_derefed[4]) for: !false
# Usage of AllTrue range matcher
ok {test-number} - data, AllTrue() for: { true, true, true, true, true } contains only true
# Usage of AllTrue range matcher
ok {test-number} - data, AllTrue() for: {  } contains only true
# Usage of AllTrue range matcher
ok {test-number} - data, !AllTrue() for: { true, true, false, true, true } not contains only true
# Usage of AllTrue range matcher
ok {test-number} - data, !AllTrue() for: { false, false, false, false, false } not contains only true
# Usage of AllTrue range matcher
ok {test-number} - data, AllTrue() for: { true, true, true, true, true } contains only true
# Usage of AllTrue range matcher
ok {test-number} - data, !AllTrue() for: { true, true, false, true, true } not contains only true
# Usage of AllTrue range matcher
ok {test-number} - data, !AllTrue() for: { false, false, false, false, false } not contains only true
# Usage of AllTrue range matcher
ok {test-number} - mocked, AllTrue() for: { true, true, true, true, true } contains only true
# Usage of AllTrue range matcher
ok {test-number} - mocked.m_derefed[0] for: true
# Usage of AllTrue range matcher
ok {test-number} - mocked.m_derefed[1] for: true
# Usage of AllTrue range matcher
ok {test-number} - mocked.m_derefed[2] for: true
# Usage of AllTrue range matcher
ok {test-number} - mocked.m_derefed[3] for: true
# Usage of AllTrue range matcher
ok {test-number} - mocked.m_derefed[4] for: true
# Usage of AllTrue range matcher
ok {test-number} - mocked, !AllTrue() for: { true, true, false, true, true } not contains only true
# Usage of AllTrue range matcher
ok {test-number} - mocked.m_derefed[0] for: true
# Usage of AllTrue range matcher
ok {test-number} - mocked.m_derefed[1] for: true
# Usage of AllTrue range matcher
ok {test-number} - mocked.m_derefed[2] for: true
# Usage of AllTrue range matcher
ok {test-number} - !(mocked.m_derefed[3]) for: !false
# Usage of AllTrue range matcher
ok {test-number} - !(mocked.m_derefed[4]) for: !false
# Usage of AnyMatch range matcher
ok {test-number} - data, AnyMatch(SizeIs(5)) for: { { 0, 1, 2, 3, 5 }, { 4, -3, -2, 5, 0 }, { 0, 0, 0, 5, 0 }, { 0, -5, 0, 5, 0 }, { 1, 0, 0, -1, 5 } } any match has size == 5
# Usage of AnyMatch range matcher
ok {test-number} - data, !AnyMatch(Contains(0) && Contains(10)) for: { { 0, 1, 2, 3, 5 }, { 4, -3, -2, 5, 0 }, { 0, 0, 0, 5, 0 }, { 0, -5, 0, 5, 0 }, { 1, 0, 0, -1, 5 } } not any match ( contains element 0 and contains element 10 )
# Usage of AnyMatch range matcher
ok {test-number} - needs_adl, AnyMatch( Predicate<int>( []( int elem ) { return elem < 3; } ) ) for: { 1, 2, 3, 4, 5 } any match matches undescribed predicate
# Usage of AnyMatch range matcher
ok {test-number} - mocked, !anyMatch for: { 1, 2, 3, 4, 5 } not any match matches undescribed predicate
# Usage of AnyMatch range matcher
ok {test-number} - mocked.m_derefed[0] for: true
# Usage of AnyMatch range matcher
ok {test-number} - mocked.m_derefed[1] for: true
# Usage of AnyMatch range matcher
ok {test-number} - mocked.m_derefed[2] for: true
# Usage of AnyMatch range matcher
ok {test-number} - mocked.m_derefed[3] for: true
# Usage of AnyMatch range matcher
ok {test-number} - mocked.m_derefed[4] for: true
# Usage of AnyMatch range matcher
ok {test-number} - mocked, anyMatch for: { 1, 2, 3, 4, 5 } any match matches undescribed predicate
# Usage of AnyMatch range matcher
ok {test-number} - mocked.m_derefed[0] for: true
# Usage of AnyMatch range matcher
ok {test-number} - !(mocked.m_derefed[1]) for: !false
# Usage of AnyMatch range matcher
ok {test-number} - !(mocked.m_derefed[2]) for: !false
# Usage of AnyMatch range matcher
ok {test-number} - !(mocked.m_derefed[3]) for: !false
# Usage of AnyMatch range matcher
ok {test-number} - !(mocked.m_derefed[4]) for: !false
# Usage of AnyTrue range matcher
ok {test-number} - data, AnyTrue() for: { true, true, true, true, true } contains at least one true
# Usage of AnyTrue range matcher
ok {test-number} - data, !AnyTrue() for: {  } not contains at least one true
# Usage of AnyTrue range matcher
ok {test-number} - data, AnyTrue() for: { false, false, true, false, false } contains at least one true
# Usage of AnyTrue range matcher
ok {test-number} - data, !AnyTrue() for: { false, false, false, false, false } not contains at least one true
# Usage of AnyTrue range matcher
ok {test-number} - data, AnyTrue() for: { true, true, true, true, true } contains at least one true
# Usage of AnyTrue range matcher
ok {test-number} - data, AnyTrue() for: { false, false, true, false, false } contains at least one true
# Usage of AnyTrue range matcher
ok {test-number} - data, !AnyTrue() for: { false, false, false, false, false } not contains at least one true
# Usage of AnyTrue range matcher
ok {test-number} - mocked, AnyTrue() for: { false, false, false, false, true } contains at least one true
# Usage of AnyTrue range matcher
ok {test-number} - mocked.m_derefed[0] for: true
# Usage of AnyTrue range matcher
ok {test-number} - mocked.m_derefed[1] for: true
# Usage of AnyTrue range matcher
ok {test-number} - mocked.m_derefed[2] for: true
# Usage of AnyTrue range matcher
ok {test-number} - mocked.m_derefed[3] for: true
# Usage of AnyTrue range matcher
ok {test-number} - mocked.m_derefed[4] for: true
# Usage of AnyTrue range matcher
ok {test-number} - mocked, AnyTrue() for: { false, false, true, true, true } contains at least one true
# Usage of AnyTrue range matcher
ok {test-number} - mocked.m_derefed[0] for: true
# Usage of AnyTrue range matcher
ok {test-number} - mocked.m_derefed[1] for: true
# Usage of AnyTrue range matcher
ok {test-number} - mocked.m_derefed[2] for: true
# Usage of AnyTrue range matcher
ok {test-number} - !(mocked.m_derefed[3]) for: !false
# Usage of AnyTrue range matcher
ok {test-number} - !(mocked.m_derefed[4]) for: !false
# Usage of NoneMatch range matcher
ok {test-number} - data, NoneMatch(SizeIs(6)) for: { { 0, 1, 2, 3, 5 }, { 4, -3, -2, 5, 0 }, { 0, 0, 0, 5, 0 }, { 0, -5, 0, 5, 0 }, { 1, 0, 0, -1, 5 } } none match has size == 6
# Usage of NoneMatch range matcher
ok {test-number} - data, !NoneMatch(Contains(0) && Contains(1)) for: { { 0, 1, 2, 3, 5 }, { 4, -3, -2, 5, 0 }, { 0, 0, 0, 5, 0 }, { 0, -5, 0, 5, 0 }, { 1, 0, 0, -1, 5 } } not none match ( contains element 0 and contains element 1 )
# Usage of NoneMatch range matcher
ok {test-number} - needs_adl, NoneMatch( Predicate<int>( []( int elem ) { return elem > 6; } ) ) for: { 1, 2, 3, 4, 5 } none match matches undescribed predicate
# Usage of NoneMatch range matcher
ok {test-number} - mocked, noneMatch for: { 1, 2, 3, 4, 5 } none match matches undescribed predicate
# Usage of NoneMatch range matcher
ok {test-number} - mocked.m_derefed[0] for: true
# Usage of NoneMatch range matcher
ok {test-number} - mocked.m_derefed[1] for: true
# Usage of NoneMatch range matcher
ok {test-number} - mocked.m_derefed[2] for: true
# Usage of NoneMatch range matcher
ok {test-number} - mocked.m_derefed[3] for: true
# Usage of NoneMatch range matcher
ok {test-number} - mocked.m_derefed[4] for: true
# Usage of NoneMatch range matcher
ok {test-number} - mocked, !noneMatch for: { 1, 2, 3, 4, 5 } not none match matches undescribed predicate
# Usage of NoneMatch range matcher
ok {test-number} - mocked.m_derefed[0] for: true
# Usage of NoneMatch range matcher
ok {test-number} - !(mocked.m_derefed[1]) for: !false
# Usage of NoneMatch range matcher
ok {test-number} - !(mocked.m_derefed[2]) for: !false
# Usage of NoneMatch range matcher
ok {test-number} - !(mocked.m_derefed[3]) for: !false
# Usage of NoneMatch range matcher
ok {test-number} - !(mocked.m_derefed[4]) for: !false
# Usage of NoneTrue range matcher
ok {test-number} - data, !NoneTrue() for: { true, true, true, true, true } not contains no true
# Usage of NoneTrue range matcher
ok {test-number} - data, NoneTrue() for: {  } contains no true
# Usage of NoneTrue range matcher
ok {test-number} - data, !NoneTrue() for: { false, false, true, false, false } not contains no true
# Usage of NoneTrue range matcher
ok {test-number} - data, NoneTrue() for: { false, false, false, false, false } contains no true
# Usage of NoneTrue range matcher
ok {test-number} - data, !NoneTrue() for: { true, true, true, true, true } not contains no true
# Usage of NoneTrue range matcher
ok {test-number} - data, !NoneTrue() for: { false, false, true, false, false } not contains no true
# Usage of NoneTrue range matcher
ok {test-number} - data, NoneTrue() for: { false, false, false, false, false } contains no true
# Usage of NoneTrue range matcher
ok {test-number} - mocked, NoneTrue() for: { false, false, false, false, false } contains no true
# Usage of NoneTrue range matcher
ok {test-number} - mocked.m_derefed[0] for: true
# Usage of NoneTrue range matcher
ok {test-number} - mocked.m_derefed[1] for: true
# Usage of NoneTrue range matcher
ok {test-number} - mocked.m_derefed[2] for: true
# Usage of NoneTrue range matcher
ok {test-number} - mocked.m_derefed[3] for: true
# Usage of NoneTrue range matcher
ok {test-number} - mocked.m_derefed[4] for: true
# Usage of NoneTrue range matcher
ok {test-number} - mocked, !NoneTrue() for: { false, false, true, true, true } not contains no true
# Usage of NoneTrue range matcher
ok {test-number} - mocked.m_derefed[0] for: true
# Usage of NoneTrue range matcher
ok {test-number} - mocked.m_derefed[1] for: true
# Usage of NoneTrue range matcher
ok {test-number} - mocked.m_derefed[2] for: true
# Usage of NoneTrue range matcher
ok {test-number} - !(mocked.m_derefed[3]) for: !false
# Usage of NoneTrue range matcher
ok {test-number} - !(mocked.m_derefed[4]) for: !false
# Usage of RangeEquals range matcher
ok {test-number} - empty_vector, RangeEquals( empty_vector ) for: {  } elements are {  }
# Usage of RangeEquals range matcher
ok {test-number} - empty_vector, !RangeEquals( non_empty_vector ) for: {  } not elements are { 1 }
# Usage of RangeEquals range matcher
ok {test-number} - non_empty_vector, !RangeEquals( empty_vector ) for: { 1 } not elements are {  }
# Usage of RangeEquals range matcher
ok {test-number} - non_empty_array, RangeEquals( non_empty_array ) for: { 1 } elements are { 1 }
# Usage of RangeEquals range matcher
ok {test-number} - array_a, RangeEquals( array_a ) for: { 1, 2, 3 } elements are { 1, 2, 3 }
# Usage of RangeEquals range matcher
ok {test-number} - array_a, !RangeEquals( array_b ) for: { 1, 2, 3 } not elements are { 2, 2, 3 }
# Usage of RangeEquals range matcher
ok {test-number} - array_a, !RangeEquals( array_c ) for: { 1, 2, 3 } not elements are { 1, 2, 2 }
# Usage of RangeEquals range matcher
ok {test-number} - vector_a, !RangeEquals( vector_b ) for: { 1, 2, 3 } not elements are { 1, 2, 3, 4 }
# Usage of RangeEquals range matcher
ok {test-number} - vector_a, RangeEquals( vector_a_plus_1, close_enough ) for: { 1, 2, 3 } elements are { 2, 3, 4 }
# Usage of RangeEquals range matcher
ok {test-number} - vector_a, !RangeEquals( vector_b, close_enough ) for: { 1, 2, 3 } not elements are { 3, 3, 4 }
# Usage of RangeEquals range matcher
ok {test-number} - needs_adl1, RangeEquals( needs_adl2 ) for: { 1, 2, 3, 4, 5 } elements are { 1, 2, 3, 4, 5 }
# Usage of RangeEquals range matcher
ok {test-number} - needs_adl1, RangeEquals( needs_adl3, []( int l, int r ) { return l + 1 == r; } ) for: { 1, 2, 3, 4, 5 } elements are { 2, 3, 4, 5, 6 }
# Usage of RangeEquals range matcher
ok {test-number} - mocked1, !RangeEquals( arr ) for: { 1, 2, 3, 4 } not elements are { 1, 2, 4, 4 }
# Usage of RangeEquals range matcher
ok {test-number} - mocked1.m_derefed[0] for: true
# Usage of RangeEquals range matcher
ok {test-number} - mocked1.m_derefed[1] for: true
# Usage of RangeEquals range matcher
ok {test-number} - mocked1.m_derefed[2] for: true
# Usage of RangeEquals range matcher
ok {test-number} - !(mocked1.m_derefed[3]) for: !false
# Usage of RangeEquals range matcher
ok {test-number} - mocked1, RangeEquals( arr ) for: { 1, 2, 3, 4 } elements are { 1, 2, 3, 4 }
# Usage of RangeEquals range matcher
ok {test-number} - mocked1.m_derefed[0] for: true
# Usage of RangeEquals range matcher
ok {test-number} - mocked1.m_derefed[1] for: true
# Usage of RangeEquals range matcher
ok {test-number} - mocked1.m_derefed[2] for: true
# Usage of RangeEquals range matcher
ok {test-number} - mocked1.m_derefed[3] for: true
# Usage of UnorderedRangeEquals range matcher
ok {test-number} - empty_vector, UnorderedRangeEquals( empty_vector ) for: {  } unordered elements are {  }
# Usage of UnorderedRangeEquals range matcher
ok {test-number} - empty_vector, !UnorderedRangeEquals( non_empty_vector ) for: {  } not unordered elements are { 1 }
# Usage of UnorderedRangeEquals range matcher
ok {test-number} - non_empty_vector, !UnorderedRangeEquals( empty_vector ) for: { 1 } not unordered elements are {  }
# Usage of UnorderedRangeEquals range matcher
ok {test-number} - non_empty_array, UnorderedRangeEquals( non_empty_array ) for: { 1 } unordered elements are { 1 }
# Usage of UnorderedRangeEquals range matcher
ok {test-number} - array_a, UnorderedRangeEquals( array_a ) for: { 1, 2, 3 } unordered elements are { 1, 2, 3 }
# Usage of UnorderedRangeEquals range matcher
ok {test-number} - array_a, !UnorderedRangeEquals( array_b ) for: { 1, 2, 3 } not unordered elements are { 2, 2, 3 }
# Usage of UnorderedRangeEquals range matcher
ok {test-number} - vector_a, !UnorderedRangeEquals( vector_b ) for: { 1, 2, 3 } not unordered elements are { 1, 2, 3, 4 }
# Usage of UnorderedRangeEquals range matcher
ok {test-number} - vector_a, UnorderedRangeEquals( vector_a_plus_1, close_enough ) for: { 1, 10, 20 } unordered elements are { 11, 21, 2 }
# Usage of UnorderedRangeEquals range matcher
ok {test-number} - vector_a, !UnorderedRangeEquals( vector_b, close_enough ) for: { 1, 10, 21 } not unordered elements are { 11, 21, 3 }
# Usage of UnorderedRangeEquals range matcher
ok {test-number} - needs_adl1, UnorderedRangeEquals( needs_adl2 ) for: { 1, 2, 3, 4, 5 } unordered elements are { 1, 2, 3, 4, 5 }
# Usage of the SizeIs range matcher
ok {test-number} - empty_vec, SizeIs(0) for: {  } has size == 0
# Usage of the SizeIs range matcher
ok {test-number} - empty_vec, !SizeIs(2) for: {  } not has size == 2
# Usage of the SizeIs range matcher
ok {test-number} - empty_vec, SizeIs(Lt(2)) for: {  } size matches is less than 2
# Usage of the SizeIs range matcher
ok {test-number} - arr, SizeIs(2) for: { 0, 0 } has size == 2
# Usage of the SizeIs range matcher
ok {test-number} - arr, SizeIs( Lt(3)) for: { 0, 0 } size matches is less than 3
# Usage of the SizeIs range matcher
ok {test-number} - arr, !SizeIs(!Lt(3)) for: { 0, 0 } not size matches not is less than 3
# Usage of the SizeIs range matcher
ok {test-number} - map, SizeIs(3) for: { {?}, {?}, {?} } has size == 3
# Usage of the SizeIs range matcher
ok {test-number} - unrelated::ADL_size{}, SizeIs(12) for: {?} has size == 12
# Usage of the SizeIs range matcher
ok {test-number} - has_size{}, SizeIs(13) for: {?} has size == 13
# Use a custom approx
ok {test-number} - d == approx( 1.23 ) for: 1.23 == Approx( 1.23 )
# Use a custom approx
ok {test-number} - d == approx( 1.22 ) for: 1.23 == Approx( 1.22 )
# Use a custom approx
ok {test-number} - d == approx( 1.24 ) for: 1.23 == Approx( 1.24 )
# Use a custom approx
ok {test-number} - d != approx( 1.25 ) for: 1.23 != Approx( 1.25 )
# Use a custom approx
ok {test-number} - approx( d ) == 1.23 for: Approx( 1.23 ) == 1.23
# Use a custom approx
ok {test-number} - approx( d ) == 1.22 for: Approx( 1.23 ) == 1.22
# Use a custom approx
ok {test-number} - approx( d ) == 1.24 for: Approx( 1.23 ) == 1.24
# Use a custom approx
ok {test-number} - approx( d ) != 1.25 for: Approx( 1.23 ) != 1.25
# Variadic macros
ok {test-number} - with 1 message: 'no assertions'
# Vector Approx matcher
ok {test-number} - empty, Approx( empty ) for: {  } is approx: {  }
# Vector Approx matcher
ok {test-number} - v1, Approx( v1 ) for: { 1.0, 2.0, 3.0 } is approx: { 1.0, 2.0, 3.0 }
# Vector Approx matcher
ok {test-number} - v1, Approx<double>( { 1., 2., 3. } ) for: { 1.0, 2.0, 3.0 } is approx: { 1.0, 2.0, 3.0 }
# Vector Approx matcher
ok {test-number} - v1, !Approx( temp ) for: { 1.0, 2.0, 3.0 } not is approx: { 1.0, 2.0, 3.0, 4.0 }
# Vector Approx matcher
ok {test-number} - v1, !Approx( v2 ) for: { 1.0, 2.0, 3.0 } not is approx: { 1.5, 2.5, 3.5 }
# Vector Approx matcher
ok {test-number} - v1, Approx( v2 ).margin( 0.5 ) for: { 1.0, 2.0, 3.0 } is approx: { 1.5, 2.5, 3.5 }
# Vector Approx matcher
ok {test-number} - v1, Approx( v2 ).epsilon( 0.5 ) for: { 1.0, 2.0, 3.0 } is approx: { 1.5, 2.5, 3.5 }
# Vector Approx matcher
ok {test-number} - v1, Approx( v2 ).epsilon( 0.1 ).scale( 500 ) for: { 1.0, 2.0, 3.0 } is approx: { 1.5, 2.5, 3.5 }
# Vector Approx matcher -- failing
not ok {test-number} - empty, Approx( t1 ) for: {  } is approx: { 1.0, 2.0 }
# Vector Approx matcher -- failing
not ok {test-number} - v1, Approx( v2 ) for: { 2.0, 4.0, 6.0 } is approx: { 1.0, 3.0, 5.0 }
# Vector matchers
ok {test-number} - v, VectorContains( 1 ) for: { 1, 2, 3 } Contains: 1
# Vector matchers
ok {test-number} - v, VectorContains( 2 ) for: { 1, 2, 3 } Contains: 2
# Vector matchers
ok {test-number} - v5, ( VectorContains<int, CustomAllocator<int>>( 2 ) ) for: { 1, 2, 3 } Contains: 2
# Vector matchers
ok {test-number} - v, Contains( v2 ) for: { 1, 2, 3 } Contains: { 1, 2 }
# Vector matchers
ok {test-number} - v, Contains<int>( { 1, 2 } ) for: { 1, 2, 3 } Contains: { 1, 2 }
# Vector matchers
ok {test-number} - v5, ( Contains<int, std::allocator<int>, CustomAllocator<int>>( v2 ) ) for: { 1, 2, 3 } Contains: { 1, 2 }
# Vector matchers
ok {test-number} - v, Contains( v2 ) for: { 1, 2, 3 } Contains: { 1, 2, 3 }
# Vector matchers
ok {test-number} - v, Contains( empty ) for: { 1, 2, 3 } Contains: {  }
# Vector matchers
ok {test-number} - empty, Contains( empty ) for: {  } Contains: {  }
# Vector matchers
ok {test-number} - v5, ( Contains<int, std::allocator<int>, CustomAllocator<int>>( v2 ) ) for: { 1, 2, 3 } Contains: { 1, 2, 3 }
# Vector matchers
ok {test-number} - v5, Contains( v6 ) for: { 1, 2, 3 } Contains: { 1, 2 }
# Vector matchers
ok {test-number} - v, VectorContains( 1 ) && VectorContains( 2 ) for: { 1, 2, 3 } ( Contains: 1 and Contains: 2 )
# Vector matchers
ok {test-number} - v, Equals( v ) for: { 1, 2, 3 } Equals: { 1, 2, 3 }
# Vector matchers
ok {test-number} - empty, Equals( empty ) for: {  } Equals: {  }
# Vector matchers
ok {test-number} - v, Equals<int>( { 1, 2, 3 } ) for: { 1, 2, 3 } Equals: { 1, 2, 3 }
# Vector matchers
ok {test-number} - v, Equals( v2 ) for: { 1, 2, 3 } Equals: { 1, 2, 3 }
# Vector matchers
ok {test-number} - v5, ( Equals<int, std::allocator<int>, CustomAllocator<int>>( v2 ) ) for: { 1, 2, 3 } Equals: { 1, 2, 3 }
# Vector matchers
ok {test-number} - v5, Equals( v6 ) for: { 1, 2, 3 } Equals: { 1, 2, 3 }
# Vector matchers
ok {test-number} - v, UnorderedEquals( v ) for: { 1, 2, 3 } UnorderedEquals: { 1, 2, 3 }
# Vector matchers
ok {test-number} - v, UnorderedEquals<int>( { 3, 2, 1 } ) for: { 1, 2, 3 } UnorderedEquals: { 3, 2, 1 }
# Vector matchers
ok {test-number} - empty, UnorderedEquals( empty ) for: {  } UnorderedEquals: {  }
# Vector matchers
ok {test-number} - permuted, UnorderedEquals( v ) for: { 1, 3, 2 } UnorderedEquals: { 1, 2, 3 }
# Vector matchers
ok {test-number} - permuted, UnorderedEquals( v ) for: { 2, 3, 1 } UnorderedEquals: { 1, 2, 3 }
# Vector matchers
ok {test-number} - v5, ( UnorderedEquals<int, std::allocator<int>, CustomAllocator<int>>( permuted ) ) for: { 1, 2, 3 } UnorderedEquals: { 2, 3, 1 }
# Vector matchers
ok {test-number} - v5_permuted, UnorderedEquals( v5 ) for: { 1, 3, 2 } UnorderedEquals: { 1, 2, 3 }
# Vector matchers that fail
not ok {test-number} - v, VectorContains( -1 ) for: { 1, 2, 3 } Contains: -1
# Vector matchers that fail
not ok {test-number} - empty, VectorContains( 1 ) for: {  } Contains: 1
# Vector matchers that fail
not ok {test-number} - empty, Contains( v ) for: {  } Contains: { 1, 2, 3 }
# Vector matchers that fail
not ok {test-number} - v, Contains( v2 ) for: { 1, 2, 3 } Contains: { 1, 2, 4 }
# Vector matchers that fail
not ok {test-number} - v, Equals( v2 ) for: { 1, 2, 3 } Equals: { 1, 2 }
# Vector matchers that fail
not ok {test-number} - v2, Equals( v ) for: { 1, 2 } Equals: { 1, 2, 3 }
# Vector matchers that fail
not ok {test-number} - empty, Equals( v ) for: {  } Equals: { 1, 2, 3 }
# Vector matchers that fail
not ok {test-number} - v, Equals( empty ) for: { 1, 2, 3 } Equals: {  }
# Vector matchers that fail
not ok {test-number} - v, UnorderedEquals( empty ) for: { 1, 2, 3 } UnorderedEquals: {  }
# Vector matchers that fail
not ok {test-number} - empty, UnorderedEquals( v ) for: {  } UnorderedEquals: { 1, 2, 3 }
# Vector matchers that fail
not ok {test-number} - permuted, UnorderedEquals( v ) for: { 1, 3 } UnorderedEquals: { 1, 2, 3 }
# Vector matchers that fail
not ok {test-number} - permuted, UnorderedEquals( v ) for: { 3, 1 } UnorderedEquals: { 1, 2, 3 }
# When checked exceptions are thrown they can be expected or unexpected
ok {test-number} - thisThrows(), std::domain_error
# When checked exceptions are thrown they can be expected or unexpected
ok {test-number} - thisDoesntThrow()
# When checked exceptions are thrown they can be expected or unexpected
ok {test-number} - thisThrows()
# When unchecked exceptions are thrown directly they are always failures
not ok {test-number} - unexpected exception with message: 'unexpected exception'
# When unchecked exceptions are thrown during a CHECK the test should continue
not ok {test-number} - unexpected exception with message: 'expected exception'; expression was: thisThrows() == 0
# When unchecked exceptions are thrown during a REQUIRE the test should abort fail
not ok {test-number} - unexpected exception with message: 'expected exception'; expression was: thisThrows() == 0
# When unchecked exceptions are thrown from functions they are always failures
not ok {test-number} - unexpected exception with message: 'expected exception'; expression was: thisThrows() == 0
# When unchecked exceptions are thrown from sections they are always failures
not ok {test-number} - unexpected exception with message: 'unexpected exception'
# X/level/0/a
ok {test-number} -
# X/level/0/b
ok {test-number} -
# X/level/1/a
ok {test-number} -
# X/level/1/b
ok {test-number} -
# XmlEncode
ok {test-number} - encode( "normal string" ) == "normal string" for: "normal string" == "normal string"
# XmlEncode
ok {test-number} - encode( "" ) == "" for: "" == ""
# XmlEncode
ok {test-number} - encode( "smith & jones" ) == "smith &amp; jones" for: "smith &amp; jones" == "smith &amp; jones"
# XmlEncode
ok {test-number} - encode( "smith < jones" ) == "smith &lt; jones" for: "smith &lt; jones" == "smith &lt; jones"
# XmlEncode
ok {test-number} - encode( "smith > jones" ) == "smith > jones" for: "smith > jones" == "smith > jones"
# XmlEncode
ok {test-number} - encode( "smith ]]> jones" ) == "smith ]]&gt; jones" for: "smith ]]&gt; jones" == "smith ]]&gt; jones"
# XmlEncode
ok {test-number} - encode( stringWithQuotes ) == stringWithQuotes for: "don't "quote" me on that" == "don't "quote" me on that"
# XmlEncode
ok {test-number} - encode( stringWithQuotes, Catch::XmlEncode::ForAttributes ) == "don't &quot;quote&quot; me on that" for: "don't &quot;quote&quot; me on that" == "don't &quot;quote&quot; me on that"
# XmlEncode
ok {test-number} - encode( "[\x01]" ) == "[\\x01]" for: "[\x01]" == "[\x01]"
# XmlEncode
ok {test-number} - encode( "[\x7F]" ) == "[\\x7F]" for: "[\x7F]" == "[\x7F]"
# XmlWriter writes boolean attributes as true/false
ok {test-number} - stream.str(), ContainsSubstring(R"(attr1="true")") && ContainsSubstring(R"(attr2="false")") for: "<?xml version="1.0" encoding="UTF-8"?> <Element1 attr1="true" attr2="false"/> " ( contains: "attr1="true"" and contains: "attr2="false"" )
# a succeeding test can still be skipped
ok {test-number} -
# a succeeding test can still be skipped
ok {test-number} -  # SKIP
# analyse no analysis
ok {test-number} - analysis.mean.point.count() == 23 for: 23.0 == 23
# analyse no analysis
ok {test-number} - analysis.mean.lower_bound.count() == 23 for: 23.0 == 23
# analyse no analysis
ok {test-number} - analysis.mean.upper_bound.count() == 23 for: 23.0 == 23
# analyse no analysis
ok {test-number} - analysis.standard_deviation.point.count() == 0 for: 0.0 == 0
# analyse no analysis
ok {test-number} - analysis.standard_deviation.lower_bound.count() == 0 for: 0.0 == 0
# analyse no analysis
ok {test-number} - analysis.standard_deviation.upper_bound.count() == 0 for: 0.0 == 0
# analyse no analysis
ok {test-number} - analysis.outliers.total() == 0 for: 0 == 0
# analyse no analysis
ok {test-number} - analysis.outliers.low_mild == 0 for: 0 == 0
# analyse no analysis
ok {test-number} - analysis.outliers.low_severe == 0 for: 0 == 0
# analyse no analysis
ok {test-number} - analysis.outliers.high_mild == 0 for: 0 == 0
# analyse no analysis
ok {test-number} - analysis.outliers.high_severe == 0 for: 0 == 0
# analyse no analysis
ok {test-number} - analysis.outliers.samples_seen == 0 for: 0 == 0
# analyse no analysis
ok {test-number} - analysis.outlier_variance == 0 for: 0.0 == 0
# array<int, N> -> toString
ok {test-number} - Catch::Detail::stringify( empty ) == "{  }" for: "{  }" == "{  }"
# array<int, N> -> toString
ok {test-number} - Catch::Detail::stringify( oneValue ) == "{ 42 }" for: "{ 42 }" == "{ 42 }"
# array<int, N> -> toString
ok {test-number} - Catch::Detail::stringify( twoValues ) == "{ 42, 250 }" for: "{ 42, 250 }" == "{ 42, 250 }"
# benchmark function call
ok {test-number} - model.started == 1 for: 1 == 1
# benchmark function call
ok {test-number} - model.finished == 0 for: 0 == 0
# benchmark function call
ok {test-number} - model.started == 1 for: 1 == 1
# benchmark function call
ok {test-number} - model.finished == 1 for: 1 == 1
# benchmark function call
ok {test-number} - called == 1 for: 1 == 1
# benchmark function call
ok {test-number} - model.started == 0 for: 0 == 0
# benchmark function call
ok {test-number} - model.finished == 0 for: 0 == 0
# benchmark function call
ok {test-number} - model.started == 0 for: 0 == 0
# benchmark function call
ok {test-number} - model.finished == 0 for: 0 == 0
# benchmark function call
ok {test-number} - called == 1 for: 1 == 1
# boolean member
ok {test-number} - obj.prop != 0 for: 0x<hex digits> != 0
# checkedElse
ok {test-number} - flag for: true
# checkedElse
ok {test-number} - testCheckedElse( true ) for: true
# checkedElse, failing
ok {test-number} - flag for: false  # TODO
# checkedElse, failing
not ok {test-number} - testCheckedElse( false ) for: false
# checkedIf
ok {test-number} - flag for: true
# checkedIf
ok {test-number} - testCheckedIf( true ) for: true
# checkedIf, failing
ok {test-number} - flag for: false  # TODO
# checkedIf, failing
not ok {test-number} - testCheckedIf( false ) for: false
# classify_outliers
ok {test-number} - o.samples_seen == static_cast<int>(x.size()) for: 6 == 6
# classify_outliers
ok {test-number} - o.low_severe == los for: 0 == 0
# classify_outliers
ok {test-number} - o.low_mild == lom for: 0 == 0
# classify_outliers
ok {test-number} - o.high_mild == him for: 0 == 0
# classify_outliers
ok {test-number} - o.high_severe == his for: 0 == 0
# classify_outliers
ok {test-number} - o.total() == los + lom + him + his for: 0 == 0
# classify_outliers
ok {test-number} - o.samples_seen == static_cast<int>(x.size()) for: 6 == 6
# classify_outliers
ok {test-number} - o.low_severe == los for: 1 == 1
# classify_outliers
ok {test-number} - o.low_mild == lom for: 0 == 0
# classify_outliers
ok {test-number} - o.high_mild == him for: 0 == 0
# classify_outliers
ok {test-number} - o.high_severe == his for: 0 == 0
# classify_outliers
ok {test-number} - o.total() == los + lom + him + his for: 1 == 1
# classify_outliers
ok {test-number} - o.samples_seen == static_cast<int>(x.size()) for: 6 == 6
# classify_outliers
ok {test-number} - o.low_severe == los for: 0 == 0
# classify_outliers
ok {test-number} - o.low_mild == lom for: 1 == 1
# classify_outliers
ok {test-number} - o.high_mild == him for: 0 == 0
# classify_outliers
ok {test-number} - o.high_severe == his for: 0 == 0
# classify_outliers
ok {test-number} - o.total() == los + lom + him + his for: 1 == 1
# classify_outliers
ok {test-number} - o.samples_seen == static_cast<int>(x.size()) for: 6 == 6
# classify_outliers
ok {test-number} - o.low_severe == los for: 0 == 0
# classify_outliers
ok {test-number} - o.low_mild == lom for: 0 == 0
# classify_outliers
ok {test-number} - o.high_mild == him for: 1 == 1
# classify_outliers
ok {test-number} - o.high_severe == his for: 0 == 0
# classify_outliers
ok {test-number} - o.total() == los + lom + him + his for: 1 == 1
# classify_outliers
ok {test-number} - o.samples_seen == static_cast<int>(x.size()) for: 6 == 6
# classify_outliers
ok {test-number} - o.low_severe == los for: 0 == 0
# classify_outliers
ok {test-number} - o.low_mild == lom for: 0 == 0
# classify_outliers
ok {test-number} - o.high_mild == him for: 0 == 0
# classify_outliers
ok {test-number} - o.high_severe == his for: 1 == 1
# classify_outliers
ok {test-number} - o.total() == los + lom + him + his for: 1 == 1
# classify_outliers
ok {test-number} - o.samples_seen == static_cast<int>(x.size()) for: 6 == 6
# classify_outliers
ok {test-number} - o.low_severe == los for: 1 == 1
# classify_outliers
ok {test-number} - o.low_mild == lom for: 0 == 0
# classify_outliers
ok {test-number} - o.high_mild == him for: 1 == 1
# classify_outliers
ok {test-number} - o.high_severe == his for: 0 == 0
# classify_outliers
ok {test-number} - o.total() == los + lom + him + his for: 2 == 2
# comparisons between const int variables
ok {test-number} - unsigned_char_var == 1 for: 1 == 1
# comparisons between const int variables
ok {test-number} - unsigned_short_var == 1 for: 1 == 1
# comparisons between const int variables
ok {test-number} - unsigned_int_var == 1 for: 1 == 1
# comparisons between const int variables
ok {test-number} - unsigned_long_var == 1 for: 1 == 1
# comparisons between int variables
ok {test-number} - long_var == unsigned_char_var for: 1 == 1
# comparisons between int variables
ok {test-number} - long_var == unsigned_short_var for: 1 == 1
# comparisons between int variables
ok {test-number} - long_var == unsigned_int_var for: 1 == 1
# comparisons between int variables
ok {test-number} - long_var == unsigned_long_var for: 1 == 1
# convertToBits
ok {test-number} - convertToBits( 0.f ) == 0 for: 0 == 0
# convertToBits
ok {test-number} - convertToBits( -0.f ) == ( 1ULL << 31 ) for: 2147483648 (0x<hex digits>) == 2147483648 (0x<hex digits>)
# convertToBits
ok {test-number} - convertToBits( 0. ) == 0 for: 0 == 0
# convertToBits
ok {test-number} - convertToBits( -0. ) == ( 1ULL << 63 ) for: 9223372036854775808 (0x<hex digits>) == 9223372036854775808 (0x<hex digits>)
# convertToBits
ok {test-number} - convertToBits( std::numeric_limits<float>::denorm_min() ) == 1 for: 1 == 1
# convertToBits
ok {test-number} - convertToBits( std::numeric_limits<double>::denorm_min() ) == 1 for: 1 == 1
# dynamic skipping works with generators
ok {test-number} -  # SKIP 'skipping because answer = 41'
# dynamic skipping works with generators
ok {test-number} -
# dynamic skipping works with generators
ok {test-number} -  # SKIP 'skipping because answer = 43'
# empty tags are not allowed
ok {test-number} - Catch::TestCaseInfo("", { "test with an empty tag", "[]" }, dummySourceLineInfo)
# erfc_inv
ok {test-number} - erfc_inv(1.103560) == Approx(-0.09203687623843015) for: -0.0920368762 == Approx( -0.0920368762 )
# erfc_inv
ok {test-number} - erfc_inv(1.067400) == Approx(-0.05980291115763361) for: -0.0598029112 == Approx( -0.0598029112 )
# erfc_inv
ok {test-number} - erfc_inv(0.050000) == Approx(1.38590382434967796) for: 1.3859038243 == Approx( 1.3859038243 )
# estimate_clock_resolution
ok {test-number} - res.mean.count() == rate for: 2000.0 == 2000 (0x<hex digits>)
# estimate_clock_resolution
ok {test-number} - res.outliers.total() == 0 for: 0 == 0
# even more nested SECTION tests
ok {test-number} -
# even more nested SECTION tests
ok {test-number} -
# even more nested SECTION tests
ok {test-number} -
# failed assertions before SKIP cause test case to fail
not ok {test-number} - 3 == 4
# failed assertions before SKIP cause test case to fail
ok {test-number} -  # SKIP
# failing for some generator values causes entire test case to fail
not ok {test-number} - explicitly
# failing for some generator values causes entire test case to fail
ok {test-number} -  # SKIP
# failing for some generator values causes entire test case to fail
not ok {test-number} - explicitly
# failing for some generator values causes entire test case to fail
ok {test-number} -  # SKIP
# failing in some unskipped sections causes entire test case to fail
ok {test-number} -  # SKIP
# failing in some unskipped sections causes entire test case to fail
not ok {test-number} - explicitly
# is_unary_function
ok {test-number} - with 1 message: 'Catch::Clara::Detail::is_unary_function<decltype(unary1)>::value'
# is_unary_function
ok {test-number} - with 1 message: 'Catch::Clara::Detail::is_unary_function<decltype(unary2)>::value'
# is_unary_function
ok {test-number} - with 1 message: 'Catch::Clara::Detail::is_unary_function<decltype(unary3)>::value'
# is_unary_function
ok {test-number} - with 1 message: 'Catch::Clara::Detail::is_unary_function<decltype(unary4)>::value'
# is_unary_function
ok {test-number} - with 1 message: 'Catch::Clara::Detail::is_unary_function<decltype(unary5)>::value'
# is_unary_function
ok {test-number} - with 1 message: 'Catch::Clara::Detail::is_unary_function<decltype(unary6)>::value'
# is_unary_function
ok {test-number} - with 1 message: '!(Catch::Clara::Detail::is_unary_function<decltype(binary1)>::value)'
# is_unary_function
ok {test-number} - with 1 message: '!(Catch::Clara::Detail::is_unary_function<decltype(binary2)>::value)'
# is_unary_function
ok {test-number} - with 1 message: '!(Catch::Clara::Detail::is_unary_function<decltype(nullary1)>::value)'
# is_unary_function
ok {test-number} - with 1 message: '!(Catch::Clara::Detail::is_unary_function<decltype(nullary2)>::value)'
# is_unary_function
ok {test-number} - with 1 message: '!(Catch::Clara::Detail::is_unary_function<int>::value)'
# is_unary_function
ok {test-number} - with 1 message: '!(Catch::Clara::Detail::is_unary_function<std::string const&>::value)'
# just failure
not ok {test-number} - explicitly with 1 message: 'Previous info should not be seen'
# just failure after unscoped info
not ok {test-number} - explicitly with 1 message: 'previous unscoped info SHOULD not be seen'
# long long
ok {test-number} - l == std::numeric_limits<long long>::max() for: 9223372036854775807 (0x<hex digits>) == 9223372036854775807 (0x<hex digits>)
# looped SECTION tests
not ok {test-number} - b > a for: 0 > 1
# looped SECTION tests
not ok {test-number} - b > a for: 1 > 1
# looped SECTION tests
ok {test-number} - b > a for: 2 > 1
# looped SECTION tests
ok {test-number} - b > a for: 3 > 1
# looped SECTION tests
ok {test-number} - b > a for: 4 > 1
# looped SECTION tests
ok {test-number} - b > a for: 5 > 1
# looped SECTION tests
ok {test-number} - b > a for: 6 > 1
# looped SECTION tests
ok {test-number} - b > a for: 7 > 1
# looped SECTION tests
ok {test-number} - b > a for: 8 > 1
# looped SECTION tests
ok {test-number} - b > a for: 9 > 1
# looped tests
not ok {test-number} - ( fib[i] % 2 ) == 0 for: 1 == 0 with 1 message: 'Testing if fib[0] (1) is even'
# looped tests
not ok {test-number} - ( fib[i] % 2 ) == 0 for: 1 == 0 with 1 message: 'Testing if fib[1] (1) is even'
# looped tests
ok {test-number} - ( fib[i] % 2 ) == 0 for: 0 == 0 with 1 message: 'Testing if fib[2] (2) is even'
# looped tests
not ok {test-number} - ( fib[i] % 2 ) == 0 for: 1 == 0 with 1 message: 'Testing if fib[3] (3) is even'
# looped tests
not ok {test-number} - ( fib[i] % 2 ) == 0 for: 1 == 0 with 1 message: 'Testing if fib[4] (5) is even'
# looped tests
ok {test-number} - ( fib[i] % 2 ) == 0 for: 0 == 0 with 1 message: 'Testing if fib[5] (8) is even'
# looped tests
not ok {test-number} - ( fib[i] % 2 ) == 0 for: 1 == 0 with 1 message: 'Testing if fib[6] (13) is even'
# looped tests
not ok {test-number} - ( fib[i] % 2 ) == 0 for: 1 == 0 with 1 message: 'Testing if fib[7] (21) is even'
# makeStream recognizes %debug stream name
ok {test-number} - Catch::makeStream( "%debug" )
# make_unique reimplementation
ok {test-number} - !(lval.has_moved) for: !false
# make_unique reimplementation
ok {test-number} - rval.has_moved for: true
# make_unique reimplementation
ok {test-number} - *ptr == std::tuple<int, double, int>{1, 2., 3} for: {?} == {?}
# mean
ok {test-number} - m == 19. for: 19.0 == 19.0
# measure
ok {test-number} - x == 17 for: 17 == 17
# measure
ok {test-number} - x == 23 for: 23 == 23
# measure
ok {test-number} - r.elapsed.count() == 42 for: 42 == 42
# measure
ok {test-number} - r.result == 23 for: 23 == 23
# measure
ok {test-number} - r.iterations == 1 for: 1 == 1
# measure
ok {test-number} - s.elapsed.count() == 69 for: 69 == 69
# measure
ok {test-number} - s.result == 17 for: 17 == 17
# measure
ok {test-number} - s.iterations == 1 for: 1 == 1
# mix info, unscoped info and warning
warning {test-number} - 'info' with 2 messages: 'unscoped info' and 'and warn may mix'
# mix info, unscoped info and warning
warning {test-number} - 'info' with 2 messages: 'unscoped info' and 'they are not cleared after warnings'
# more nested SECTION tests
not ok {test-number} - a == b for: 1 == 2
# more nested SECTION tests
ok {test-number} - a != b for: 1 != 2
# more nested SECTION tests
ok {test-number} - a < b for: 1 < 2
# nested SECTION tests
ok {test-number} - a != b for: 1 != 2
# nested SECTION tests
ok {test-number} - b != a for: 2 != 1
# nested SECTION tests
ok {test-number} - a != b for: 1 != 2
# nested sections can be skipped dynamically at runtime
ok {test-number} -  # SKIP
# non streamable - with conv. op
ok {test-number} - s == "7" for: "7" == "7"
# non-copyable objects
ok {test-number} - ti == typeid(int) for: {?} == {?}
# normal_cdf
ok {test-number} - normal_cdf(0.000000) == Approx(0.50000000000000000) for: 0.5 == Approx( 0.5 )
# normal_cdf
ok {test-number} - normal_cdf(1.000000) == Approx(0.84134474606854293) for: 0.8413447461 == Approx( 0.8413447461 )
# normal_cdf
ok {test-number} - normal_cdf(-1.000000) == Approx(0.15865525393145705) for: 0.1586552539 == Approx( 0.1586552539 )
# normal_cdf
ok {test-number} - normal_cdf(2.809729) == Approx(0.99752083845315409) for: 0.9975208385 == Approx( 0.9975208385 )
# normal_cdf
ok {test-number} - normal_cdf(-1.352570) == Approx(0.08809652095066035) for: 0.088096521 == Approx( 0.088096521 )
# normal_quantile
ok {test-number} - normal_quantile(0.551780) == Approx(0.13015979861484198) for: 0.1301597986 == Approx( 0.1301597986 )
# normal_quantile
ok {test-number} - normal_quantile(0.533700) == Approx(0.08457408802851875) for: 0.084574088 == Approx( 0.084574088 )
# normal_quantile
ok {test-number} - normal_quantile(0.025000) == Approx(-1.95996398454005449) for: -1.9599639845 == Approx( -1.9599639845 )
# not allowed
ok {test-number} -
# not prints unscoped info from previous failures
ok {test-number} - true with 1 message: 'this MAY be seen only for the FIRST assertion IF info is printed for passing assertions'
# not prints unscoped info from previous failures
ok {test-number} - true with 1 message: 'this MAY be seen only for the SECOND assertion IF info is printed for passing assertions'
# not prints unscoped info from previous failures
not ok {test-number} - false with 1 message: 'this SHOULD be seen'
# null strings
ok {test-number} - makeString( false ) != static_cast<char*>(0) for: "valid string" != {null string}
# null strings
ok {test-number} - makeString( true ) == static_cast<char*>(0) for: {null string} == {null string}
# null_ptr
ok {test-number} - ptr.get() == 0 for: 0 == 0
# pair<pair<int,const char *,pair<std::string,int> > -> toString
ok {test-number} - ::Catch::Detail::stringify( pair ) == "{ { 42, \"Arthur\" }, { \"Ford\", 24 } }" for: "{ { 42, "Arthur" }, { "Ford", 24 } }" == "{ { 42, "Arthur" }, { "Ford", 24 } }"
# parseEnums
ok {test-number} - parseEnums( "" ), Equals( std::vector<Catch::StringRef>{} ) for: {  } Equals: {  }
# parseEnums
ok {test-number} - parseEnums( "ClassName::EnumName::Value1" ), Equals(std::vector<Catch::StringRef>{"Value1"} ) for: { Value1 } Equals: { Value1 }
# parseEnums
ok {test-number} - parseEnums( "Value1" ), Equals( std::vector<Catch::StringRef>{"Value1"} ) for: { Value1 } Equals: { Value1 }
# parseEnums
ok {test-number} - parseEnums( "EnumName::Value1" ), Equals(std::vector<Catch::StringRef>{"Value1"} ) for: { Value1 } Equals: { Value1 }
# parseEnums
ok {test-number} - parseEnums( "ClassName::EnumName::Value1, ClassName::EnumName::Value2" ), Equals( std::vector<Catch::StringRef>{"Value1", "Value2"} ) for: { Value1, Value2 } Equals: { Value1, Value2 }
# parseEnums
ok {test-number} - parseEnums( "ClassName::EnumName::Value1, ClassName::EnumName::Value2, ClassName::EnumName::Value3" ), Equals( std::vector<Catch::StringRef>{"Value1", "Value2", "Value3"} ) for: { Value1, Value2, Value3 } Equals: { Value1, Value2, Value3 }
# parseEnums
ok {test-number} - parseEnums( "ClassName::EnumName::Value1,ClassName::EnumName::Value2 , ClassName::EnumName::Value3" ), Equals( std::vector<Catch::StringRef>{"Value1", "Value2", "Value3"} ) for: { Value1, Value2, Value3 } Equals: { Value1, Value2, Value3 }
# pointer to class
ok {test-number} - p == 0 for: 0 == 0
# print unscoped info if passing unscoped info is printed
ok {test-number} - true with 1 message: 'this MAY be seen IF info is printed for passing assertions'
# prints unscoped info on failure
not ok {test-number} - false with 2 messages: 'this SHOULD be seen' and 'this SHOULD also be seen'
# prints unscoped info only for the first assertion
not ok {test-number} - false with 1 message: 'this SHOULD be seen only ONCE'
# prints unscoped info only for the first assertion
ok {test-number} - true
# prints unscoped info only for the first assertion
ok {test-number} - true with 1 message: 'this MAY also be seen only ONCE IF info is printed for passing assertions'
# prints unscoped info only for the first assertion
ok {test-number} - true
# random SECTION tests
ok {test-number} - a != b for: 1 != 2
# random SECTION tests
ok {test-number} - b != a for: 2 != 1
# random SECTION tests
ok {test-number} - a != b for: 1 != 2
# replaceInPlace
ok {test-number} - Catch::replaceInPlace(letters, "b", "z") for: true
# replaceInPlace
ok {test-number} - letters == "azcdefcg" for: "azcdefcg" == "azcdefcg"
# replaceInPlace
ok {test-number} - Catch::replaceInPlace(letters, "c", "z") for: true
# replaceInPlace
ok {test-number} - letters == "abzdefzg" for: "abzdefzg" == "abzdefzg"
# replaceInPlace
ok {test-number} - Catch::replaceInPlace(letters, "a", "z") for: true
# replaceInPlace
ok {test-number} - letters == "zbcdefcg" for: "zbcdefcg" == "zbcdefcg"
# replaceInPlace
ok {test-number} - Catch::replaceInPlace(letters, "g", "z") for: true
# replaceInPlace
ok {test-number} - letters == "abcdefcz" for: "abcdefcz" == "abcdefcz"
# replaceInPlace
ok {test-number} - Catch::replaceInPlace(letters, letters, "replaced") for: true
# replaceInPlace
ok {test-number} - letters == "replaced" for: "replaced" == "replaced"
# replaceInPlace
ok {test-number} - !(Catch::replaceInPlace(letters, "x", "z")) for: !false
# replaceInPlace
ok {test-number} - letters == letters for: "abcdefcg" == "abcdefcg"
# replaceInPlace
ok {test-number} - Catch::replaceInPlace(s, "'", "|'") for: true
# replaceInPlace
ok {test-number} - s == "didn|'t" for: "didn|'t" == "didn|'t"
# request an unknown %-starting stream fails
ok {test-number} - Catch::makeStream( "%somestream" )
# resolution
ok {test-number} - res.size() == count for: 10 == 10
# resolution
ok {test-number} - res[i] == rate for: 1000.0 == 1000 (0x<hex digits>)
# resolution
ok {test-number} - res[i] == rate for: 1000.0 == 1000 (0x<hex digits>)
# resolution
ok {test-number} - res[i] == rate for: 1000.0 == 1000 (0x<hex digits>)
# resolution
ok {test-number} - res[i] == rate for: 1000.0 == 1000 (0x<hex digits>)
# resolution
ok {test-number} - res[i] == rate for: 1000.0 == 1000 (0x<hex digits>)
# resolution
ok {test-number} - res[i] == rate for: 1000.0 == 1000 (0x<hex digits>)
# resolution
ok {test-number} - res[i] == rate for: 1000.0 == 1000 (0x<hex digits>)
# resolution
ok {test-number} - res[i] == rate for: 1000.0 == 1000 (0x<hex digits>)
# resolution
ok {test-number} - res[i] == rate for: 1000.0 == 1000 (0x<hex digits>)
# run_for_at_least, chronometer
ok {test-number} - meter.runs() >= old_runs for: 1 >= 1
# run_for_at_least, chronometer
ok {test-number} - meter.runs() >= old_runs for: 2 >= 1
# run_for_at_least, chronometer
ok {test-number} - meter.runs() >= old_runs for: 4 >= 2
# run_for_at_least, chronometer
ok {test-number} - meter.runs() >= old_runs for: 8 >= 4
# run_for_at_least, chronometer
ok {test-number} - meter.runs() >= old_runs for: 16 >= 8
# run_for_at_least, chronometer
ok {test-number} - meter.runs() >= old_runs for: 32 >= 16
# run_for_at_least, chronometer
ok {test-number} - meter.runs() >= old_runs for: 64 >= 32
# run_for_at_least, chronometer
ok {test-number} - meter.runs() >= old_runs for: 128 >= 64
# run_for_at_least, chronometer
ok {test-number} - Timing.elapsed >= time for: 128 ns >= 100 ns
# run_for_at_least, chronometer
ok {test-number} - Timing.result == Timing.iterations + 17 for: 145 == 145
# run_for_at_least, chronometer
ok {test-number} - Timing.iterations >= time.count() for: 128 >= 100
# run_for_at_least, int
ok {test-number} - x >= old_x for: 1 >= 1
# run_for_at_least, int
ok {test-number} - x >= old_x for: 2 >= 1
# run_for_at_least, int
ok {test-number} - x >= old_x for: 4 >= 2
# run_for_at_least, int
ok {test-number} - x >= old_x for: 8 >= 4
# run_for_at_least, int
ok {test-number} - x >= old_x for: 16 >= 8
# run_for_at_least, int
ok {test-number} - x >= old_x for: 32 >= 16
# run_for_at_least, int
ok {test-number} - x >= old_x for: 64 >= 32
# run_for_at_least, int
ok {test-number} - x >= old_x for: 128 >= 64
# run_for_at_least, int
ok {test-number} - Timing.elapsed >= time for: 128 ns >= 100 ns
# run_for_at_least, int
ok {test-number} - Timing.result == Timing.iterations + 17 for: 145 == 145
# run_for_at_least, int
ok {test-number} - Timing.iterations >= time.count() for: 128 >= 100
# sections can be skipped dynamically at runtime
ok {test-number} -
# sections can be skipped dynamically at runtime
ok {test-number} -  # SKIP
# sections can be skipped dynamically at runtime
ok {test-number} -
# send a single char to INFO
not ok {test-number} - false with 1 message: '3'
# sends information to INFO
not ok {test-number} - false with 2 messages: 'hi' and 'i := 7'
# shortened hide tags are split apart
ok {test-number} - testcase.tags, VectorContains( Tag( "magic-tag" ) ) && VectorContains( Tag( "."_catch_sr ) ) for: { {?}, {?} } ( Contains: {?} and Contains: {?} )
# skipped tests can optionally provide a reason
ok {test-number} -  # SKIP 'skipping because answer = 43'
# splitString
ok {test-number} - splitStringRef("", ','), Equals(std::vector<StringRef>()) for: {  } Equals: {  }
# splitString
ok {test-number} - splitStringRef("abc", ','), Equals(std::vector<StringRef>{"abc"}) for: { abc } Equals: { abc }
# splitString
ok {test-number} - splitStringRef("abc,def", ','), Equals(std::vector<StringRef>{"abc", "def"}) for: { abc, def } Equals: { abc, def }
# stacks unscoped info in loops
not ok {test-number} - false with 4 messages: 'Count 1 to 3...' and '1' and '2' and '3'
# stacks unscoped info in loops
not ok {test-number} - false with 4 messages: 'Count 4 to 6...' and '4' and '5' and '6'
# startsWith
ok {test-number} - !(startsWith("", 'c')) for: !false
# startsWith
ok {test-number} - startsWith(std::string("abc"), 'a') for: true
# startsWith
ok {test-number} - startsWith("def"_catch_sr, 'd') for: true
# std::map is convertible string
ok {test-number} - Catch::Detail::stringify( emptyMap ) == "{  }" for: "{  }" == "{  }"
# std::map is convertible string
ok {test-number} - Catch::Detail::stringify( map ) == "{ { \"one\", 1 } }" for: "{ { "one", 1 } }" == "{ { "one", 1 } }"
# std::map is convertible string
ok {test-number} - Catch::Detail::stringify( map ) == "{ { \"abc\", 1 }, { \"def\", 2 }, { \"ghi\", 3 } }" for: "{ { "abc", 1 }, { "def", 2 }, { "ghi", 3 } }" == "{ { "abc", 1 }, { "def", 2 }, { "ghi", 3 } }"
# std::pair<int,const std::string> -> toString
ok {test-number} - ::Catch::Detail::stringify(value) == "{ 34, \"xyzzy\" }" for: "{ 34, "xyzzy" }" == "{ 34, "xyzzy" }"
# std::pair<int,std::string> -> toString
ok {test-number} - ::Catch::Detail::stringify( value ) == "{ 34, \"xyzzy\" }" for: "{ 34, "xyzzy" }" == "{ 34, "xyzzy" }"
# std::set is convertible string
ok {test-number} - Catch::Detail::stringify( emptySet ) == "{  }" for: "{  }" == "{  }"
# std::set is convertible string
ok {test-number} - Catch::Detail::stringify( set ) == "{ \"one\" }" for: "{ "one" }" == "{ "one" }"
# std::set is convertible string
ok {test-number} - Catch::Detail::stringify( set ) == "{ \"abc\", \"def\", \"ghi\" }" for: "{ "abc", "def", "ghi" }" == "{ "abc", "def", "ghi" }"
# std::vector<std::pair<std::string,int> > -> toString
ok {test-number} - ::Catch::Detail::stringify( pr ) == "{ { \"green\", 55 } }" for: "{ { "green", 55 } }" == "{ { "green", 55 } }"
# stdout and stderr streams have %-starting name
ok {test-number} - Catch::makeStream( "%stderr" )->isConsole() for: true
# stdout and stderr streams have %-starting name
ok {test-number} - Catch::makeStream( "%stdout" )->isConsole() for: true
# stringify ranges
ok {test-number} - ::Catch::Detail::stringify(streamable_range{}) == "op<<(streamable_range)" for: "op<<(streamable_range)" == "op<<(streamable_range)"
# stringify ranges
ok {test-number} - ::Catch::Detail::stringify(stringmaker_range{}) == "stringmaker(streamable_range)" for: "stringmaker(streamable_range)" == "stringmaker(streamable_range)"
# stringify ranges
ok {test-number} - ::Catch::Detail::stringify(just_range{}) == "{ 1, 2, 3, 4 }" for: "{ 1, 2, 3, 4 }" == "{ 1, 2, 3, 4 }"
# stringify ranges
ok {test-number} - ::Catch::Detail::stringify(disabled_range{}) == "{?}" for: "{?}" == "{?}"
# stringify( has_maker )
ok {test-number} - ::Catch::Detail::stringify( item ) == "StringMaker<has_maker>" for: "StringMaker<has_maker>" == "StringMaker<has_maker>"
# stringify( has_maker_and_operator )
ok {test-number} - ::Catch::Detail::stringify( item ) == "StringMaker<has_maker_and_operator>" for: "StringMaker<has_maker_and_operator>" == "StringMaker<has_maker_and_operator>"
# stringify( has_neither )
ok {test-number} - ::Catch::Detail::stringify(item) == "{?}" for: "{?}" == "{?}"
# stringify( has_operator )
ok {test-number} - ::Catch::Detail::stringify( item ) == "operator<<( has_operator )" for: "operator<<( has_operator )" == "operator<<( has_operator )"
# stringify( has_template_operator )
ok {test-number} - ::Catch::Detail::stringify( item ) == "operator<<( has_template_operator )" for: "operator<<( has_template_operator )" == "operator<<( has_template_operator )"
# stringify( vectors<has_maker> )
ok {test-number} - ::Catch::Detail::stringify( v ) == "{ StringMaker<has_maker> }" for: "{ StringMaker<has_maker> }" == "{ StringMaker<has_maker> }"
# stringify( vectors<has_maker_and_operator> )
ok {test-number} - ::Catch::Detail::stringify( v ) == "{ StringMaker<has_maker_and_operator> }" for: "{ StringMaker<has_maker_and_operator> }" == "{ StringMaker<has_maker_and_operator> }"
# stringify( vectors<has_operator> )
ok {test-number} - ::Catch::Detail::stringify( v ) == "{ operator<<( has_operator ) }" for: "{ operator<<( has_operator ) }" == "{ operator<<( has_operator ) }"
# strlen3
ok {test-number} - data.str.size() == data.len for: 3 == 3
# strlen3
ok {test-number} - data.str.size() == data.len for: 3 == 3
# strlen3
ok {test-number} - data.str.size() == data.len for: 5 == 5
# strlen3
ok {test-number} - data.str.size() == data.len for: 4 == 4
# tables
ok {test-number} - strlen(std::get<0>(data)) == static_cast<size_t>(std::get<1>(data)) for: 5 == 5
# tables
ok {test-number} - strlen(std::get<0>(data)) == static_cast<size_t>(std::get<1>(data)) for: 6 == 6
# tables
ok {test-number} - strlen(std::get<0>(data)) == static_cast<size_t>(std::get<1>(data)) for: 5 == 5
# tables
ok {test-number} - strlen(std::get<0>(data)) == static_cast<size_t>(std::get<1>(data)) for: 6 == 6
# tags with dots in later positions are not parsed as hidden
ok {test-number} - testcase.tags.size() == 1 for: 1 == 1
# tags with dots in later positions are not parsed as hidden
ok {test-number} - testcase.tags[0].original == "magic.tag"_catch_sr for: magic.tag == magic.tag
# tests can be skipped dynamically at runtime
ok {test-number} -  # SKIP
# thrown std::strings are translated
not ok {test-number} - unexpected exception with message: 'Why would you throw a std::string?'
# toString on const wchar_t const pointer returns the string contents
ok {test-number} - result == "\"wide load\"" for: ""wide load"" == ""wide load""
# toString on const wchar_t pointer returns the string contents
ok {test-number} - result == "\"wide load\"" for: ""wide load"" == ""wide load""
# toString on wchar_t const pointer returns the string contents
ok {test-number} - result == "\"wide load\"" for: ""wide load"" == ""wide load""
# toString on wchar_t returns the string contents
ok {test-number} - result == "\"wide load\"" for: ""wide load"" == ""wide load""
# toString(enum class w/operator<<)
ok {test-number} - ::Catch::Detail::stringify(e0) == "E2/V0" for: "E2/V0" == "E2/V0"
# toString(enum class w/operator<<)
ok {test-number} - ::Catch::Detail::stringify(e1) == "E2/V1" for: "E2/V1" == "E2/V1"
# toString(enum class w/operator<<)
ok {test-number} - ::Catch::Detail::stringify(e3) == "Unknown enum value 10" for: "Unknown enum value 10" == "Unknown enum value 10"
# toString(enum class)
ok {test-number} - ::Catch::Detail::stringify(e0) == "0" for: "0" == "0"
# toString(enum class)
ok {test-number} - ::Catch::Detail::stringify(e1) == "1" for: "1" == "1"
# toString(enum w/operator<<)
ok {test-number} - ::Catch::Detail::stringify(e0) == "E2{0}" for: "E2{0}" == "E2{0}"
# toString(enum w/operator<<)
ok {test-number} - ::Catch::Detail::stringify(e1) == "E2{1}" for: "E2{1}" == "E2{1}"
# toString(enum)
ok {test-number} - ::Catch::Detail::stringify(e0) == "0" for: "0" == "0"
# toString(enum)
ok {test-number} - ::Catch::Detail::stringify(e1) == "1" for: "1" == "1"
# tuple<>
ok {test-number} - "{ }" == ::Catch::Detail::stringify(type{}) for: "{ }" == "{ }"
# tuple<>
ok {test-number} - "{ }" == ::Catch::Detail::stringify(value) for: "{ }" == "{ }"
# tuple<float,int>
ok {test-number} - "1.2f" == ::Catch::Detail::stringify(float(1.2)) for: "1.2f" == "1.2f"
# tuple<float,int>
ok {test-number} - "{ 1.2f, 0 }" == ::Catch::Detail::stringify(type{1.2f,0}) for: "{ 1.2f, 0 }" == "{ 1.2f, 0 }"
# tuple<int>
ok {test-number} - "{ 0 }" == ::Catch::Detail::stringify(type{0}) for: "{ 0 }" == "{ 0 }"
# tuple<string,string>
ok {test-number} - "{ \"hello\", \"world\" }" == ::Catch::Detail::stringify(type{"hello","world"}) for: "{ "hello", "world" }" == "{ "hello", "world" }"
# tuple<tuple<int>,tuple<>,float>
ok {test-number} - "{ { 42 }, { }, 1.2f }" == ::Catch::Detail::stringify(value) for: "{ { 42 }, { }, 1.2f }" == "{ { 42 }, { }, 1.2f }"
# uniform samples
ok {test-number} - e.point == 23 for: 23.0 == 23
# uniform samples
ok {test-number} - e.upper_bound == 23 for: 23.0 == 23
# uniform samples
ok {test-number} - e.lower_bound == 23 for: 23.0 == 23
# uniform samples
ok {test-number} - e.confidence_interval == 0.95 for: 0.95 == 0.95
# unique_ptr reimplementation: basic functionality
ok {test-number} - !(ptr) for: !{?}
# unique_ptr reimplementation: basic functionality
ok {test-number} - ptr.get() == 0 for: 0 == 0
# unique_ptr reimplementation: basic functionality
ok {test-number} - ptr for: {?}
# unique_ptr reimplementation: basic functionality
ok {test-number} - *ptr == 0 for: 0 == 0
# unique_ptr reimplementation: basic functionality
ok {test-number} - ptr.get() == naked_ptr for: 0x<hex digits> == 0x<hex digits>
# unique_ptr reimplementation: basic functionality
ok {test-number} - !(ptr) for: !{?}
# unique_ptr reimplementation: basic functionality
ok {test-number} - ptr.get() == 0 for: 0 == 0
# unique_ptr reimplementation: basic functionality
ok {test-number} - ptr for: {?}
# unique_ptr reimplementation: basic functionality
ok {test-number} - *ptr == 0 for: 0 == 0
# unique_ptr reimplementation: basic functionality
ok {test-number} - ptr.get() == naked_ptr for: 0x<hex digits> == 0x<hex digits>
# unique_ptr reimplementation: basic functionality
ok {test-number} - ptr for: {?}
# unique_ptr reimplementation: basic functionality
ok {test-number} - ptr.get() != 0 for: 0x<hex digits> != 0
# unique_ptr reimplementation: basic functionality
ok {test-number} - *ptr == 2 for: 2 == 2
# unique_ptr reimplementation: basic functionality
ok {test-number} - !(ptr) for: !{?}
# unique_ptr reimplementation: basic functionality
ok {test-number} - ptr.get() == 0 for: 0 == 0
# unique_ptr reimplementation: basic functionality
ok {test-number} - !(ptr1) for: !{?}
# unique_ptr reimplementation: basic functionality
ok {test-number} - ptr2 for: {?}
# unique_ptr reimplementation: basic functionality
ok {test-number} - *ptr2 == 1 for: 1 == 1
# unique_ptr reimplementation: basic functionality
ok {test-number} - !(ptr2) for: !{?}
# unique_ptr reimplementation: basic functionality
ok {test-number} - ptr1 for: {?}
# unique_ptr reimplementation: basic functionality
ok {test-number} - *ptr1 == 2 for: 2 == 2
# unique_ptr reimplementation: basic functionality
ok {test-number} - *ptr1 == 2 for: 2 == 2
# unique_ptr reimplementation: basic functionality
ok {test-number} - *ptr2 == 1 for: 1 == 1
# vec<vec<string,alloc>> -> toString
ok {test-number} - ::Catch::Detail::stringify(v) == "{  }" for: "{  }" == "{  }"
# vec<vec<string,alloc>> -> toString
ok {test-number} - ::Catch::Detail::stringify(v) == "{ { \"hello\" }, { \"world\" } }" for: "{ { "hello" }, { "world" } }" == "{ { "hello" }, { "world" } }"
# vector<bool> -> toString
ok {test-number} - ::Catch::Detail::stringify(bools) == "{  }" for: "{  }" == "{  }"
# vector<bool> -> toString
ok {test-number} - ::Catch::Detail::stringify(bools) == "{ true }" for: "{ true }" == "{ true }"
# vector<bool> -> toString
ok {test-number} - ::Catch::Detail::stringify(bools) == "{ true, false }" for: "{ true, false }" == "{ true, false }"
# vector<int,allocator> -> toString
ok {test-number} - ::Catch::Detail::stringify(vv) == "{  }" for: "{  }" == "{  }"
# vector<int,allocator> -> toString
ok {test-number} - ::Catch::Detail::stringify(vv) == "{ 42 }" for: "{ 42 }" == "{ 42 }"
# vector<int,allocator> -> toString
ok {test-number} - ::Catch::Detail::stringify(vv) == "{ 42, 250 }" for: "{ 42, 250 }" == "{ 42, 250 }"
# vector<int> -> toString
ok {test-number} - ::Catch::Detail::stringify(vv) == "{  }" for: "{  }" == "{  }"
# vector<int> -> toString
ok {test-number} - ::Catch::Detail::stringify(vv) == "{ 42 }" for: "{ 42 }" == "{ 42 }"
# vector<int> -> toString
ok {test-number} - ::Catch::Detail::stringify(vv) == "{ 42, 250 }" for: "{ 42, 250 }" == "{ 42, 250 }"
# vector<string> -> toString
ok {test-number} - ::Catch::Detail::stringify(vv) == "{  }" for: "{  }" == "{  }"
# vector<string> -> toString
ok {test-number} - ::Catch::Detail::stringify(vv) == "{ \"hello\" }" for: "{ "hello" }" == "{ "hello" }"
# vector<string> -> toString
ok {test-number} - ::Catch::Detail::stringify(vv) == "{ \"hello\", \"world\" }" for: "{ "hello", "world" }" == "{ "hello", "world" }"
# vectors can be sized and resized
ok {test-number} - v.size() == 5 for: 5 == 5
# vectors can be sized and resized
ok {test-number} - v.capacity() >= 5 for: 5 >= 5
# vectors can be sized and resized
ok {test-number} - v.size() == 10 for: 10 == 10
# vectors can be sized and resized
ok {test-number} - v.capacity() >= 10 for: 10 >= 10
# vectors can be sized and resized
ok {test-number} - v.size() == 5 for: 5 == 5
# vectors can be sized and resized
ok {test-number} - v.capacity() >= 5 for: 5 >= 5
# vectors can be sized and resized
ok {test-number} - v.size() == 0 for: 0 == 0
# vectors can be sized and resized
ok {test-number} - v.capacity() >= 5 for: 5 >= 5
# vectors can be sized and resized
ok {test-number} - v.capacity() == 0 for: 0 == 0
# vectors can be sized and resized
ok {test-number} - v.size() == 5 for: 5 == 5
# vectors can be sized and resized
ok {test-number} - v.capacity() >= 5 for: 5 >= 5
# vectors can be sized and resized
ok {test-number} - v.size() == 5 for: 5 == 5
# vectors can be sized and resized
ok {test-number} - v.capacity() >= 10 for: 10 >= 10
# vectors can be sized and resized
ok {test-number} - v.size() == 5 for: 5 == 5
# vectors can be sized and resized
ok {test-number} - v.capacity() >= 5 for: 5 >= 5
# vectors can be sized and resized
ok {test-number} - v.size() == 5 for: 5 == 5
# vectors can be sized and resized
ok {test-number} - v.capacity() >= 5 for: 5 >= 5
# warmup
ok {test-number} - (iterations * rate) > Catch::Benchmark::Detail::warmup_time.count() for: 160000000 (0x<hex digits>) > 100
# warmup
ok {test-number} - (end - start) > Catch::Benchmark::Detail::warmup_time for: 310016000 ns > 100 ms
# weighted_average_quantile
ok {test-number} - q1 == 14.5 for: 14.5 == 14.5
# weighted_average_quantile
ok {test-number} - med == 18. for: 18.0 == 18.0
# weighted_average_quantile
ok {test-number} - q3 == 23. for: 23.0 == 23.0
# xmlentitycheck
ok {test-number} -
# xmlentitycheck
ok {test-number} -
1..2237

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         ELF         >                    H(         @     @ ��   }   ~         �      �   �      �   �      �      �   �      �   �      �      �   �      �   �      �   �      �   �      �   �      �   �      �   �      �   �      �   �      �   �      �   �      �   �      �   �      �   �      �   �      �      �   �      �   �      �   �   �   �      �   �      �   �      �   �   �   �      �   �      �   �      �   �      �   �      �   �      �   �      �   �      �   �      �   �      �   �      �   �      �   �   �   �      �   �      �   �      �   �      �   �      �      �   �      �   �      �   �      �   �      �   �      �   �      �   �      �   �      �   �                                     	     
                                                                     !  "     #  $     %  &     (  )  *  +     -  .     /  0  1  2  3  4  5  6  <  =  >  ?     7  8     9  :     A  B  C  D     F  G  H  I     K  L     M  N     O  P     Q  R     S  T     U  V     W  X     Y  Z     [     \     ]     ^     _  `     a     b  c     d     e  f     g     h  i     j     k  l     m     n  o     p     q  r     s     t  u     v     w  x     y  z     {  |     }  ~       �     �  �     �     �     �     �     �     �     �  �          ��H�    H��H��    ��     ��UH���    H��]�    f.�     U�FH��SH����I�����   ����tvL�MM��tm��L�U1�����L��O��ƃ�)�D�X fD  ���D��H�����������B�I9�u��t&I�qH;uvH���    L�ML�UI�qH�uC��H��[]�f�AUATI��USH��H�H�SH�CH�jH9�wH�KH�kA�$�H��[]A\A]�@ H�H�H;    uYH��L�kH��H�H9�vgH����   H���    H�SH��H��uZH�C H�KH�kI9�t%L���    H�SH�KH�j� H��H����H�KH�SH�j�d����    H��x#H���fD  L��H���    H����     H��������H9�HB��[���f.�     �    �f.�     AUATI��USH��H�H�SH�CH�jH9�wH�KH�kA�$�H��[]A\A]�@ H�H�H;    uYH��L�kH��H�H9�vgH����   H���    H�SH��H��uZH�C H�KH�kI9�t%L���    H�SH�KH�j� H��H����H�KH�SH�j�d����    H��x#H���fD  L��H���    H����     H��������H9�HB��[���f.�     �    �f.�     AWAVAUATUH��SH��H�H����   L�mL�4�    1�L��K�4.D  �H��H����H�J�P�H�� H��H9�u����   H�EL�gI9�vvH��H��H�I9���   L��H��=��   J�<�    �    L�}H��M��I��tL��L��H���    H��H�E H�ML�eI9�tVL���    L�uL�mM�fI��L�eC�\5 H��[]A\A]A^A_�fD  H��H��=t)H��������I9�LB��_����M�gI��L�eC�\5 �I���Q���I��>t�    �    fD  ��PXH��H��A��I��H�    H�    �   H�81��    �    ff.�     ��ATI��USH��   H�-    dH�%(   H��$  1�H�\$ H��H�EfHn�fHn�fl�)$fo    )D$A��L�%    H�t$�   H�|$I�$�    H��u:H�|$H�EH�$H9�t�    H��$  dH+%(   u H��   []A\�@ I�4$�
   �    ��    �f���AWAVAUATUSH��H��  fo    H�t$hH�T$`dH�%(   H��$  H�    CH��H�H�C H�D$PH�CH����  H�D�H�D$XH9���  fo-    H�    I��fo5    fo=    H�D$)l$fo-    )t$ )|$0)l$@fD  A�M H�|$L��Ǆ$�      foL$foT$ Ǆ$�      ��fo\$0fod$@Ǆ$�       ��)�$�   ��)�$�   H�)�$�   Ǆ$�       <H��)�$�   D�FI��F�~D��#���   �����������  �� � 	�����?	�	͋���   ��1�;���   �����������  1����� @������A��	��0A��@��D	�	���	ȋ���   ��*����tv�   �    H�5    H��H���    �    D  L�t$`�   M���  H�D$PH�k�     H��$  dH+%(   �  H��  []A\A]A^A_�D  H�KL�{H�SL�a����  ��   I9��S  L�4�    L�cC�,7L9l$X�(���L�t$hLt$`M)��U  H�SI�l$H9��S  H��H��H�H9�wH��H��=��  H��������H9�HB�H��H��=�*  H�<�    �    L�cH��M��I��tL��L��H���    H��H�KH�kL9|$P�9  L���    H�CH�SH�hH��H�D$P������    ��   A��A��
A�� �  I9���   L��    L�c���  G�4L�q�� �  I9���  J��    M��L�cA�,�����f��ɀ1������fD  H��H��H�L9�rH��������H9��  I9�LB�H��������I9���  J�<�    �    L�CH��M��I��tL��L��H��L�D$p�    L�D$pH��H�KL�cL9|$P�z  L���    L�sL�{M�fI������D  H��H��H�L9�rH��������H9��g  I9�LB�H��������I9��  J�<�    �    H�KH��I��I��t"L��L��H�L$xL�D$p�    H�L$xL�D$pH��H�{L�cL9|$P��   L���    H�KL�{H�SL�aL��    �[���fD  H��H��H�I9�wH��������H9���  I9�LB�H��������I9��u  J�<�    �    L�cH��L��H��tL��H��H�T$p�    H�T$pH��H�KL�sL9|$PtAL���    H�SL�{L�bH�������@ M�`I������@ L��I��L�a�����I��I������@ I�������     I�������I��D  fo5    fo=    H�    H�D$)t$fo5    )|$ fo=    )t$0)|$@1��   Ǆ$      f��$  H��$  H��Ƅ$   I��H�D$X�    fD  A�M H�|$L��Ǆ$�      fol$fot$ Ǆ$�      ��fo|$0foD$@Ǆ$�       ��)�$�   ��)�$�   H�)�$�   Ǆ$�       <H��)�$�   D�FI��F�~D��#���   �����������  �� � 	�����?	�	͋���   ��1�;���   �����������+  1����� @������A��	��0A��@��D	�	���	ȋ���   ��*����t.�   �    H�5    H��H���    �    D  I���{���H�KH�SL�a����  wDI9�vL��H���    H�KL�aH�CL�c�,�L��H+D$XL9��h���L�cL�{�f��� ��   L�{����
 �  �D$`I9�w[L��    �D$`���  H�qL�c�� �  C�H9�vH���    L�cL�{I�t$H�sC�,��w����ɀ1������fD  H��H��H�L9�rH��������H9���   I9�LB�H��������I9��5  J�<�    �    H�KH��I��I��t"L��L��H�L$pL�D$h�    H�L$pL�D$hH��H�{L�cL9|$Pt?L���    H�KL�{H�SL�aL��    �����f�J�)I�l$H�D$P����D  L��I��L�a�����f�     H���N����     I���C����     I��>t*�    D  I��>t�    D  I��>t�    �    �    �    fD  L��L���U���D  K��H�D$P�����f�H��>t�    D  I��>t
�    �    �    �    ��I���    ���    ��I���    D  ��H���H�=    �    ff.�     ��AT��US����  ��   ��H�    E1�1�A��L�YP�   D��H�-    H�]�*fD  I9���  �A�9A��H���A9��~  ��A9�u�D9�~�Mcč~�I�(D)�I�I��D  H��I9�t��8D9�u�E1�[D��]A\�@ ���� ��   ��H�    E1���D��H�-    A��1�L�YJ�   H�]�)D  I9��O  �A�9A��H���A9��6  ��A9�u�A9�}�Mcč~�I�(D)�I�I��D  H��I9�t��89�u��T��� ��"Y��E1���!�B������H����
�3������G�����$�����^1������������=  ���������=�  �����������=��
 ����������=� ��������� A�������fD  A�   1�1�L�    �&D  A�D	��yH�q��A�L	%   	�H��)��{���H�qA��H��4  v�[D��]A\�fD  A�   �^   1�H�=    �!f��D��yH�J���T%   	�H��A)�����H�JA��H���  v�����f�AWAVAUATUSH��x  H��$�  ��$�   ��H��$�   H��$�   ��$�   D��$�   L��$�   H��$�   dH�%(   H��$h  H�    Ǆ$H      Ǆ$�      H��fHn�H��$�  H�D$0fo�fo�H��$p  H�D$(H��$   H��$�   H��$�  L$0T$()�$�  fo    )�$P  fo��$�   )�$�  )�$`  )�$   )�$  H��$�   �AǄ$�      Ǆ$X      �$�   ��$�   ��$�   )�$�  )�$�  ����  H��$�   � ����  H��$�   H��$�  H��$�   1�H�L$HH��$�   H��$�   H��$�   �    H���D�H�� H�� H��H	�u�H��$�   H��$�   H�� ��  �    H9�H�|$H��$�   Ǆ$H      HG�H��$�  �}���H��$�   H��$h  �H��$X  ��$�   ���  ��$�   �   ��)  f��9�}��    H����&  H��$P  H�D$8H�� �   Ǆ$�      HF����\$ H��$`  I���c  H��$  H�D$@�H�    f��E��G�,$)�$   H��H��$�   H��$X  H;D$(�2  H��$�   H�D$(f��H��$  H��$X  H�D$    )�$`  I9�v%H��$�   L���    H��$h  H��$  H�D$I9�D��IF�H��$   H;\$vH�|$8H���    H��$h  H�D$H�D$H9�HG�H�\$PH��$`  E����  L��$�   E1�H��$X  L�$$H��$�   H��$�   A�\$�M�KM��M��M��D  I�r�L��D�1�>E1�L��L�L�H��H��I9�u�B�D� I�KH�� I��H�� L9���  I����؉D$`�¸   �9�}�Ǆ$�     ��HǄ$�     �D$ �(  H�D$0H��$�  �    A�   H�T$HH��$  H�T$@H�    f��E��G�t- )�$   H��H��$�   H;D$0��  H��$�   H�D$0f��H��$  H��$�  H�D$    )�$�  I9�v%H��$�   L���    H��$�  H��$  H�D$I9�IF�H��$   D��H;\$vH�|$HH���    H��$�  H�D$H�D$H9�HG�H�\$8H��$�  E����  L��$�   E1�1�1�H��$�  L�,$A�]�E��M�KM��M��M��f.�     I�r�L��f�     D�9�>E1�L��L�L�H��H��I9�u�B�D� I�KH�� I��H�� L9���  I���H��$�  H��$�   H��$�   1�H�L$HH��$�   H��$�   fD  H���D�H�� H�� H��H	�u�H��$�   H��$�   H�� �"  H�|$HH���    H��$�  H9�H�|$H��$�   Ǆ$H      HG��$�   H��$�  �����H��$  H��$   �    H��$  H��u�   H���    H��$  fD  H�� �   ��$�   H��Ǆ$�      HG�H��$  ����D��$�   E����  H�D$P    H��$�   H��$h  �H��$X  ��$�   ����  ��$�   �   �a$  @ �9�}��    H��$P  H�D$8H���W  H�� �   Ǆ$�      HF����\$`H�D$H��$`  �I  H��$  H�D$@H�D$f��$�f��D$H�    )�$   H��H��$�   H��$X  H;D$(��  H��$�   H�D$(f��H��$  H��$X  H�D$     )�$`  H�t$H9�v"H��$�   �    H��$h  H��$  H�D$ H�D$�\$H9�HF�H��$   H;\$ vH�|$8H���    H��$h  H�D$ H�D$ D�$H9�HG�H�\$pH��$`  E��~~H�D$L��$�   E1�H��$X  H��$�   �X�H��$�   M�KD  I�q�L�ِD��>E1�L��L�M��L�H��H��I9�u�B�D� I�JH�� I��H�� L9�tI���H��$�   H��$�   fD  �|$9<$��   H��$�   ��L��$�   A�   H��$X  L��$�   H�YH�\$I��H�\$I��)ރ���H��H�t$Hc�H�4�H�t$f�D��D9$~>��H�|$H�t$D)�L�L��L��fD  D��>E1�L��L�L�H��H��I9�u�+I��I��A�D� H�� H�� L9T$u�L��$�   L��$�   H�D$pH��$X  ���Ã�Hc����@ H����~���Å�t��H;\$ vH�|$8H���    H��$h  H�D$ H�D$ H��$�   H9�HG�H�    Ѥ$�  H��H��$`  H��$�   H;|$@t�    �\$`��$�   ��   �|$`�  H��$`  H��$h  H�D$�����H��$�  H��$�  �    H��$�  H��u�   H���    H��$�  H�� ��$�   �   H��Ǆ$X      HG�H��$�  �"���H�\$P����H��$`  H���W���L��$X  1�L��I�4�fD  ���H��H��HӉX�H�� H9�u������H�wH;�$h  vH�|$8�    H��$`  L��$X  H�w�|$`H��$`  A���������$�   H�|$8�z�����$�   H�|$8�i���H��$�   H��$   H�Ѓ��D$H�D$PH��HE�H�l$P��$�   t.H�T$8H�t$PH�|$H�    D$����  ��$�   ��  D��$�   E����  ��$�   H��$�   �C�)�D$����  H��$�   Hc�$�   H�CH�t$@H9���  H�\$@�|$H��$�  H9�HF�H��$�   H�C����  ��$�   H�$    ��H�D$ Lc�$H  L��$`  �l$Lc�$�  A�T- C�<9��s  �I  �0   H��$�   H�$H�@@�,H��$�  H��ttH��$�  1�H��H��fD  ���H��H��H�S�X�H�� H9�u��t=L�EL;�$�  v!H�|$HL���    H��$�  H��$�  L�EL��$�  ��L��H�$H�CH9\$ ��  H�$����H�T$H�|$@H��$  H��H��$�   ��  H�t$(�    H�l$ ������    H��$P  H�D$8H��u�   H���    H��$h  H�� �   Ǆ$�      HF�H��$`  ����D9������D��H��$�  D)��D$���0  �T$D�4I9�vH�|$HL���    H��$�  L��$`  �D$I9�H��$�  LG�H��D$L��$�  D�����   M)�A��U�J��   H���   ����  HcD$����L�D��H��L�H�t��H��1�fD  �Ao4 4H��H9�u�D��D�Ѓ��)�)�D9�t?Hcы4�HcЃ��4��Q���t)Hc�H�L��    ��H�4�    ����t	B�D��D7�HcT$1�H��H���    D��$H  D��$�  A)�D��$H  1�A�N�E)�M��teL��$�  H��$X  D��1�G�<�    ��D��҃�M��H��A� L�H)�A� H��?H��D9�u�C�<��tI�4����H��x����~%H��$�  Hc��
f�H����~�4�A�΅�t�A��E��I9�vvH��L��$�  H��H�L9�IB�H�<�    H���    H��$�  H��H��tL��H���    H��H��$�  H��$�  L;d$0tL���    H��$�  L��$`  I9�D��$H  D��$�  LG��C�<C�T5 L��$�  Ic�9�t�������0����@ E��A�N�A�W��    E)���DH�D9�|M�F�D)�H��L��$�  L��$X  H�H)��f�     ��H����H9�t��A�<�A9|�t��?����9��5����|���A��U�A�w��    E)�A��DH�D9������Hc�D)�L��$�  H��$X  �A�H��H�H)��f.�     A��H����H9��p������A9\�t��g�������H��$�   �D$    H�@H�D$pHcD$HD$pH�D$ L��$�  Lc�$H  L��$`  Hc�$�  G�L= D�|$F�T5 E9��
  ��  �$    A�0   E1�H��$  ��$�  �D9���  �\$�H�A�ۍs�A)ø    DH�D9���  HcӍC�D)�L��$�  H��H��$  H�H)����H����H9��i  A��A�t�F��D9�t�A9������+D$��A��H�D$P�����   �pD���D9�MƍPD9���  D9��  A9�A��A�B�EN�A9�DO�A9��  H��$�  D�d$`��$�   H�\$PH�T$H��$X  H�T$@1�D  D9�}D9�}{1�9�~9�A��L�cA)�Mc�G��L�D9�}9�|A��L�d$@A)�Mc�G��L�H9��p  H)�H����  ��H�� A9�~��D$H��D�d$`��$�   �����  ��L�\$D)�Hc�A���q���9��5���D��L��$�  )�$����  B�8L9�vH�|$HH���    L��$�  L��$`  L9�$A�w�H��$�  IG܍0H��$�  ����   I)�J��   H����  ����  D��Ic���L�L��L�H��L�D��1�H����AoA H��H9�u�D�����)�)�D9�t@HcƋ�Hc������V���t*Hc�Hc�L��    ��H��    ����t	B�D��D�Hc$1�I��H���    D��$H  ��$�  E)�D��$H  �$    �C�D)�M��tlL��$�  H��$X  ��1�F�\5 fD  ��D��Ƀ�M��H��A�L�H)�A�H��?H��D9�u�B�L5 ��t��I�4��D  �у�H��x����~%H��$�  H�� H����~D����E��t����L9�vvL��H��$�  H��L�H9�HB�H�<�    I���    H��$�  H��H��tH��H���    H��H��$�  L��$�  H;l$0tH���    L��$�  L��$`  L9�D��$H  ��$�  IG܃$F�T5 E�L H��$�  �\$E9�t������$A��D�`0���� A�ߍC�A�N��    E)�A��DH�D9�|OHc�E)�L��$�  H��$X  �V�H��Hc�L)��D  A��H����H9�tA��F�<�E9|�t��.����D9��#����s���1�9�����������D �����E��A�w�A�V��    E)��DH�D9������Ic�A�G�D)�L��$�  H��H��$X  H�H)��D  ��H����H9��a����֋�A9\�t��W�������D�d$`��$�   �D$���T$D�jH�T$ D�"H�Յ���  ����  H��$�  H��tmH��$�  1�H��H��f����H��H��H�S�X�H�� H9�u��t:L�FL;�$�  v!H�|$HL���    H��$�  H��$�  L�FL��$�  ��H��$  H����   H��$  1�H��H��@ ���H��H��H�S�X�H�� H9�u��t[L�FH��$   L;�$  vL��H���    H��$  H��$  L�FL��$  ��H�D$ H9l$P�   D�l$�����H��$   ��L���"����    �����D�d$`Hc\$H�l$pH�D�kD�e E���P  A�F1�E L��$�   Ic�I�GH9���  H9�HG�H��$�   H�XH��$�   �\$)H�    H��$�  H��H��$�  H;�$�   t�    H�    H��$  H��H��$   H;�$�   t�    H�    H��$X  H��H��$P  H;|$(t�    H�    H��$�  H��H��$�  H;|$0t�    H��$h  dH+%(   �Z  H��x  []A\A]A^A_�H�H���H�C����H�|$HH���    H��$�  ����H��$P  �   H��H�D$8�    H��$h  �����     L�t$`L�$$L�L$hE9���   H��$�   D��L�D$pA�   D)�L��$X  L�L$xH�Y��H�\$I��A�\$�L�nHc�L�,$A��L�$�L�d$�     D��E9�~AD��H�|$H�t$D)�L�L�$�L��fD  �)�>E1�H��H�I��L�H��H��I9�u�B�+I��I��A��H�� H�� L9$u�L�D$pL�L$xH�D$PH��$X  ���Ã�Hc�����H����~�,��Å�t��H;\$vH�|$8H���    H��$h  H�D$H�D$H��$�   H9�HG�H�    Ѥ$�  H��H��$`  H��$�   H;|$@t�    �\$ ��$�   ��  �|$ �c  L��$`  H��$h  �����L�|$PE��L�,$L�L$XE9���   H��$�   D��L��$�  A�   D)�L��$�   L��$�   H�Y��H�\$I��A�]�L�vHc�L�4$E��A��L�,�L�l$fD  D��E9�~AD��H�|$H�t$D)�L�L�,�L��fD  �)�>E1�H��H�I��L�H��H��I9�u�A�I��I��A��H�� H�� L9$u�L��$�   L��$�   H�D$8H��$�  ���Ã�Hc���� H����~D����E��t��H;\$vH�|$HH���    H��$�  H�D$H�D$H��$�   H9�HG�H�    Ѥ$H  H��H��$�  H��$�   H;|$@t�    �\$ �\$`�d  �|$ ��  L��$�  H��$�  H��$�  ����H��$`  H������L��$X  1�L��I�4��     ���H��H��HӉX�H�� H9�u�������H�wH;�$h  vH�|$8�    H��$`  L��$X  H�w�|$ H��$`  A���������$�   H�|$8�z����   H�|$@L��H��$  H��H��$�   ��
  H�t$(�    H�l$������    H��$P  H�D$8H��u�   H���    H��$h  H�� �   Ǆ$�      HF�H��$`  H�|$8��$�   +�$�   �����H��$  �    H��$  H��uH��$   �   H���    H��$  H�� �   D��$�   Ǆ$�      HG�H��$  E��u$H��$�   H�Ѓ��D$H��$   H�D$P����H��$�  H��$�  �    H��$�  H��u�   H���    H��$�  H�� �   H�\$PǄ$X      HG�H��$�  H��$�   H�Ѓ��D$����H��$�  H�������L��$�  1�L��I�4� ���H��H��HӉX�H�� H9�u���T���H�wH;�$�  vH�|$H�    H��$�  L��$�  H�w�|$ H��$�  A�������t$`H�|$H�E���H��$�  H��$  H9�vH��$   H��H���    H��$  H9�HF�H��H��H��$  tH��$�  H��$  �    ��$H  D��$�   H��$�  ��$�  E���L  H��$�  H��$�  H9�sH��H���    H��$�  H9�H��HG�H��H��$�  tH��$�  H��$�  �    ��$H  �   H�߉�$X  �Q���H�\$PH��$�  H����  L��$�  H��E1�E1�L��$�   L�$M��H��$�   L�ɋ1L��E��E1�H��L�L�I��H��M�� I��H��I�� L��L��D�H�� H�� I�I�L�� H�� I�I�H��I9�u�L��L�$I��L	�uF�[  f�H�|$H�    H��$�  L��$�  L�@M�� I�� L��$�  A��L��L	��  D��I�pH;�$�  w�L��I����H�|$@L��H��$  H��H��$�   �  H�t$0�    H�\$�j���H��$�   H��$�   ����H��$`  H��tQH��$X  ��H��H��D� ��H��O��J�B�P�H�� H9�u�Ӆ�tL�FL;�$h  ��  L��$`  ��H�|$HH�T$8H���    L��$�   ��I�G�Ã�0H�pI;wvI�L���I�GH�pH��$�   H�WH�w�������$�   H�|$H�6���H��$X  �    H��$h  H��u_H��$P  �   H��H�D$8�    H��$h  H�|$8H�� �   ��$�   Ǆ$�      HG�+�$�   H��$`  ������S���H��$P  H�\$8H���I�������1�1������D��$H  L��$`  �,$D��$�  A�T- C�'9���  ��  D��L��$�  D)��D$����  �$É�L9��%  L9�$�T$IG�H��$�  ��H��$�  D���   Ic�Ic�D�E���H)�H��   H���  A���  Hc$L�D��H�H�L������H��H��I��1��Ao$$H��I9�u��D�Ƀ��)�)�9�t@HcЋ4�Hcщ4��p��Q���t*Hc�Hc�H�4�    ��L��    ����t	�D7�B�D�HcT$1�I��H���    D��$H  E)�D��$�  D��$H  �$    �k�E)�E��M��tlL��$�  H��$X  D��1�G�'fD  ��D��҃�I�<�H���L�H)ЉH��?H��D9�u�C�#��t��I����     ��H��x����~#H��$�  Hc��
f�H����~���Å�t����L9�vH�|$HH���    L��$�  L��$`  L9�$D��$H  IG�D��$�  D�PA�T C�'H��$�  Hc�9���  ��  H�|$HH�T$8D�T$H���    D�T$���  H��$�   H�P�$��2A��	��  HcL$�
�5���A��U�A�t$��    E)�A��DH�D9��\  Hc�D)�L��$�  H��$X  �A�H��H�H)��A��H����H9��%  ���A9\�t�����H�|$HH�T$8H���    ����  H��$�   �1   H�S�W���H��$�   H�|$H�(�	���D��$�   E����  ��$�   ����H��$�   � �$����~����)�;�$�   �    �$�   �����Hc�H��    L�D�H���Hct$H��I)�H)΋D��H���BI9�u�����H��$P  �   H��H�D$8�    H��$h  �W���H�D$P    �#���Ic�H��H��    L�D�H�HcL$I)�H)�T��H���PI9�u��[���H�D$PH�HH��tbH�p1�H��H�<�D� ��H��O��J�B�P�H�� H9�u�Ӆ�t2L�|$PL�AM;GvL��L���    I�OI�wL�AH�D$PL�@��D�l$�x���H�l$ �X���H�l$�,���A�ٍk�A�T$��    E)��DH�D9�|L�A�D)�H��L��$�  H��$X  H�H)��f���H����H9�t�֋4�A9t�t�����D�$����9�~�����D�$�k������H�\$�p���H�|$HH���    L��$�  L��$`  ����H�|$8L���    H��$`  H��$X  L�F�&���I�H��L���I�G�����H��$�   �0   H�S����E��������������H�|$HH�T$8H���    �������������$���������fD  HcL$�
:���^  H�D$@��$�   H��$�   H���S�H)���0H�WH��HʀH9��$  H�WH�4
�>:tـ::�Z���H��$�   �1� �G���u
A�������H��$�   A�B0H�S������    H������H��$P  HǄ$`     Ǆ$�      H�D$8�����    H�������H��$P  HǄ$`     Ǆ$�      H�D$8�����D9�����������H��$   H������H�D$PH9�tH����������H��$�  H�D$H�������$�   �����H��$�   � �$������H��$�   H�P������D$�t���Ic�H��    H�L�H�D��H��H)�I��Hc$H)�D��H���BI9�u��8���H���^����    ���    ��H���    ��H���    ��H���    ��AVE1�AUATI��USH��0  L�5    dH�%(   H��$(  1�H�\$0H�|$I�FfHn�fHn�fl�)D$fo    )D$ �    H�l$L�l$ I�|$I�<$H��L�t	H����   L�l$I��wkI��uU�E A�D$M�l$I�FB�/ H�|$H�D$H9�t�    H��$(  dH+%(   ulH��0  L��[]A\A]A^�@ M��t��)f�     H�t$1�L���    I�$H��H�D$I�D$L��H���    L�l$I�<$�k���H�=    �    �    ��H���    f.�     ��AWM��AVM��AUI��ATI��U��SH��   H�L$dH�%(   H��$�   1��    H�T$L��L��H�|$ M��H���    H�D$`��H��H�D$H��H��P L�|$ L�l$(L�t$PL�t$@L��L�t	M���K  L�l$I����  I���  A��D$PL��L�l$HB�( H��������?H+D$HH���  L�l$@�   H�5    L���    L�L$@L�D$H�   L�|$pH�T$hH��H�t$`M9�HE|$PI�H9�vL9�HED$pH9��c  L���    L��$�   H�PL��$�   H�H9��#  H��$�   H�HH��$�   H�HH��$�   L��H��$�   H�H�@    �@ �    H��$�   L9�t�    H�|$@L9�t�    H�|$`L9�t�    H�    H�|$ A�l$I�\$H��I�$H�D$0H9�t�    H��$�   dH+%(   ��   H�ĸ   L��[]A\A]A^A_� M����   L���{����    H�t$H�|$@1��    H�D$@H��H�D$H�D$PL��L���    L�l$H�D$@�7��� �o@)�$�   �����fD  H�|$L��1�1��    L��$�   H�PL��$�   H�H9�������oH)�$�   ����H�=    �    H�=    �    �    L���c�����H��L�|$p�    ��H���    ��H���    ��H���    ��H���    �    ��AWH��H���   AVAUATUSH��H��HdH�%(   H�D$81��    H9��    H�D$8dH+%(   uH��H[]A\A]A^A_��    ff.�      ��ATE1�UH��SH��   L�%    dH�%(   H��$  1�H�\$ H��I�D$fHn�fHn�fl�)$fo    )D$�    H�t$H�T$H���    H�|$I�D$H�$H9�t�    H��$  dH+%(   uH��   []A\��    ��H���    fD  ��H��H��I��H��H��H�    I��L��H�8�    �     ��AWAVAUI��ATU��SH��x�~    H�L$��  H�T$    dH�%(   H�D$h1�H�G    ����y�ع�  ��H�5    L�%    ����Hc�H�H�� H)�H;L$�G  L�=    L�t$`I�\$�~    H�    L�d$0L�%    L�t$HL��L�t$0    H�D$`�{   H�D$8   L�|$@)D$P��     H9�t.�H��H�Q<{tu<}u�H9��   �y}��  H�QH9�u�H�    E1�L��L��   L�D$0�   H�D$0�l$@�    H�D$hdH+%(   ��  H��x[]A\A]A^A_�D  H9��
  �A<}�  <{��   <:t?H�T$(�PЀ�	��   ��A<9�N  H����C���H���:  H�=    �     �D$@����  �H�L$@;D$D�C  �
��}t:��:�>  H��H��H+L$0H�T$0H)L$8���{  H9���  �:}��  H������<0�p  H�Q1�H�T$(H9��G  �
��:t	��}�6  �L$@���  �D$@����;D$D�j���H�=    �    f�     �D$@���{  �H�L$@;D$D�z���H�=    �    �    H�    L�=    L�t$`H�t$0L�d$0L��I�\$H�D$`�{   H�D$8   L�|$@L�t$HH�t$)D$P�f�H9�t.�H��H�Q<{te<}u�H9��#  �y}�  H�QH9�u�H�D$E1ɹ�   L��L�D$0�   L��H�D$0H�D$H�D$8H�    H�D$@�    ���� H9��z  �A<}�s  <{��   <:twH�T$ �PЀ�	�  <0��  ����H�|$ H���    H�T$ H9��  �
��:t	��}��  �t$@����  �D$@����;D$D|0H�=    �    �    �D$@����  �H�L$@;D$D��  �
��}t:��:�]  H��H��H+L$0H�T$0H)L$8����   H9��)  �:}�   H�������     H�L���T�PH���t����    ����H�|$(H���    H�T$(����@ ��A<9��   H����C���H����   H�=    �    H�=    �    �H�=    �    @ �D$@����   �H�L$@;D$D�R���H�=    �    �    H�H�|$�T�PH������H�=    �    H�Q1�H�T$ �j���H�=    �    H�=    �    H�=    �    H�=    �    H�=    �    H�=    �    H�=    �    H�=    �    H�=    �    H�=    �    H�=    �    H�=    �    H�=    �    H�=    �    H�=    �    �    H�=    �    H�=    �    ���    ���    ff.�      ��AWAVAUATI��U��SH��   H�|$L�l$0dH�%(   H��$�   1��    ��L��H��H� H���P A�   1�1�L��H�    �    L�t$`H�PL�t$PH�H9��@  H�L$PH�HH�L$`H�H�@ L��H�L$XH�H�@    �    H�|$PL��1�I��1��    L��$�   H�PL�|$pH�H9���   H�L$pH�HH��$�   H�H�@ L�l$H�t$pL��H�L$xH�H�@    �    H�|$pL9�t�    H�|$PL9�t�    H�|$0H�D$@H9�t�    H�    L��l$ H�\$(H��H�D$�    I��H��tmH���    H�T$L��I�4�    L���    H��$�   dH+%(   uEH�Ĩ   []A\A]A^A_�D  �o@)D$`������oH)�$�   ����H�=    �    �    ��H���    ��H���    ��H���    ��H���    ��H���     ��ATUH��SH�WH��L�gH��H��H�H9�rH��xH���f�H��������H9�HB�H��xZH���    H�SH��H��u.H�KH�� H�k�I9�t[L��]A\�    f�     []A\� L��H���    H�����     �               ��ATUH��SH�WH��L�gH��H��H�H9�rH��H��=tkH��������H9�HB�H��H��=uYH�<�    �    H�SH��H��tL��H���    H��H�KH�� H�k�I9�t[L��]A\�    @ []A\� H��� H��>t
�    D  �               ��ATUH��SH�WH��L�gH��H��H�H9�rH��H��=tkH��������H9�HB�H��H��=uYH�<�    �    H�SH��H��tL��H���    H��H�KH�� H�k�I9�t[L��]A\�    @ []A\� H��� H��>t
�    D  �               ��ATUH��SH�WH��L�gH��H��H�H9�rH��H��=tkH��������H9�HB�H��H��=uYH�<�    �    H�SH��H��tL��H���    H��H�KH�� H�k�I9�t[L��]A\�    @ []A\� H��� H��>t
�    D  �               ��AWI�������AVAUATUH��SD���   H��D�FD���   ����   E�D�mD�D��D9�M�A��JD9���   �   D9���   A9�A��A�E�EN�E9�EO�D9���   1�f�     9�~A9�~g1�A9�~A9�A��L�{E)�Mc�G�4�L�9�A9�~A��L�}A)�Mc�G�4�L�H9�w=H)�H��wL��H�� D9�}�H���[]A\A]A^A_É�M�sD)�Hc�A���fD  [�   ]A\A]A^A_��     [�����]A\A]A^A_�1��%s:%d: assertion failed: %s invalid utf8 number is too big basic_string::append :  cannot write to file {}{}  ��ATI���   UP�    L��H��H���    H�    H�    H��H�5    H��H�E �    ��I��H���    L���    �H�    H�5    H���    H�    H�5    H���    ��I���H���    H�    H�{H��H�H9|$Pt�    L���    ���H��H�    H��$�  H��H��$�  H;�$�   t�    H�    H��$  H��H��$   H;�$�   t�    H�    H��$X  H��H��$P  H;|$(t�    H�    H��$�  H��H��$�  H;|$0t�    H���    �   �    H�5    H��H���    H�    H�    H��H�5    H��H�E �    H�    H��$�   H��H��$�   H;|$@������    �������H��H���    �����H�|$I�FH�D$H9�t�    H���    H�|$@L9�uSL�|$pH�|$`L9�t�    H�|$ H�D$0H9�t�    H���    H��$�   L9�t�    H�|$@L9�t��    ��    릿    L�=    I���    L�<$L��M�gI��H�D$(H�D$   H�D$    H�D$H�D$     �D$(    �H�G��{uNL��L���    H��L9�u��    f��E1�I��0L���   L��)$�    H�    H�5    L���    ��}u�L9�u#H�=    �    ��H��L���    H���    �}u�H���H�|$I�D$H�$H9�t�    H���    �    L���    H���    �    L���    H��H��$�   dH+%(   uWH�|$H�Ĩ   L���[]A\A]A^A_�    H�|$pL9�t�    H�|$PL9�t�    H�|$0H�D$@H9�t�    H����      ��H C  �� ���� ��� �� ��� ��, ^  ��2  :� V  j� �  ��-  5n �  ��2  :� V  j� �  ��-  5n �  ��:��Z ��Z �
�Z ���Z ���Z ���Z �8�Z �;�Z �=��Z ���  �� � ����  �� �  ��m� ��� �  �����
 �
  ��Z�	 ���	 ��� �	  ����  ��� �  �� �  ���  �2� �  ��@��  �� �
  �|� �  �;� ��  �Q� ��  �� ��  ����  ��� �  �� �  ���  �2� �  ��A��  �� �	  ��� �  �;� ��  �U� ��  �� ��  ��\�  ��� �  �� �  ��K��  �,� �  �	�� �  �� ��  �Q� �L  �<� �V  �#� ��  ��#��� �	  ��� �L  �� �  ��"�B� �  ��� �9  �� �  ��"�B� �  ��� �4  �� �  ��j� �	�� ��� �  ��a�� ��  ��3V  p� �� �� �� �� �� �� �� ��5  ��0  ��a2� �  �� �  ��[� ��  ��O��� �� �	� �	� �
� �
G� �� �� �� �)� �� �� �"� ��    ��)J�a������e�  }       ��   }                                          -+                      
                        	                   ^"{-f/.��1$	+D*��$$(4���7	
��9c	0!@8K/
	@ '	6:PI733.
�&RN(*V	NC
H'	u?A*;
Q��bH
��^"E
9
6,��<dSH	
FEHS9�F
GI7
9
�6��2��fu�Ċ��/�тG���9*`&
F
(��[eK9@����*	���1���k	�`��
snF��W	���G�B�P+��-�p:� ��)L
�DL=��<U4�,dV
��8,	����tY8
("N�T		)��%
�                               _"���D����5(��/4
PU
	:WPC-:%_ mj%������Y	j
Y+F
,1,��
!?L-t<<8+��/- !������/;	��-t���������7	�\����*8
8FtZY	��
	L����1���&���mx(*L����           ';>NO����	6=>V���67VW����5�����)14:EFIJNOde\��
69:����	7���
;>fi��o_��Zb��'(U�����������:?EQ���͠"%>?�� #%&(38:HJLPSUVXZ\^`cefksx}������Ю�y�no�                  	
$jk����	������� �����                    �xy���0WX����KL��./?\]_�ℍ��������������� )147:;=IJ]�������������� )14:;EFIJ^de�������)EIWde������������EIde���������񃅋����������H������INOWY^_�����������[\�����mq��no_}~�����FGNOXZ\^~��������rs�tu�/_&./�������ߚ@��0�����NOZ['/��no7=?BE����Sgu���������                               	
	 +,-.012���������	error  :      ��f~�fA~���A���� ���   ��   ��j���E����  i�� �   �    �?   A��  � ��)�)�i�O� H����H�    )�L��L��L��H��I��G� ��ATD��U��S��H�� H��H��H��H�� Hi���Q��H��%Dk�d��D)�D9���   	���  i�)\��1�����(\�wD  �Ѓ�i�)\������(\�v�i������ʁ������   �H�� []H	�A\��     1�E���{  A�   �   �����H�o0��b/5�I���.��� w8A�Y��    A��I��)�I��I��E����D���L����@   )�H���;���A���D��D)ڍJiњ  ������B�@���  �U���M�ʃ��ʹ@   )���L��H��H�ك�8��b  ���&���f.�     ��������fD  Di�	�	 �   H�    ��   A��� A��D)�Eiȱl��H�H�<��(   A��H��I��A�H��D)�I)�H��H��I��H�H��������D�։����H��H��#���9�sO�'   D)�H�����������   9��� ��D��H�� H	��f�A�������B��d   �����f�     i�)\��A��1�����(\�wf�     ��i�)\������(\�v�i������ʁ����w����A��~���D  ��������i����     �    ���)�I��E��HE�����     ��AWfH~�I������� AVI!�H��4AUATUSH��(dH�%(   H�D$1����  ��  D������M���  �&  �   I��4�?   Ai�� M��I��A����)�)�Hc���Hi���KH��#)ȍ@H�H��H    �������L�H�Xi�O� ��E�4D)�)���  K�, ��I��H��I��D��H��H��H��H��I��H��I��I��M��H���S㥛� H��L�I�� H�L$I��H��H��i��  A)�E9��4  E����  H���z  A���p  H��A��  A��H��E)�E�A2Ai��  ������H�4J=�  w6L��A�@   A��H��E)�H��D��H�H��H��H�ك�A8��T  H��H����H�L$dH+%(   ��  H��([]A\A]A^A_��     1�M��t�M�¾7   ��   A�   I��A�	   I��; OH� H����خ�O�A��A�7   �����H�mQ��3�{ L��D��H�H�� I��H��D��I��D��H��L	�H	�L�Z�k���f������H�M�L��A�@   H��E)�H��H�T$H�H�$D��H�$I��I��D��H��I	���D��uL��������    H���a�w̫��H��H��I��H�������uH���a�w̫L9���  H�)\���(\�H��1�I�\���(\�H��H��L9�wfD  H��H����H��L9�v�H���������H��������H��H��H9�w��H���H���X���D  Ei�	�	 �$  A��� A��D)�Aiȱl��Hc���Hi���K��E�	H��#)Ѝ@H�D�������D��H��H    ��L�`H��D)�tYEi�O� H�    A��D)�)�Hc�A��H��L��H��I��I��H�ȹ@   H�&L��L�H�� D)�H�T$H��D��H��H	�I��L��   L��M��H��5D)�H��6��5  L�I)�H��I���H���������H��I���H��H��H��H��H�L9���   �
   L��D)�H��H��H��H��A����X  L9�H�� H��D���	���fD  H���   ��i�)\������(\�w@ �΃�i�)\������(\�v�i�������=����X��������N���D  H���a�w̫A��H��H��H�������uH���a�w̫H9���   H�)\���(\�H��1�H�\���(\�H��H��H9�wH��H����H��H9�v�H���������H��������H��H��H9�w��H��A�������    i�O� ��)�A��H�    A)�Hc�H��H��H��H��H��H��D��I��A�@   E)�I��H���@�����H��H�������D��I��H��D��I��L	������H�������H��i�)\�ֺ   ��=(\�w@ �ƃ�i�)\����=(\�v�i�������=����1��������'����             ��H�7�        ��ATH�6I��H��t�    L��A\�@ �    L��A\�     ��AUATI��UH��PH�t$L�l$H�t$L��dH�%(   H�D$H1��    L���    H��L���    H�E H�|$ H���P H�T$(H��t]H�E H���PH�T$(I�L$H�t$0I�$H�L$ H9�t>I�$H�L$0I�L$I�T$A�D$ H�D$HdH+%(   u$H��PL��]A\A]Ð1��@ foD$0AD$���    ��H���	��H���H�|$ H�D$0H9�t�    H���    L���    H���           ��ATUH��(H�|$H�l$H�t$H��dH�%(   H�D$1��    H���    H��H� �PH��A���    H�D$dH+%(   uH��(D��]A\��    ��I��H���    L���               ��H9���  AWH�G AVAUI��ATI��UH��SH��L�wH�D$�    L��H�UL)�N�<3I9���   H�E H� H;    ��   H��L�EH��H�I9���   H����   I��L��L�$�    L�uL�$H��M����   H�}L��L�}L;D$tL���    H�UL�uH�}L)�H9�HF�H��uIL�uM9��Q���H��[]A\A]A^A_�f.�     L��H����H�UL�uL)�H�}H9�HF�H��t�L�L��H��I��    L�uI�L�uM9������H��[]A\A]A^A_�f�     H��������I9�LB�M�������    �L��L���    L�$H������f�     �               ��AUATI��UH��PH�t$L�l$H�t$L��dH�%(   H�D$H1��    L���    H��L���    H�E H�|$ H���P H�T$(H��t]H�E H���PH�T$(I�L$H�t$0I�$H�L$ H9�t>I�$H�L$0I�L$I�T$A�D$ H�D$HdH+%(   u$H��PL��]A\A]Ð1��@ foD$0AD$���    ��H���	��H���H�|$ H�D$0H9�t�    H���    L���    H���           ��ATUH��(H�|$H�l$H�t$H��dH�%(   H�D$1��    H���    H��H� �PH��A���    H�D$dH+%(   uH��(D��]A\��    ��I��H���    L���               ��H9���  AWAVAUI��ATI��UH��SH��L�w�     L��H�EL)�H��N�<3I9��%  H�U H�H;    ��   H��L�EH��H�I9�wH��������H9��  I9�LB�H��������I9��  J�<�    L�$�    L�uL�$H��L��H��tL��H�T$�    H�T$L�$H��H�u H�}L��L�}I9�tL���    L�uH�EH�}J��    L)�H9�HF�I��I��taH�L��L��M��    H]H�]I��M9������H��[]A\A]A^A_�D  L��H����H�EL�u�     H�}J��    �f�I�L�uM9������H��[]A\A]A^A_ÐI��������     I��>t
�    D  �     �       ��AWI��I��AVAUATUH��SH��H��   dH�%(   H��$�   1�H����  L�d7�L9���  L�
fo    L�    fo    fo    fo    �+�     �   ���  �  I�I��L�M9��e  A�E�h)$E�p�D$   ��E���D$P    ��)L$@���D$0   I�<A�@)T$ �D$p    @����H��)D$`L���#�A���� � ��A���  D	�E��A��?D	�	ʋL�@��1�;T� A����A����A���7  E1����� A��A����A��D	���0A��A��D	�D	���	ȋL�`��*���������������������?��   �� ����`��   ��  ������   �с�������   ����  ��   �� ����O  v�� � ���   ����H���l L�L)���   H��$�   dH+%(   �D  H�Ę   []A\A]A^A_Í� T�����+  ��   �� �����  vv�������	�,����   Iх��   I������ �ɀE1������D  ��������v��_  w
�   �������������Ov  �v�����?0  �j���I��I�������1�H��$�   L��H��   f��$�   Ǆ$�       Ƅ$�    �    L�fo    L�    fo    fo    H��H��fo    �2f�     �   ���  ��  I�L��H��L�H)�H9�������D�v)$D�n�D$   ��E���D$P    ��)L$@���D$0   M��F)T$ �D$p    A����M��)D$`I���B#�A���� � ��A���  D	�E��A��?D	�	�B�L�@��1�B;T� A����A����A����   E1���� A��A����A��D	��0A��A��D	�D	���	�B�L�`��*���������������������?��   �� ����`��   ��  ������   �с�������   ����  ��   �� ����O  vs�� � ���   ����H���` �ɀE1��N���D  ��������v��_  wJ�   �T����� T�����+  vH�� �����  v:�������	�8����   Iх�t0H��������������Ov  w���?0  t�I��L��������    L�������I������            ��AWI��AVAUATUH��SH��H��  dH�%(   H��$�   1�H���}  L�d7�L9��o  fo    fo    I��H�5    fo    fo    D  A�M E�MǄ$�      E�U)\$p��E��Ǆ$�       ��)�$�   ��Ǆ$�      H�A�E)�$�   Ǆ$�       ����I��)�$�   L���B#L�pA���� � ��I��A���  D	�E��A��?D	�	�B����   ��1�B;���   A����A����A���  E1ہ��� A��A����A��D	ك�0A��A��D	�D	���	�B����   ��*����uu��v	����   fIn�fHn�A�fl�A��    I��H�L)��  f�     H��$�   dH+%(   ��  H��  []A\A]A^A_��    �����H�t$`)D$0)L$ )T$)$�    H�t$`fo$��foT$foL$ foD$0u�����I�U�I���M�uM9��^���M������ �ɀE1��������"������\����H�T$H�4$)D$P)L$@)T$0)\$ �|$`�    H�4$H�T$��fo\$ foT$0foL$@foD$P��  �|$`���� L��$�   1�L��H�ڹ   L��M��Ǆ$�       f��$�   Ƅ$�    �    fo    fo    H�5    fo    fo    fD  A�$)\$pE�\$E�T$)�$�   ��E��Ǆ$�      ��)�$�   ��Ǆ$�       H�A�D$Ǆ$�      Ǆ$�       ����I��)�$�   H�� ��B#L�pA���� � ��A���  D	�E��A��?D	�	�B����   ��1�B;���   A����A����A���  E1Ɂ��� A��A����A��D	ɉ�A��A����0D	�D	�@��	�B����   ��*����u1��v	����   L�fIn�A�fHn�fl�A�E���D  ������   H�L$h�|$PH�t$`H�T$@)D$0)L$ )T$)$�    �|$PH�L$h����   ��H�t$`fo$foT$foL$ foD$0u"H�T$@I�I�L��L)�H9��8������� I��I��L��L)�H9���������@ �ɀE1��������"�!�����\����H���=��� H�������     I9�������=���  ��AUI��ATUS1�H��H�of�     H���t��H�� u�M�eL9�vcL��H��I�L9�v{I��L��H��=��   J�<�    �    I�UH��H��tH��H���    H��I�E I�MM�eH9�tH���    M�eAǅ�       L9�LF�M�eH��[]A\A]�D  L��H��=t�I��������L9�LC��i����        00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899                ��Hc҉�L�L�ʃ�cv7L�    @ �ȉ�H��Hi���QH��%k�d)�A�4pf�2�Ή���'  wԃ�	w��0H�B��J�L��ÐH�5    H�B��Nf�J�L���         ��Hc�H��L�L��H��cv\L�    I���(\���(�     H��H��H��H��I��H��H���H��H�H��H��H��H)�A�Qf�H��H��H='  w�H��	w��0H�F�L�҈N��f�     H�    H�F��Jf�V�L���         ��AWH�B AVAUATI��USH��H�D$H9���   H��I����I�L$I�l$F�<)I9���   M�l$I�D$H��D�{�I�mH9�v�I�$H�H;    ��   H��M�L$H��H�H9���   H��xuH��H��L�$�    M�l$L�$H��M����   I�L$I�l$L;L$tzL���    M�l$I�L$I�mI�l$F�<)I9��W���H��L��[]A\A]A^A_�fD  H��������H9�HB�H���t����    f�     H��L����I�L$M�l$I�m�����D  L��L��H���    L�$H���M���      ��ATI��H��H��L���    L��A\�invalid fill character '{' invalid fill            ��H��H��H�    D�D����������� H�H�H)�H��~���>t"��^��   ��<t-H9���   D��H�Ȁ�>u�A�   H��H9�uH���^@ A�   H��H9�t�A��{tlH��H�7H)�H��wiD�FH��t%D�AD�FH��tD�AD�FH��u�I�N�VH��H��Q	���D	ʈQ	H���f�     A�   ��H�=    �    H�=    �                   ��L�A��1�L�А��A���H���TJ�H9�t���0��	v�H��H�L)�H��	~0H��
t
D���fD  �@�K����0H�HH=���DF�D��� A��D���invalid format string argument not found unknown format specifier missing '}' in format string   cannot switch from manual to automatic argument indexing        cannot switch from automatic to manual argument indexing        compile-time checks for named arguments require C++20 support           ��SH�� dH�%(   H�D$1�H�GH9��j  H���W��}�  ��{t[��:ux�S���b  �J�K;S��   ���}�  ��:�V  H�PH��H+H�H)KH9��  �x}�  H��H��H�T$dH+%(   ��   H�� [�@ H�D$�B�<	��   ��0��   ����H�|$H�t$�    H�t$��H�D$H9���   ���}t	��:��   �K����   �C����;S�4���H�=    �    fD  �S��xn�J�K;S�H����փ�A��9w8H����C���H��s(H�=    �    @ H������H�G1�H�D$�a���H�=    �    �    H�=    �    H�=    �    H�=    �    H�=    �                   ��AWI���c   Hc�AVI�H9�    AUH�H��ATUSL�T$���   L�5    1�H��������I��G�z�GI�)\���(\�I���(\���(f.�     H��H��I��E1�H��<H!�I��H!�H�H��H��8H�H��I��H��H)�H��H�H��H��H��H��H)�H��H)�I��L�H�D$�H��H�T$�H��H�D$�I��I��H�I��H�H����H��Hk�H�Ƹ'  H��L�L9�H��A�NfA�
H��H��H��F����	   H9�    H�r$��0H�T$�I�B�A�r�[]A\A]A^A_�f�     H�H�    I�B��2fA�R�H�T$�[]A\A]A^A_�negative width width is not integer      ��H���|$ w�D$ H�    Hc�H�>��H�=    �    H�D$H=���wOH���fD  H�|$ H�D$y�H�=    �    �    �D$��y���fD  �D$�f�H�D$H��y���H�=    �                                            ��AWAVAUATI��UH��SH��H��xH�|$(��PЀ�	��   <0��  H��1�H�l$(H9��U  �U ��:t	��}�C  I�4$H�V�J����  H�~�B����f��)D$0H�W)D$@H����  ���q  ��    H����^  H�H��HGfo)\$0�  fD  ��A<9��  H����C���H����  L�wA�   L9�u�.H��s"I��L9�tA��P���9v��0<	v�fD  M��I)�I�$H�D$H�@H�HH��>H�L$ ��   H�@H�P�H�D$H�� H��HI�H�pH�t$H����   H�E1���    I��H��L;d$tyH�;H�<$�    L��L9�I��HF�H��tH�<$H���    ��u�M9�u�HcC��x>H�L$ f��)D$P)D$`H����   ��I�ύ�    I��A����   fD  H�=    �    @ H�|$(�����    H�l$(�	����    9�}�H�H��HG�o�P)L$0�T$@��t��T$@H��t$H�t$H�t$H�t$H�    L�t$HH�� �H��xL��[]A\A]A^A_�D  H�=    �    @ 9��X���H��HD$�oD�x)T$PD�|$`E���4���H�D$D�|$`H��t$h�t$h�t$h�t$h�    H�� ��H�L$H��fo$)d$P��H�=    �             ��UI��SH��H��H�dH�%(   H�D$81��B�<	H��vs��{tH�T$8dH+%(   ��  H��H[]� H�oH9���   �GL�L$<}��   <:��   H��H�T$�    H��H9���   �} }�   H�E듐1�fD  �0��H��A�ЍTN�H9�t���0��	v�H��H)�H��	~/H��
tH�=    �    f�     K�<��N�H�yH�����w׃��t�I�	�����D  H�=    �    @ I�QHcB����   I�q�Hf���JH�V)D$)D$ H��xW��V��    H���tGH��HFfo)T$f��T$ I��t$(�t$(�t$(�t$(�    H�� ������f�     9�|H�=    �    H��HF�o�P)L$��u����    H�=    �    negative precision precision is not integer          ��H���|$ w�D$ H�    Hc�H�>��H�=    �    H�D$H=���wOH���fD  H�|$ H�D$y�H�=    �    �    �D$��y���fD  �D$�f�H�D$H��y���H�=    �                                            ��AWAVAUATI��UH��SH��H��xH�|$(��PЀ�	��   <0��  H��1�H�l$(H9��U  �U ��:t	��}�C  I�4$H�V�J����  H�~�B����f��)D$