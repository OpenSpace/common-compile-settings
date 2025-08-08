##########################################################################################
#                                                                                        #
# OpenSpace                                                                              #
# Common Compile Settings                                                                #
#                                                                                        #
# Copyright (c) 2014-2025                                                                #
#                                                                                        #
# Permission is hereby granted, free of charge, to any person obtaining a copy of this   #
# software and associated documentation files (the "Software"), to deal in the Software  #
# without restriction, including without limitation the rights to use, copy, modify,     #
# merge, publish, distribute, sublicense, and/or sell copies of the Software, and to     #
# permit persons to whom the Software is furnished to do so, subject to the following    #
# conditions:                                                                            #
#                                                                                        #
# The above copyright notice and this permission notice shall be included in all copies  #
# or substantial portions of the Software.                                               #
#                                                                                        #
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED,    #
# INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A          #
# PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT     #
# HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF   #
# CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE   #
# OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.                                          #
##########################################################################################

# Last pass through the MSVC warning list:
# https://releases.llvm.org/20.1.0/tools/clang/docs/DiagnosticsReference.html


function (set_compile_options target)
  target_compile_options(${target} INTERFACE
    "-Wall"
    "-Wextra"
    "-Wmost"
    "-Wpedantic"
    "-Wabstract-vbase-init"
    "-Walloca"
    "-Wanon-enum-enum-conversion"
    "-Warray-bounds-pointer-arithmetic"
    "-Wassign-enum"
    "-Watomic-implicit-seq-cst"
    "-Watomic-properties"
    "-Wauto-decl-extensions"
    "-Wbad-function-cast"
    "-Wbinary-literal"
    "-Wbind-to-temporary-copy"
    "-Wbit-int-extension"
    "-Wbitfield-enum-conversion"
    "-Wbitwise-instead-of-logical"
    "-Wbitwise-op-parentheses"
    "-Wbool-conversion"
    "-Wcalled-once-parameter"
    "-Wcast-align"
    "-Wcast-function-type"
    "-Wcast-function-type-strict"
    "-Wcast-qual"
    "-Wclass-varargs"
    "-Wcomma"
    "-Wcompletion-handler"
    "-Wcomplex-component-init"
    "-Wcompound-token-split"
    "-Wconditional-uninitialized"
    "-Wconsumed"
    "-Wconversion"
    "-Wcovered-switch-default"
    "-Wctad-maybe-unsupported"
    "-Wdate-time"
    "-Wdeclaration-after-statement"
    "-Wdecls-in-multiple-modules"
    "-Wdeprecated-copy"
    "-Wdeprecated-copy-dtor"
    "-Wdeprecated-dynamic-exception-spec"
    "-Wdeprecated-implementations"
    "-Wdeprecated-redundant-constexpr-static-def"
    "-Wdirect-ivar-access"
    "-Wdisabled-macro-expansion"
    "-Wdivision-by-zero"
    "-Wdocumentation"
    "-Wdocumentation-pedantic"
    "-Wdocumentation-unknown-command"
    "-Wdollar-in-identifier-extension"
    "-Wdtor-name"
    "-Wduplicate-decl-specifier"
    "-Wduplicate-enum"
    "-Wduplicate-method-arg"
    "-Wduplicate-method-match"
    "-Wdynamic-exception-spec"
    "-Wembedded-directive"
    "-Wempty-translation-unit"
    "-Wenum-conversion"
    "-Wextra-semi"
    "-Wextra-semi-stmt"
    "-Wflexible-array-extensions"
    "-Wfloat-conversion"
    "-Wfloat-equal"
    "-Wformat-non-iso"
    "-Wformat-nonliteral"
    "-Wformat-pedantic"
    "-Wformat-signedness"
    "-Wformat-type-confusion"
    "-Wfour-char-constants"
    "-Wfunction-effects"
    "-Wglobal-constructors"
    "-Wheader-hygiene"
    "-Widiomatic-parentheses"
    "-Wimplicit-fallthrough"
    "-Wimport-preprocessor-directive-pedantic"
    "-Wincompatible-function-pointer-types-strict"
    "-Wincomplete-module"
    "-Winconsistent-missing-destructor-override"
    "-Winvalid-or-nonexistent-directory"
    "-Winvalid-utf8"
    "-Wkeyword-macro"
    "-Wlanguage-extension-token"
    "-Wlocal-type-template-args"
    "-Wlogical-op-parantheses"
    "-Wloop-analysis"
    "-Wmain"
    "-Wmethod-signatures"
    "-Wmissing-field-initializers"
    "-Wmissing-include-dirs"
    "-Wmissing-method-return-type"
    "-Wmissing-noreturn"
    "-Wmissing-prototypes"
    "-Wmissing-variable-declarations"
    "-Wnarrowing"
    "-Wnewline-eof"
    "-Wnon-virtual-dtor"
    "-Wnull-pointer-arithmetic"
    "-Wnull-pointer-subtraction"
    "-Wnullable-to-nonnull-conversion"
    "-Wold-style-cast"
    "-Wover-aligned"
    "-Woverlength-strings"
    "-Woverriding-method-mismatch"
    "-Wpointer-arith"
    "-Wpragma-pack"
    "-Wpragmas"
    "-Wrange-loop-analysis"
    "-Wreserved-id-macro"
    "-Wreserved-identifier"
    "-Wreserved-user-defined-literal"
    "-Wsemicolon-before-method-body"
    "-Wshadow"
    "-Wshadow-all"
    "-Wshift-sign-overflow"
    "-Wshorten-64-to-32"
    "-Wsign-compare"
    "-Wsign-conversion"
    "-Wsigned-enum-bitfield"
    "-Wsometimes-uninitialized"
    "-Wstatic-in-inline"
    "-Wstring-conversion"
    "-Wsuggest-destructor-override"
    "-Wsuggest-override"
    "-Wswitch-default"
    "-Wtautological-constant-in-range-compare"
    "-Wtautological-constant-out-of-range-compare"
    "-Wtautological-type-limit-compare"
    "-Wtautological-value-range-compare"
    "-Wthread-safety"
    "-Wthread-safety-reference-return"
    "-Wthread-safety-verbose"
    "-Wtype-limits"
    "-Wunaligned-access"
    "-Wundef"
    "-Wundefined-func-template"
    "-Wundefined-internal-type"
    "-Wundefined-reinterpret-cast"
    "-Wunnamed-type-template-args"
    "-Wunneeded-internal-declaration"
    "-Wunneeded-member-function"
    "-Wunreachable-code-aggressive"
    "-Wunsafe-buffer-usage"
    "-Wunused-const-variable"
    "-Wunused-exception-parameter"
    "-Wunused-member-function"
    "-Wunused-parameter"
    "-Wunused-result"
    "-Wunused-template"
    "-Wused-but-marked-unused"
    "-Wvariadic-macros"
    "-Wvla"
    "-Wweak-vtables"
    "-Wzero-as-null-pointer-constant"
    "-Wzero-length-array"
  )

  target_compile_options(${target} INTERFACE
    # "-Wno-attributes"
    # "-Wno-c++98-compat-bind-to-temporary-copy"
    "-Wno-deprecated-enum-enum-conversion"
    # "-Wno-missing-braces"
    # "-Wno-missing-designated-field-initializers"
    # "-Wno-ignored-attributes"
    # "-Wno-sign-compare"
    # "-Wno-suggest-destructor-override"
    "-Wno-unknown-attributes"

    # This should be removed as soon as https://github.com/g-truc/glm/issues/1349 is
    # addressed
    "-Wno-defaulted-function-deleted"
  )

  if (APPLE)
    # Apple has "deprecated" OpenGL and offers nothing but warnings instead
    target_compile_definitions(${target} INTERFACE "GL_SILENCE_DEPRECATION" "__gl_h_")
  endif ()
endfunction()
