#!/bin/sh -ex
# Auto generated. DO NOT EDIT.

rm -rf src
mkdir src
mkdir src/com
mkdir src/com/io7m
mkdir src/com/io7m/fppg
cp ApproximatelyEqualDouble.java src/com/io7m/fppg
cp ApproximatelyEqualDoubleTest.java src/com/io7m/fppg

#------------------------------------------------------------------------
# signed 8

./fppg com.io7m.fppg signed 1 6 > src/com/io7m/fppg/FixedI1F6Signed.java
./fppg-test.sh FixedI1F6Signed > src/com/io7m/fppg/FixedI1F6SignedTest.java
./fppg com.io7m.fppg signed 2 5 > src/com/io7m/fppg/FixedI2F5Signed.java
./fppg-test.sh FixedI2F5Signed > src/com/io7m/fppg/FixedI2F5SignedTest.java
./fppg com.io7m.fppg signed 3 4 > src/com/io7m/fppg/FixedI3F4Signed.java
./fppg-test.sh FixedI3F4Signed > src/com/io7m/fppg/FixedI3F4SignedTest.java
./fppg com.io7m.fppg signed 4 3 > src/com/io7m/fppg/FixedI4F3Signed.java
./fppg-test.sh FixedI4F3Signed > src/com/io7m/fppg/FixedI4F3SignedTest.java
./fppg com.io7m.fppg signed 5 2 > src/com/io7m/fppg/FixedI5F2Signed.java
./fppg-test.sh FixedI5F2Signed > src/com/io7m/fppg/FixedI5F2SignedTest.java
./fppg com.io7m.fppg signed 6 1 > src/com/io7m/fppg/FixedI6F1Signed.java
./fppg-test.sh FixedI6F1Signed > src/com/io7m/fppg/FixedI6F1SignedTest.java

#------------------------------------------------------------------------
# unsigned 8

./fppg com.io7m.fppg unsigned 1 7 > src/com/io7m/fppg/FixedI1F7Unsigned.java
./fppg-test.sh FixedI1F7Unsigned > src/com/io7m/fppg/FixedI1F7UnsignedTest.java
./fppg com.io7m.fppg unsigned 2 6 > src/com/io7m/fppg/FixedI2F6Unsigned.java
./fppg-test.sh FixedI2F6Unsigned > src/com/io7m/fppg/FixedI2F6UnsignedTest.java
./fppg com.io7m.fppg unsigned 3 5 > src/com/io7m/fppg/FixedI3F5Unsigned.java
./fppg-test.sh FixedI3F5Unsigned > src/com/io7m/fppg/FixedI3F5UnsignedTest.java
./fppg com.io7m.fppg unsigned 4 4 > src/com/io7m/fppg/FixedI4F4Unsigned.java
./fppg-test.sh FixedI4F4Unsigned > src/com/io7m/fppg/FixedI4F4UnsignedTest.java
./fppg com.io7m.fppg unsigned 5 3 > src/com/io7m/fppg/FixedI5F3Unsigned.java
./fppg-test.sh FixedI5F3Unsigned > src/com/io7m/fppg/FixedI5F3UnsignedTest.java
./fppg com.io7m.fppg unsigned 6 2 > src/com/io7m/fppg/FixedI6F2Unsigned.java
./fppg-test.sh FixedI6F2Unsigned > src/com/io7m/fppg/FixedI6F2UnsignedTest.java
./fppg com.io7m.fppg unsigned 7 1 > src/com/io7m/fppg/FixedI7F1Unsigned.java
./fppg-test.sh FixedI7F1Unsigned > src/com/io7m/fppg/FixedI7F1UnsignedTest.java

#------------------------------------------------------------------------
# signed 16

./fppg com.io7m.fppg signed 1 14 > src/com/io7m/fppg/FixedI1F14Signed.java
./fppg-test.sh FixedI1F14Signed > src/com/io7m/fppg/FixedI1F14SignedTest.java
./fppg com.io7m.fppg signed 2 13 > src/com/io7m/fppg/FixedI2F13Signed.java
./fppg-test.sh FixedI2F13Signed > src/com/io7m/fppg/FixedI2F13SignedTest.java
./fppg com.io7m.fppg signed 3 12 > src/com/io7m/fppg/FixedI3F12Signed.java
./fppg-test.sh FixedI3F12Signed > src/com/io7m/fppg/FixedI3F12SignedTest.java
./fppg com.io7m.fppg signed 4 11 > src/com/io7m/fppg/FixedI4F11Signed.java
./fppg-test.sh FixedI4F11Signed > src/com/io7m/fppg/FixedI4F11SignedTest.java
./fppg com.io7m.fppg signed 5 10 > src/com/io7m/fppg/FixedI5F10Signed.java
./fppg-test.sh FixedI5F10Signed > src/com/io7m/fppg/FixedI5F10SignedTest.java
./fppg com.io7m.fppg signed 6 9 > src/com/io7m/fppg/FixedI6F9Signed.java
./fppg-test.sh FixedI6F9Signed > src/com/io7m/fppg/FixedI6F9SignedTest.java
./fppg com.io7m.fppg signed 7 8 > src/com/io7m/fppg/FixedI7F8Signed.java
./fppg-test.sh FixedI7F8Signed > src/com/io7m/fppg/FixedI7F8SignedTest.java
./fppg com.io7m.fppg signed 8 7 > src/com/io7m/fppg/FixedI8F7Signed.java
./fppg-test.sh FixedI8F7Signed > src/com/io7m/fppg/FixedI8F7SignedTest.java
./fppg com.io7m.fppg signed 9 6 > src/com/io7m/fppg/FixedI9F6Signed.java
./fppg-test.sh FixedI9F6Signed > src/com/io7m/fppg/FixedI9F6SignedTest.java
./fppg com.io7m.fppg signed 10 5 > src/com/io7m/fppg/FixedI10F5Signed.java
./fppg-test.sh FixedI10F5Signed > src/com/io7m/fppg/FixedI10F5SignedTest.java
./fppg com.io7m.fppg signed 11 4 > src/com/io7m/fppg/FixedI11F4Signed.java
./fppg-test.sh FixedI11F4Signed > src/com/io7m/fppg/FixedI11F4SignedTest.java
./fppg com.io7m.fppg signed 12 3 > src/com/io7m/fppg/FixedI12F3Signed.java
./fppg-test.sh FixedI12F3Signed > src/com/io7m/fppg/FixedI12F3SignedTest.java
./fppg com.io7m.fppg signed 13 2 > src/com/io7m/fppg/FixedI13F2Signed.java
./fppg-test.sh FixedI13F2Signed > src/com/io7m/fppg/FixedI13F2SignedTest.java
./fppg com.io7m.fppg signed 14 1 > src/com/io7m/fppg/FixedI14F1Signed.java
./fppg-test.sh FixedI14F1Signed > src/com/io7m/fppg/FixedI14F1SignedTest.java

#------------------------------------------------------------------------
# unsigned 16

./fppg com.io7m.fppg unsigned 1 15 > src/com/io7m/fppg/FixedI1F15Unsigned.java
./fppg-test.sh FixedI1F15Unsigned > src/com/io7m/fppg/FixedI1F15UnsignedTest.java
./fppg com.io7m.fppg unsigned 2 14 > src/com/io7m/fppg/FixedI2F14Unsigned.java
./fppg-test.sh FixedI2F14Unsigned > src/com/io7m/fppg/FixedI2F14UnsignedTest.java
./fppg com.io7m.fppg unsigned 3 13 > src/com/io7m/fppg/FixedI3F13Unsigned.java
./fppg-test.sh FixedI3F13Unsigned > src/com/io7m/fppg/FixedI3F13UnsignedTest.java
./fppg com.io7m.fppg unsigned 4 12 > src/com/io7m/fppg/FixedI4F12Unsigned.java
./fppg-test.sh FixedI4F12Unsigned > src/com/io7m/fppg/FixedI4F12UnsignedTest.java
./fppg com.io7m.fppg unsigned 5 11 > src/com/io7m/fppg/FixedI5F11Unsigned.java
./fppg-test.sh FixedI5F11Unsigned > src/com/io7m/fppg/FixedI5F11UnsignedTest.java
./fppg com.io7m.fppg unsigned 6 10 > src/com/io7m/fppg/FixedI6F10Unsigned.java
./fppg-test.sh FixedI6F10Unsigned > src/com/io7m/fppg/FixedI6F10UnsignedTest.java
./fppg com.io7m.fppg unsigned 7 9 > src/com/io7m/fppg/FixedI7F9Unsigned.java
./fppg-test.sh FixedI7F9Unsigned > src/com/io7m/fppg/FixedI7F9UnsignedTest.java
./fppg com.io7m.fppg unsigned 8 8 > src/com/io7m/fppg/FixedI8F8Unsigned.java
./fppg-test.sh FixedI8F8Unsigned > src/com/io7m/fppg/FixedI8F8UnsignedTest.java
./fppg com.io7m.fppg unsigned 9 7 > src/com/io7m/fppg/FixedI9F7Unsigned.java
./fppg-test.sh FixedI9F7Unsigned > src/com/io7m/fppg/FixedI9F7UnsignedTest.java
./fppg com.io7m.fppg unsigned 10 6 > src/com/io7m/fppg/FixedI10F6Unsigned.java
./fppg-test.sh FixedI10F6Unsigned > src/com/io7m/fppg/FixedI10F6UnsignedTest.java
./fppg com.io7m.fppg unsigned 11 5 > src/com/io7m/fppg/FixedI11F5Unsigned.java
./fppg-test.sh FixedI11F5Unsigned > src/com/io7m/fppg/FixedI11F5UnsignedTest.java
./fppg com.io7m.fppg unsigned 12 4 > src/com/io7m/fppg/FixedI12F4Unsigned.java
./fppg-test.sh FixedI12F4Unsigned > src/com/io7m/fppg/FixedI12F4UnsignedTest.java
./fppg com.io7m.fppg unsigned 13 3 > src/com/io7m/fppg/FixedI13F3Unsigned.java
./fppg-test.sh FixedI13F3Unsigned > src/com/io7m/fppg/FixedI13F3UnsignedTest.java
./fppg com.io7m.fppg unsigned 14 2 > src/com/io7m/fppg/FixedI14F2Unsigned.java
./fppg-test.sh FixedI14F2Unsigned > src/com/io7m/fppg/FixedI14F2UnsignedTest.java
./fppg com.io7m.fppg unsigned 15 1 > src/com/io7m/fppg/FixedI15F1Unsigned.java
./fppg-test.sh FixedI15F1Unsigned > src/com/io7m/fppg/FixedI15F1UnsignedTest.java

#------------------------------------------------------------------------
# signed 24

./fppg com.io7m.fppg signed 1 22 > src/com/io7m/fppg/FixedI1F22Signed.java
./fppg-test.sh FixedI1F22Signed > src/com/io7m/fppg/FixedI1F22SignedTest.java
./fppg com.io7m.fppg signed 2 21 > src/com/io7m/fppg/FixedI2F21Signed.java
./fppg-test.sh FixedI2F21Signed > src/com/io7m/fppg/FixedI2F21SignedTest.java
./fppg com.io7m.fppg signed 3 20 > src/com/io7m/fppg/FixedI3F20Signed.java
./fppg-test.sh FixedI3F20Signed > src/com/io7m/fppg/FixedI3F20SignedTest.java
./fppg com.io7m.fppg signed 4 19 > src/com/io7m/fppg/FixedI4F19Signed.java
./fppg-test.sh FixedI4F19Signed > src/com/io7m/fppg/FixedI4F19SignedTest.java
./fppg com.io7m.fppg signed 5 18 > src/com/io7m/fppg/FixedI5F18Signed.java
./fppg-test.sh FixedI5F18Signed > src/com/io7m/fppg/FixedI5F18SignedTest.java
./fppg com.io7m.fppg signed 6 17 > src/com/io7m/fppg/FixedI6F17Signed.java
./fppg-test.sh FixedI6F17Signed > src/com/io7m/fppg/FixedI6F17SignedTest.java
./fppg com.io7m.fppg signed 7 16 > src/com/io7m/fppg/FixedI7F16Signed.java
./fppg-test.sh FixedI7F16Signed > src/com/io7m/fppg/FixedI7F16SignedTest.java
./fppg com.io7m.fppg signed 8 15 > src/com/io7m/fppg/FixedI8F15Signed.java
./fppg-test.sh FixedI8F15Signed > src/com/io7m/fppg/FixedI8F15SignedTest.java
./fppg com.io7m.fppg signed 9 14 > src/com/io7m/fppg/FixedI9F14Signed.java
./fppg-test.sh FixedI9F14Signed > src/com/io7m/fppg/FixedI9F14SignedTest.java
./fppg com.io7m.fppg signed 10 13 > src/com/io7m/fppg/FixedI10F13Signed.java
./fppg-test.sh FixedI10F13Signed > src/com/io7m/fppg/FixedI10F13SignedTest.java
./fppg com.io7m.fppg signed 11 12 > src/com/io7m/fppg/FixedI11F12Signed.java
./fppg-test.sh FixedI11F12Signed > src/com/io7m/fppg/FixedI11F12SignedTest.java
./fppg com.io7m.fppg signed 12 11 > src/com/io7m/fppg/FixedI12F11Signed.java
./fppg-test.sh FixedI12F11Signed > src/com/io7m/fppg/FixedI12F11SignedTest.java
./fppg com.io7m.fppg signed 13 10 > src/com/io7m/fppg/FixedI13F10Signed.java
./fppg-test.sh FixedI13F10Signed > src/com/io7m/fppg/FixedI13F10SignedTest.java
./fppg com.io7m.fppg signed 14 9 > src/com/io7m/fppg/FixedI14F9Signed.java
./fppg-test.sh FixedI14F9Signed > src/com/io7m/fppg/FixedI14F9SignedTest.java
./fppg com.io7m.fppg signed 15 8 > src/com/io7m/fppg/FixedI15F8Signed.java
./fppg-test.sh FixedI15F8Signed > src/com/io7m/fppg/FixedI15F8SignedTest.java
./fppg com.io7m.fppg signed 16 7 > src/com/io7m/fppg/FixedI16F7Signed.java
./fppg-test.sh FixedI16F7Signed > src/com/io7m/fppg/FixedI16F7SignedTest.java
./fppg com.io7m.fppg signed 17 6 > src/com/io7m/fppg/FixedI17F6Signed.java
./fppg-test.sh FixedI17F6Signed > src/com/io7m/fppg/FixedI17F6SignedTest.java
./fppg com.io7m.fppg signed 18 5 > src/com/io7m/fppg/FixedI18F5Signed.java
./fppg-test.sh FixedI18F5Signed > src/com/io7m/fppg/FixedI18F5SignedTest.java
./fppg com.io7m.fppg signed 19 4 > src/com/io7m/fppg/FixedI19F4Signed.java
./fppg-test.sh FixedI19F4Signed > src/com/io7m/fppg/FixedI19F4SignedTest.java
./fppg com.io7m.fppg signed 20 3 > src/com/io7m/fppg/FixedI20F3Signed.java
./fppg-test.sh FixedI20F3Signed > src/com/io7m/fppg/FixedI20F3SignedTest.java
./fppg com.io7m.fppg signed 21 2 > src/com/io7m/fppg/FixedI21F2Signed.java
./fppg-test.sh FixedI21F2Signed > src/com/io7m/fppg/FixedI21F2SignedTest.java
./fppg com.io7m.fppg signed 22 1 > src/com/io7m/fppg/FixedI22F1Signed.java
./fppg-test.sh FixedI22F1Signed > src/com/io7m/fppg/FixedI22F1SignedTest.java

#------------------------------------------------------------------------
# unsigned 24

./fppg com.io7m.fppg unsigned 1 23 > src/com/io7m/fppg/FixedI1F23Unsigned.java
./fppg-test.sh FixedI1F23Unsigned > src/com/io7m/fppg/FixedI1F23UnsignedTest.java
./fppg com.io7m.fppg unsigned 2 22 > src/com/io7m/fppg/FixedI2F22Unsigned.java
./fppg-test.sh FixedI2F22Unsigned > src/com/io7m/fppg/FixedI2F22UnsignedTest.java
./fppg com.io7m.fppg unsigned 3 21 > src/com/io7m/fppg/FixedI3F21Unsigned.java
./fppg-test.sh FixedI3F21Unsigned > src/com/io7m/fppg/FixedI3F21UnsignedTest.java
./fppg com.io7m.fppg unsigned 4 20 > src/com/io7m/fppg/FixedI4F20Unsigned.java
./fppg-test.sh FixedI4F20Unsigned > src/com/io7m/fppg/FixedI4F20UnsignedTest.java
./fppg com.io7m.fppg unsigned 5 19 > src/com/io7m/fppg/FixedI5F19Unsigned.java
./fppg-test.sh FixedI5F19Unsigned > src/com/io7m/fppg/FixedI5F19UnsignedTest.java
./fppg com.io7m.fppg unsigned 6 18 > src/com/io7m/fppg/FixedI6F18Unsigned.java
./fppg-test.sh FixedI6F18Unsigned > src/com/io7m/fppg/FixedI6F18UnsignedTest.java
./fppg com.io7m.fppg unsigned 7 17 > src/com/io7m/fppg/FixedI7F17Unsigned.java
./fppg-test.sh FixedI7F17Unsigned > src/com/io7m/fppg/FixedI7F17UnsignedTest.java
./fppg com.io7m.fppg unsigned 8 16 > src/com/io7m/fppg/FixedI8F16Unsigned.java
./fppg-test.sh FixedI8F16Unsigned > src/com/io7m/fppg/FixedI8F16UnsignedTest.java
./fppg com.io7m.fppg unsigned 9 15 > src/com/io7m/fppg/FixedI9F15Unsigned.java
./fppg-test.sh FixedI9F15Unsigned > src/com/io7m/fppg/FixedI9F15UnsignedTest.java
./fppg com.io7m.fppg unsigned 10 14 > src/com/io7m/fppg/FixedI10F14Unsigned.java
./fppg-test.sh FixedI10F14Unsigned > src/com/io7m/fppg/FixedI10F14UnsignedTest.java
./fppg com.io7m.fppg unsigned 11 13 > src/com/io7m/fppg/FixedI11F13Unsigned.java
./fppg-test.sh FixedI11F13Unsigned > src/com/io7m/fppg/FixedI11F13UnsignedTest.java
./fppg com.io7m.fppg unsigned 12 12 > src/com/io7m/fppg/FixedI12F12Unsigned.java
./fppg-test.sh FixedI12F12Unsigned > src/com/io7m/fppg/FixedI12F12UnsignedTest.java
./fppg com.io7m.fppg unsigned 13 11 > src/com/io7m/fppg/FixedI13F11Unsigned.java
./fppg-test.sh FixedI13F11Unsigned > src/com/io7m/fppg/FixedI13F11UnsignedTest.java
./fppg com.io7m.fppg unsigned 14 10 > src/com/io7m/fppg/FixedI14F10Unsigned.java
./fppg-test.sh FixedI14F10Unsigned > src/com/io7m/fppg/FixedI14F10UnsignedTest.java
./fppg com.io7m.fppg unsigned 15 9 > src/com/io7m/fppg/FixedI15F9Unsigned.java
./fppg-test.sh FixedI15F9Unsigned > src/com/io7m/fppg/FixedI15F9UnsignedTest.java
./fppg com.io7m.fppg unsigned 16 8 > src/com/io7m/fppg/FixedI16F8Unsigned.java
./fppg-test.sh FixedI16F8Unsigned > src/com/io7m/fppg/FixedI16F8UnsignedTest.java
./fppg com.io7m.fppg unsigned 17 7 > src/com/io7m/fppg/FixedI17F7Unsigned.java
./fppg-test.sh FixedI17F7Unsigned > src/com/io7m/fppg/FixedI17F7UnsignedTest.java
./fppg com.io7m.fppg unsigned 18 6 > src/com/io7m/fppg/FixedI18F6Unsigned.java
./fppg-test.sh FixedI18F6Unsigned > src/com/io7m/fppg/FixedI18F6UnsignedTest.java
./fppg com.io7m.fppg unsigned 19 5 > src/com/io7m/fppg/FixedI19F5Unsigned.java
./fppg-test.sh FixedI19F5Unsigned > src/com/io7m/fppg/FixedI19F5UnsignedTest.java
./fppg com.io7m.fppg unsigned 20 4 > src/com/io7m/fppg/FixedI20F4Unsigned.java
./fppg-test.sh FixedI20F4Unsigned > src/com/io7m/fppg/FixedI20F4UnsignedTest.java
./fppg com.io7m.fppg unsigned 21 3 > src/com/io7m/fppg/FixedI21F3Unsigned.java
./fppg-test.sh FixedI21F3Unsigned > src/com/io7m/fppg/FixedI21F3UnsignedTest.java
./fppg com.io7m.fppg unsigned 22 2 > src/com/io7m/fppg/FixedI22F2Unsigned.java
./fppg-test.sh FixedI22F2Unsigned > src/com/io7m/fppg/FixedI22F2UnsignedTest.java
./fppg com.io7m.fppg unsigned 23 1 > src/com/io7m/fppg/FixedI23F1Unsigned.java
./fppg-test.sh FixedI23F1Unsigned > src/com/io7m/fppg/FixedI23F1UnsignedTest.java

#------------------------------------------------------------------------
# signed 32

./fppg com.io7m.fppg signed 1 30 > src/com/io7m/fppg/FixedI1F30Signed.java
./fppg-test.sh FixedI1F30Signed > src/com/io7m/fppg/FixedI1F30SignedTest.java
./fppg com.io7m.fppg signed 2 29 > src/com/io7m/fppg/FixedI2F29Signed.java
./fppg-test.sh FixedI2F29Signed > src/com/io7m/fppg/FixedI2F29SignedTest.java
./fppg com.io7m.fppg signed 3 28 > src/com/io7m/fppg/FixedI3F28Signed.java
./fppg-test.sh FixedI3F28Signed > src/com/io7m/fppg/FixedI3F28SignedTest.java
./fppg com.io7m.fppg signed 4 27 > src/com/io7m/fppg/FixedI4F27Signed.java
./fppg-test.sh FixedI4F27Signed > src/com/io7m/fppg/FixedI4F27SignedTest.java
./fppg com.io7m.fppg signed 5 26 > src/com/io7m/fppg/FixedI5F26Signed.java
./fppg-test.sh FixedI5F26Signed > src/com/io7m/fppg/FixedI5F26SignedTest.java
./fppg com.io7m.fppg signed 6 25 > src/com/io7m/fppg/FixedI6F25Signed.java
./fppg-test.sh FixedI6F25Signed > src/com/io7m/fppg/FixedI6F25SignedTest.java
./fppg com.io7m.fppg signed 7 24 > src/com/io7m/fppg/FixedI7F24Signed.java
./fppg-test.sh FixedI7F24Signed > src/com/io7m/fppg/FixedI7F24SignedTest.java
./fppg com.io7m.fppg signed 8 23 > src/com/io7m/fppg/FixedI8F23Signed.java
./fppg-test.sh FixedI8F23Signed > src/com/io7m/fppg/FixedI8F23SignedTest.java
./fppg com.io7m.fppg signed 9 22 > src/com/io7m/fppg/FixedI9F22Signed.java
./fppg-test.sh FixedI9F22Signed > src/com/io7m/fppg/FixedI9F22SignedTest.java
./fppg com.io7m.fppg signed 10 21 > src/com/io7m/fppg/FixedI10F21Signed.java
./fppg-test.sh FixedI10F21Signed > src/com/io7m/fppg/FixedI10F21SignedTest.java
./fppg com.io7m.fppg signed 11 20 > src/com/io7m/fppg/FixedI11F20Signed.java
./fppg-test.sh FixedI11F20Signed > src/com/io7m/fppg/FixedI11F20SignedTest.java
./fppg com.io7m.fppg signed 12 19 > src/com/io7m/fppg/FixedI12F19Signed.java
./fppg-test.sh FixedI12F19Signed > src/com/io7m/fppg/FixedI12F19SignedTest.java
./fppg com.io7m.fppg signed 13 18 > src/com/io7m/fppg/FixedI13F18Signed.java
./fppg-test.sh FixedI13F18Signed > src/com/io7m/fppg/FixedI13F18SignedTest.java
./fppg com.io7m.fppg signed 14 17 > src/com/io7m/fppg/FixedI14F17Signed.java
./fppg-test.sh FixedI14F17Signed > src/com/io7m/fppg/FixedI14F17SignedTest.java
./fppg com.io7m.fppg signed 15 16 > src/com/io7m/fppg/FixedI15F16Signed.java
./fppg-test.sh FixedI15F16Signed > src/com/io7m/fppg/FixedI15F16SignedTest.java
./fppg com.io7m.fppg signed 16 15 > src/com/io7m/fppg/FixedI16F15Signed.java
./fppg-test.sh FixedI16F15Signed > src/com/io7m/fppg/FixedI16F15SignedTest.java
./fppg com.io7m.fppg signed 17 14 > src/com/io7m/fppg/FixedI17F14Signed.java
./fppg-test.sh FixedI17F14Signed > src/com/io7m/fppg/FixedI17F14SignedTest.java
./fppg com.io7m.fppg signed 18 13 > src/com/io7m/fppg/FixedI18F13Signed.java
./fppg-test.sh FixedI18F13Signed > src/com/io7m/fppg/FixedI18F13SignedTest.java
./fppg com.io7m.fppg signed 19 12 > src/com/io7m/fppg/FixedI19F12Signed.java
./fppg-test.sh FixedI19F12Signed > src/com/io7m/fppg/FixedI19F12SignedTest.java
./fppg com.io7m.fppg signed 20 11 > src/com/io7m/fppg/FixedI20F11Signed.java
./fppg-test.sh FixedI20F11Signed > src/com/io7m/fppg/FixedI20F11SignedTest.java
./fppg com.io7m.fppg signed 21 10 > src/com/io7m/fppg/FixedI21F10Signed.java
./fppg-test.sh FixedI21F10Signed > src/com/io7m/fppg/FixedI21F10SignedTest.java
./fppg com.io7m.fppg signed 22 9 > src/com/io7m/fppg/FixedI22F9Signed.java
./fppg-test.sh FixedI22F9Signed > src/com/io7m/fppg/FixedI22F9SignedTest.java
./fppg com.io7m.fppg signed 23 8 > src/com/io7m/fppg/FixedI23F8Signed.java
./fppg-test.sh FixedI23F8Signed > src/com/io7m/fppg/FixedI23F8SignedTest.java
./fppg com.io7m.fppg signed 24 7 > src/com/io7m/fppg/FixedI24F7Signed.java
./fppg-test.sh FixedI24F7Signed > src/com/io7m/fppg/FixedI24F7SignedTest.java
./fppg com.io7m.fppg signed 25 6 > src/com/io7m/fppg/FixedI25F6Signed.java
./fppg-test.sh FixedI25F6Signed > src/com/io7m/fppg/FixedI25F6SignedTest.java
./fppg com.io7m.fppg signed 26 5 > src/com/io7m/fppg/FixedI26F5Signed.java
./fppg-test.sh FixedI26F5Signed > src/com/io7m/fppg/FixedI26F5SignedTest.java
./fppg com.io7m.fppg signed 27 4 > src/com/io7m/fppg/FixedI27F4Signed.java
./fppg-test.sh FixedI27F4Signed > src/com/io7m/fppg/FixedI27F4SignedTest.java
./fppg com.io7m.fppg signed 28 3 > src/com/io7m/fppg/FixedI28F3Signed.java
./fppg-test.sh FixedI28F3Signed > src/com/io7m/fppg/FixedI28F3SignedTest.java
./fppg com.io7m.fppg signed 29 2 > src/com/io7m/fppg/FixedI29F2Signed.java
./fppg-test.sh FixedI29F2Signed > src/com/io7m/fppg/FixedI29F2SignedTest.java
./fppg com.io7m.fppg signed 30 1 > src/com/io7m/fppg/FixedI30F1Signed.java
./fppg-test.sh FixedI30F1Signed > src/com/io7m/fppg/FixedI30F1SignedTest.java

#------------------------------------------------------------------------
# unsigned 32

./fppg com.io7m.fppg unsigned 1 31 > src/com/io7m/fppg/FixedI1F31Unsigned.java
./fppg-test.sh FixedI1F31Unsigned > src/com/io7m/fppg/FixedI1F31UnsignedTest.java
./fppg com.io7m.fppg unsigned 2 30 > src/com/io7m/fppg/FixedI2F30Unsigned.java
./fppg-test.sh FixedI2F30Unsigned > src/com/io7m/fppg/FixedI2F30UnsignedTest.java
./fppg com.io7m.fppg unsigned 3 29 > src/com/io7m/fppg/FixedI3F29Unsigned.java
./fppg-test.sh FixedI3F29Unsigned > src/com/io7m/fppg/FixedI3F29UnsignedTest.java
./fppg com.io7m.fppg unsigned 4 28 > src/com/io7m/fppg/FixedI4F28Unsigned.java
./fppg-test.sh FixedI4F28Unsigned > src/com/io7m/fppg/FixedI4F28UnsignedTest.java
./fppg com.io7m.fppg unsigned 5 27 > src/com/io7m/fppg/FixedI5F27Unsigned.java
./fppg-test.sh FixedI5F27Unsigned > src/com/io7m/fppg/FixedI5F27UnsignedTest.java
./fppg com.io7m.fppg unsigned 6 26 > src/com/io7m/fppg/FixedI6F26Unsigned.java
./fppg-test.sh FixedI6F26Unsigned > src/com/io7m/fppg/FixedI6F26UnsignedTest.java
./fppg com.io7m.fppg unsigned 7 25 > src/com/io7m/fppg/FixedI7F25Unsigned.java
./fppg-test.sh FixedI7F25Unsigned > src/com/io7m/fppg/FixedI7F25UnsignedTest.java
./fppg com.io7m.fppg unsigned 8 24 > src/com/io7m/fppg/FixedI8F24Unsigned.java
./fppg-test.sh FixedI8F24Unsigned > src/com/io7m/fppg/FixedI8F24UnsignedTest.java
./fppg com.io7m.fppg unsigned 9 23 > src/com/io7m/fppg/FixedI9F23Unsigned.java
./fppg-test.sh FixedI9F23Unsigned > src/com/io7m/fppg/FixedI9F23UnsignedTest.java
./fppg com.io7m.fppg unsigned 10 22 > src/com/io7m/fppg/FixedI10F22Unsigned.java
./fppg-test.sh FixedI10F22Unsigned > src/com/io7m/fppg/FixedI10F22UnsignedTest.java
./fppg com.io7m.fppg unsigned 11 21 > src/com/io7m/fppg/FixedI11F21Unsigned.java
./fppg-test.sh FixedI11F21Unsigned > src/com/io7m/fppg/FixedI11F21UnsignedTest.java
./fppg com.io7m.fppg unsigned 12 20 > src/com/io7m/fppg/FixedI12F20Unsigned.java
./fppg-test.sh FixedI12F20Unsigned > src/com/io7m/fppg/FixedI12F20UnsignedTest.java
./fppg com.io7m.fppg unsigned 13 19 > src/com/io7m/fppg/FixedI13F19Unsigned.java
./fppg-test.sh FixedI13F19Unsigned > src/com/io7m/fppg/FixedI13F19UnsignedTest.java
./fppg com.io7m.fppg unsigned 14 18 > src/com/io7m/fppg/FixedI14F18Unsigned.java
./fppg-test.sh FixedI14F18Unsigned > src/com/io7m/fppg/FixedI14F18UnsignedTest.java
./fppg com.io7m.fppg unsigned 15 17 > src/com/io7m/fppg/FixedI15F17Unsigned.java
./fppg-test.sh FixedI15F17Unsigned > src/com/io7m/fppg/FixedI15F17UnsignedTest.java
./fppg com.io7m.fppg unsigned 16 16 > src/com/io7m/fppg/FixedI16F16Unsigned.java
./fppg-test.sh FixedI16F16Unsigned > src/com/io7m/fppg/FixedI16F16UnsignedTest.java
./fppg com.io7m.fppg unsigned 17 15 > src/com/io7m/fppg/FixedI17F15Unsigned.java
./fppg-test.sh FixedI17F15Unsigned > src/com/io7m/fppg/FixedI17F15UnsignedTest.java
./fppg com.io7m.fppg unsigned 18 14 > src/com/io7m/fppg/FixedI18F14Unsigned.java
./fppg-test.sh FixedI18F14Unsigned > src/com/io7m/fppg/FixedI18F14UnsignedTest.java
./fppg com.io7m.fppg unsigned 19 13 > src/com/io7m/fppg/FixedI19F13Unsigned.java
./fppg-test.sh FixedI19F13Unsigned > src/com/io7m/fppg/FixedI19F13UnsignedTest.java
./fppg com.io7m.fppg unsigned 20 12 > src/com/io7m/fppg/FixedI20F12Unsigned.java
./fppg-test.sh FixedI20F12Unsigned > src/com/io7m/fppg/FixedI20F12UnsignedTest.java
./fppg com.io7m.fppg unsigned 21 11 > src/com/io7m/fppg/FixedI21F11Unsigned.java
./fppg-test.sh FixedI21F11Unsigned > src/com/io7m/fppg/FixedI21F11UnsignedTest.java
./fppg com.io7m.fppg unsigned 22 10 > src/com/io7m/fppg/FixedI22F10Unsigned.java
./fppg-test.sh FixedI22F10Unsigned > src/com/io7m/fppg/FixedI22F10UnsignedTest.java
./fppg com.io7m.fppg unsigned 23 9 > src/com/io7m/fppg/FixedI23F9Unsigned.java
./fppg-test.sh FixedI23F9Unsigned > src/com/io7m/fppg/FixedI23F9UnsignedTest.java
./fppg com.io7m.fppg unsigned 24 8 > src/com/io7m/fppg/FixedI24F8Unsigned.java
./fppg-test.sh FixedI24F8Unsigned > src/com/io7m/fppg/FixedI24F8UnsignedTest.java
./fppg com.io7m.fppg unsigned 25 7 > src/com/io7m/fppg/FixedI25F7Unsigned.java
./fppg-test.sh FixedI25F7Unsigned > src/com/io7m/fppg/FixedI25F7UnsignedTest.java
./fppg com.io7m.fppg unsigned 26 6 > src/com/io7m/fppg/FixedI26F6Unsigned.java
./fppg-test.sh FixedI26F6Unsigned > src/com/io7m/fppg/FixedI26F6UnsignedTest.java
./fppg com.io7m.fppg unsigned 27 5 > src/com/io7m/fppg/FixedI27F5Unsigned.java
./fppg-test.sh FixedI27F5Unsigned > src/com/io7m/fppg/FixedI27F5UnsignedTest.java
./fppg com.io7m.fppg unsigned 28 4 > src/com/io7m/fppg/FixedI28F4Unsigned.java
./fppg-test.sh FixedI28F4Unsigned > src/com/io7m/fppg/FixedI28F4UnsignedTest.java
./fppg com.io7m.fppg unsigned 29 3 > src/com/io7m/fppg/FixedI29F3Unsigned.java
./fppg-test.sh FixedI29F3Unsigned > src/com/io7m/fppg/FixedI29F3UnsignedTest.java
./fppg com.io7m.fppg unsigned 30 2 > src/com/io7m/fppg/FixedI30F2Unsigned.java
./fppg-test.sh FixedI30F2Unsigned > src/com/io7m/fppg/FixedI30F2UnsignedTest.java
./fppg com.io7m.fppg unsigned 31 1 > src/com/io7m/fppg/FixedI31F1Unsigned.java
./fppg-test.sh FixedI31F1Unsigned > src/com/io7m/fppg/FixedI31F1UnsignedTest.java

#------------------------------------------------------------------------
# signed 40

./fppg com.io7m.fppg signed 1 38 > src/com/io7m/fppg/FixedI1F38Signed.java
./fppg-test.sh FixedI1F38Signed > src/com/io7m/fppg/FixedI1F38SignedTest.java
./fppg com.io7m.fppg signed 2 37 > src/com/io7m/fppg/FixedI2F37Signed.java
./fppg-test.sh FixedI2F37Signed > src/com/io7m/fppg/FixedI2F37SignedTest.java
./fppg com.io7m.fppg signed 3 36 > src/com/io7m/fppg/FixedI3F36Signed.java
./fppg-test.sh FixedI3F36Signed > src/com/io7m/fppg/FixedI3F36SignedTest.java
./fppg com.io7m.fppg signed 4 35 > src/com/io7m/fppg/FixedI4F35Signed.java
./fppg-test.sh FixedI4F35Signed > src/com/io7m/fppg/FixedI4F35SignedTest.java
./fppg com.io7m.fppg signed 5 34 > src/com/io7m/fppg/FixedI5F34Signed.java
./fppg-test.sh FixedI5F34Signed > src/com/io7m/fppg/FixedI5F34SignedTest.java
./fppg com.io7m.fppg signed 6 33 > src/com/io7m/fppg/FixedI6F33Signed.java
./fppg-test.sh FixedI6F33Signed > src/com/io7m/fppg/FixedI6F33SignedTest.java
./fppg com.io7m.fppg signed 7 32 > src/com/io7m/fppg/FixedI7F32Signed.java
./fppg-test.sh FixedI7F32Signed > src/com/io7m/fppg/FixedI7F32SignedTest.java
./fppg com.io7m.fppg signed 8 31 > src/com/io7m/fppg/FixedI8F31Signed.java
./fppg-test.sh FixedI8F31Signed > src/com/io7m/fppg/FixedI8F31SignedTest.java
./fppg com.io7m.fppg signed 9 30 > src/com/io7m/fppg/FixedI9F30Signed.java
./fppg-test.sh FixedI9F30Signed > src/com/io7m/fppg/FixedI9F30SignedTest.java
./fppg com.io7m.fppg signed 10 29 > src/com/io7m/fppg/FixedI10F29Signed.java
./fppg-test.sh FixedI10F29Signed > src/com/io7m/fppg/FixedI10F29SignedTest.java
./fppg com.io7m.fppg signed 11 28 > src/com/io7m/fppg/FixedI11F28Signed.java
./fppg-test.sh FixedI11F28Signed > src/com/io7m/fppg/FixedI11F28SignedTest.java
./fppg com.io7m.fppg signed 12 27 > src/com/io7m/fppg/FixedI12F27Signed.java
./fppg-test.sh FixedI12F27Signed > src/com/io7m/fppg/FixedI12F27SignedTest.java
./fppg com.io7m.fppg signed 13 26 > src/com/io7m/fppg/FixedI13F26Signed.java
./fppg-test.sh FixedI13F26Signed > src/com/io7m/fppg/FixedI13F26SignedTest.java
./fppg com.io7m.fppg signed 14 25 > src/com/io7m/fppg/FixedI14F25Signed.java
./fppg-test.sh FixedI14F25Signed > src/com/io7m/fppg/FixedI14F25SignedTest.java
./fppg com.io7m.fppg signed 15 24 > src/com/io7m/fppg/FixedI15F24Signed.java
./fppg-test.sh FixedI15F24Signed > src/com/io7m/fppg/FixedI15F24SignedTest.java
./fppg com.io7m.fppg signed 16 23 > src/com/io7m/fppg/FixedI16F23Signed.java
./fppg-test.sh FixedI16F23Signed > src/com/io7m/fppg/FixedI16F23SignedTest.java
./fppg com.io7m.fppg signed 17 22 > src/com/io7m/fppg/FixedI17F22Signed.java
./fppg-test.sh FixedI17F22Signed > src/com/io7m/fppg/FixedI17F22SignedTest.java
./fppg com.io7m.fppg signed 18 21 > src/com/io7m/fppg/FixedI18F21Signed.java
./fppg-test.sh FixedI18F21Signed > src/com/io7m/fppg/FixedI18F21SignedTest.java
./fppg com.io7m.fppg signed 19 20 > src/com/io7m/fppg/FixedI19F20Signed.java
./fppg-test.sh FixedI19F20Signed > src/com/io7m/fppg/FixedI19F20SignedTest.java
./fppg com.io7m.fppg signed 20 19 > src/com/io7m/fppg/FixedI20F19Signed.java
./fppg-test.sh FixedI20F19Signed > src/com/io7m/fppg/FixedI20F19SignedTest.java
./fppg com.io7m.fppg signed 21 18 > src/com/io7m/fppg/FixedI21F18Signed.java
./fppg-test.sh FixedI21F18Signed > src/com/io7m/fppg/FixedI21F18SignedTest.java
./fppg com.io7m.fppg signed 22 17 > src/com/io7m/fppg/FixedI22F17Signed.java
./fppg-test.sh FixedI22F17Signed > src/com/io7m/fppg/FixedI22F17SignedTest.java
./fppg com.io7m.fppg signed 23 16 > src/com/io7m/fppg/FixedI23F16Signed.java
./fppg-test.sh FixedI23F16Signed > src/com/io7m/fppg/FixedI23F16SignedTest.java
./fppg com.io7m.fppg signed 24 15 > src/com/io7m/fppg/FixedI24F15Signed.java
./fppg-test.sh FixedI24F15Signed > src/com/io7m/fppg/FixedI24F15SignedTest.java
./fppg com.io7m.fppg signed 25 14 > src/com/io7m/fppg/FixedI25F14Signed.java
./fppg-test.sh FixedI25F14Signed > src/com/io7m/fppg/FixedI25F14SignedTest.java
./fppg com.io7m.fppg signed 26 13 > src/com/io7m/fppg/FixedI26F13Signed.java
./fppg-test.sh FixedI26F13Signed > src/com/io7m/fppg/FixedI26F13SignedTest.java
./fppg com.io7m.fppg signed 27 12 > src/com/io7m/fppg/FixedI27F12Signed.java
./fppg-test.sh FixedI27F12Signed > src/com/io7m/fppg/FixedI27F12SignedTest.java
./fppg com.io7m.fppg signed 28 11 > src/com/io7m/fppg/FixedI28F11Signed.java
./fppg-test.sh FixedI28F11Signed > src/com/io7m/fppg/FixedI28F11SignedTest.java
./fppg com.io7m.fppg signed 29 10 > src/com/io7m/fppg/FixedI29F10Signed.java
./fppg-test.sh FixedI29F10Signed > src/com/io7m/fppg/FixedI29F10SignedTest.java
./fppg com.io7m.fppg signed 30 9 > src/com/io7m/fppg/FixedI30F9Signed.java
./fppg-test.sh FixedI30F9Signed > src/com/io7m/fppg/FixedI30F9SignedTest.java
./fppg com.io7m.fppg signed 31 8 > src/com/io7m/fppg/FixedI31F8Signed.java
./fppg-test.sh FixedI31F8Signed > src/com/io7m/fppg/FixedI31F8SignedTest.java
./fppg com.io7m.fppg signed 32 7 > src/com/io7m/fppg/FixedI32F7Signed.java
./fppg-test.sh FixedI32F7Signed > src/com/io7m/fppg/FixedI32F7SignedTest.java
./fppg com.io7m.fppg signed 33 6 > src/com/io7m/fppg/FixedI33F6Signed.java
./fppg-test.sh FixedI33F6Signed > src/com/io7m/fppg/FixedI33F6SignedTest.java
./fppg com.io7m.fppg signed 34 5 > src/com/io7m/fppg/FixedI34F5Signed.java
./fppg-test.sh FixedI34F5Signed > src/com/io7m/fppg/FixedI34F5SignedTest.java
./fppg com.io7m.fppg signed 35 4 > src/com/io7m/fppg/FixedI35F4Signed.java
./fppg-test.sh FixedI35F4Signed > src/com/io7m/fppg/FixedI35F4SignedTest.java
./fppg com.io7m.fppg signed 36 3 > src/com/io7m/fppg/FixedI36F3Signed.java
./fppg-test.sh FixedI36F3Signed > src/com/io7m/fppg/FixedI36F3SignedTest.java
./fppg com.io7m.fppg signed 37 2 > src/com/io7m/fppg/FixedI37F2Signed.java
./fppg-test.sh FixedI37F2Signed > src/com/io7m/fppg/FixedI37F2SignedTest.java
./fppg com.io7m.fppg signed 38 1 > src/com/io7m/fppg/FixedI38F1Signed.java
./fppg-test.sh FixedI38F1Signed > src/com/io7m/fppg/FixedI38F1SignedTest.java

#------------------------------------------------------------------------
# unsigned 40

./fppg com.io7m.fppg unsigned 1 39 > src/com/io7m/fppg/FixedI1F39Unsigned.java
./fppg-test.sh FixedI1F39Unsigned > src/com/io7m/fppg/FixedI1F39UnsignedTest.java
./fppg com.io7m.fppg unsigned 2 38 > src/com/io7m/fppg/FixedI2F38Unsigned.java
./fppg-test.sh FixedI2F38Unsigned > src/com/io7m/fppg/FixedI2F38UnsignedTest.java
./fppg com.io7m.fppg unsigned 3 37 > src/com/io7m/fppg/FixedI3F37Unsigned.java
./fppg-test.sh FixedI3F37Unsigned > src/com/io7m/fppg/FixedI3F37UnsignedTest.java
./fppg com.io7m.fppg unsigned 4 36 > src/com/io7m/fppg/FixedI4F36Unsigned.java
./fppg-test.sh FixedI4F36Unsigned > src/com/io7m/fppg/FixedI4F36UnsignedTest.java
./fppg com.io7m.fppg unsigned 5 35 > src/com/io7m/fppg/FixedI5F35Unsigned.java
./fppg-test.sh FixedI5F35Unsigned > src/com/io7m/fppg/FixedI5F35UnsignedTest.java
./fppg com.io7m.fppg unsigned 6 34 > src/com/io7m/fppg/FixedI6F34Unsigned.java
./fppg-test.sh FixedI6F34Unsigned > src/com/io7m/fppg/FixedI6F34UnsignedTest.java
./fppg com.io7m.fppg unsigned 7 33 > src/com/io7m/fppg/FixedI7F33Unsigned.java
./fppg-test.sh FixedI7F33Unsigned > src/com/io7m/fppg/FixedI7F33UnsignedTest.java
./fppg com.io7m.fppg unsigned 8 32 > src/com/io7m/fppg/FixedI8F32Unsigned.java
./fppg-test.sh FixedI8F32Unsigned > src/com/io7m/fppg/FixedI8F32UnsignedTest.java
./fppg com.io7m.fppg unsigned 9 31 > src/com/io7m/fppg/FixedI9F31Unsigned.java
./fppg-test.sh FixedI9F31Unsigned > src/com/io7m/fppg/FixedI9F31UnsignedTest.java
./fppg com.io7m.fppg unsigned 10 30 > src/com/io7m/fppg/FixedI10F30Unsigned.java
./fppg-test.sh FixedI10F30Unsigned > src/com/io7m/fppg/FixedI10F30UnsignedTest.java
./fppg com.io7m.fppg unsigned 11 29 > src/com/io7m/fppg/FixedI11F29Unsigned.java
./fppg-test.sh FixedI11F29Unsigned > src/com/io7m/fppg/FixedI11F29UnsignedTest.java
./fppg com.io7m.fppg unsigned 12 28 > src/com/io7m/fppg/FixedI12F28Unsigned.java
./fppg-test.sh FixedI12F28Unsigned > src/com/io7m/fppg/FixedI12F28UnsignedTest.java
./fppg com.io7m.fppg unsigned 13 27 > src/com/io7m/fppg/FixedI13F27Unsigned.java
./fppg-test.sh FixedI13F27Unsigned > src/com/io7m/fppg/FixedI13F27UnsignedTest.java
./fppg com.io7m.fppg unsigned 14 26 > src/com/io7m/fppg/FixedI14F26Unsigned.java
./fppg-test.sh FixedI14F26Unsigned > src/com/io7m/fppg/FixedI14F26UnsignedTest.java
./fppg com.io7m.fppg unsigned 15 25 > src/com/io7m/fppg/FixedI15F25Unsigned.java
./fppg-test.sh FixedI15F25Unsigned > src/com/io7m/fppg/FixedI15F25UnsignedTest.java
./fppg com.io7m.fppg unsigned 16 24 > src/com/io7m/fppg/FixedI16F24Unsigned.java
./fppg-test.sh FixedI16F24Unsigned > src/com/io7m/fppg/FixedI16F24UnsignedTest.java
./fppg com.io7m.fppg unsigned 17 23 > src/com/io7m/fppg/FixedI17F23Unsigned.java
./fppg-test.sh FixedI17F23Unsigned > src/com/io7m/fppg/FixedI17F23UnsignedTest.java
./fppg com.io7m.fppg unsigned 18 22 > src/com/io7m/fppg/FixedI18F22Unsigned.java
./fppg-test.sh FixedI18F22Unsigned > src/com/io7m/fppg/FixedI18F22UnsignedTest.java
./fppg com.io7m.fppg unsigned 19 21 > src/com/io7m/fppg/FixedI19F21Unsigned.java
./fppg-test.sh FixedI19F21Unsigned > src/com/io7m/fppg/FixedI19F21UnsignedTest.java
./fppg com.io7m.fppg unsigned 20 20 > src/com/io7m/fppg/FixedI20F20Unsigned.java
./fppg-test.sh FixedI20F20Unsigned > src/com/io7m/fppg/FixedI20F20UnsignedTest.java
./fppg com.io7m.fppg unsigned 21 19 > src/com/io7m/fppg/FixedI21F19Unsigned.java
./fppg-test.sh FixedI21F19Unsigned > src/com/io7m/fppg/FixedI21F19UnsignedTest.java
./fppg com.io7m.fppg unsigned 22 18 > src/com/io7m/fppg/FixedI22F18Unsigned.java
./fppg-test.sh FixedI22F18Unsigned > src/com/io7m/fppg/FixedI22F18UnsignedTest.java
./fppg com.io7m.fppg unsigned 23 17 > src/com/io7m/fppg/FixedI23F17Unsigned.java
./fppg-test.sh FixedI23F17Unsigned > src/com/io7m/fppg/FixedI23F17UnsignedTest.java
./fppg com.io7m.fppg unsigned 24 16 > src/com/io7m/fppg/FixedI24F16Unsigned.java
./fppg-test.sh FixedI24F16Unsigned > src/com/io7m/fppg/FixedI24F16UnsignedTest.java
./fppg com.io7m.fppg unsigned 25 15 > src/com/io7m/fppg/FixedI25F15Unsigned.java
./fppg-test.sh FixedI25F15Unsigned > src/com/io7m/fppg/FixedI25F15UnsignedTest.java
./fppg com.io7m.fppg unsigned 26 14 > src/com/io7m/fppg/FixedI26F14Unsigned.java
./fppg-test.sh FixedI26F14Unsigned > src/com/io7m/fppg/FixedI26F14UnsignedTest.java
./fppg com.io7m.fppg unsigned 27 13 > src/com/io7m/fppg/FixedI27F13Unsigned.java
./fppg-test.sh FixedI27F13Unsigned > src/com/io7m/fppg/FixedI27F13UnsignedTest.java
./fppg com.io7m.fppg unsigned 28 12 > src/com/io7m/fppg/FixedI28F12Unsigned.java
./fppg-test.sh FixedI28F12Unsigned > src/com/io7m/fppg/FixedI28F12UnsignedTest.java
./fppg com.io7m.fppg unsigned 29 11 > src/com/io7m/fppg/FixedI29F11Unsigned.java
./fppg-test.sh FixedI29F11Unsigned > src/com/io7m/fppg/FixedI29F11UnsignedTest.java
./fppg com.io7m.fppg unsigned 30 10 > src/com/io7m/fppg/FixedI30F10Unsigned.java
./fppg-test.sh FixedI30F10Unsigned > src/com/io7m/fppg/FixedI30F10UnsignedTest.java
./fppg com.io7m.fppg unsigned 31 9 > src/com/io7m/fppg/FixedI31F9Unsigned.java
./fppg-test.sh FixedI31F9Unsigned > src/com/io7m/fppg/FixedI31F9UnsignedTest.java
./fppg com.io7m.fppg unsigned 32 8 > src/com/io7m/fppg/FixedI32F8Unsigned.java
./fppg-test.sh FixedI32F8Unsigned > src/com/io7m/fppg/FixedI32F8UnsignedTest.java
./fppg com.io7m.fppg unsigned 33 7 > src/com/io7m/fppg/FixedI33F7Unsigned.java
./fppg-test.sh FixedI33F7Unsigned > src/com/io7m/fppg/FixedI33F7UnsignedTest.java
./fppg com.io7m.fppg unsigned 34 6 > src/com/io7m/fppg/FixedI34F6Unsigned.java
./fppg-test.sh FixedI34F6Unsigned > src/com/io7m/fppg/FixedI34F6UnsignedTest.java
./fppg com.io7m.fppg unsigned 35 5 > src/com/io7m/fppg/FixedI35F5Unsigned.java
./fppg-test.sh FixedI35F5Unsigned > src/com/io7m/fppg/FixedI35F5UnsignedTest.java
./fppg com.io7m.fppg unsigned 36 4 > src/com/io7m/fppg/FixedI36F4Unsigned.java
./fppg-test.sh FixedI36F4Unsigned > src/com/io7m/fppg/FixedI36F4UnsignedTest.java
./fppg com.io7m.fppg unsigned 37 3 > src/com/io7m/fppg/FixedI37F3Unsigned.java
./fppg-test.sh FixedI37F3Unsigned > src/com/io7m/fppg/FixedI37F3UnsignedTest.java
./fppg com.io7m.fppg unsigned 38 2 > src/com/io7m/fppg/FixedI38F2Unsigned.java
./fppg-test.sh FixedI38F2Unsigned > src/com/io7m/fppg/FixedI38F2UnsignedTest.java
./fppg com.io7m.fppg unsigned 39 1 > src/com/io7m/fppg/FixedI39F1Unsigned.java
./fppg-test.sh FixedI39F1Unsigned > src/com/io7m/fppg/FixedI39F1UnsignedTest.java

#------------------------------------------------------------------------
# signed 48

./fppg com.io7m.fppg signed 1 46 > src/com/io7m/fppg/FixedI1F46Signed.java
./fppg-test.sh FixedI1F46Signed > src/com/io7m/fppg/FixedI1F46SignedTest.java
./fppg com.io7m.fppg signed 2 45 > src/com/io7m/fppg/FixedI2F45Signed.java
./fppg-test.sh FixedI2F45Signed > src/com/io7m/fppg/FixedI2F45SignedTest.java
./fppg com.io7m.fppg signed 3 44 > src/com/io7m/fppg/FixedI3F44Signed.java
./fppg-test.sh FixedI3F44Signed > src/com/io7m/fppg/FixedI3F44SignedTest.java
./fppg com.io7m.fppg signed 4 43 > src/com/io7m/fppg/FixedI4F43Signed.java
./fppg-test.sh FixedI4F43Signed > src/com/io7m/fppg/FixedI4F43SignedTest.java
./fppg com.io7m.fppg signed 5 42 > src/com/io7m/fppg/FixedI5F42Signed.java
./fppg-test.sh FixedI5F42Signed > src/com/io7m/fppg/FixedI5F42SignedTest.java
./fppg com.io7m.fppg signed 6 41 > src/com/io7m/fppg/FixedI6F41Signed.java
./fppg-test.sh FixedI6F41Signed > src/com/io7m/fppg/FixedI6F41SignedTest.java
./fppg com.io7m.fppg signed 7 40 > src/com/io7m/fppg/FixedI7F40Signed.java
./fppg-test.sh FixedI7F40Signed > src/com/io7m/fppg/FixedI7F40SignedTest.java
./fppg com.io7m.fppg signed 8 39 > src/com/io7m/fppg/FixedI8F39Signed.java
./fppg-test.sh FixedI8F39Signed > src/com/io7m/fppg/FixedI8F39SignedTest.java
./fppg com.io7m.fppg signed 9 38 > src/com/io7m/fppg/FixedI9F38Signed.java
./fppg-test.sh FixedI9F38Signed > src/com/io7m/fppg/FixedI9F38SignedTest.java
./fppg com.io7m.fppg signed 10 37 > src/com/io7m/fppg/FixedI10F37Signed.java
./fppg-test.sh FixedI10F37Signed > src/com/io7m/fppg/FixedI10F37SignedTest.java
./fppg com.io7m.fppg signed 11 36 > src/com/io7m/fppg/FixedI11F36Signed.java
./fppg-test.sh FixedI11F36Signed > src/com/io7m/fppg/FixedI11F36SignedTest.java
./fppg com.io7m.fppg signed 12 35 > src/com/io7m/fppg/FixedI12F35Signed.java
./fppg-test.sh FixedI12F35Signed > src/com/io7m/fppg/FixedI12F35SignedTest.java
./fppg com.io7m.fppg signed 13 34 > src/com/io7m/fppg/FixedI13F34Signed.java
./fppg-test.sh FixedI13F34Signed > src/com/io7m/fppg/FixedI13F34SignedTest.java
./fppg com.io7m.fppg signed 14 33 > src/com/io7m/fppg/FixedI14F33Signed.java
./fppg-test.sh FixedI14F33Signed > src/com/io7m/fppg/FixedI14F33SignedTest.java
./fppg com.io7m.fppg signed 15 32 > src/com/io7m/fppg/FixedI15F32Signed.java
./fppg-test.sh FixedI15F32Signed > src/com/io7m/fppg/FixedI15F32SignedTest.java
./fppg com.io7m.fppg signed 16 31 > src/com/io7m/fppg/FixedI16F31Signed.java
./fppg-test.sh FixedI16F31Signed > src/com/io7m/fppg/FixedI16F31SignedTest.java
./fppg com.io7m.fppg signed 17 30 > src/com/io7m/fppg/FixedI17F30Signed.java
./fppg-test.sh FixedI17F30Signed > src/com/io7m/fppg/FixedI17F30SignedTest.java
./fppg com.io7m.fppg signed 18 29 > src/com/io7m/fppg/FixedI18F29Signed.java
./fppg-test.sh FixedI18F29Signed > src/com/io7m/fppg/FixedI18F29SignedTest.java
./fppg com.io7m.fppg signed 19 28 > src/com/io7m/fppg/FixedI19F28Signed.java
./fppg-test.sh FixedI19F28Signed > src/com/io7m/fppg/FixedI19F28SignedTest.java
./fppg com.io7m.fppg signed 20 27 > src/com/io7m/fppg/FixedI20F27Signed.java
./fppg-test.sh FixedI20F27Signed > src/com/io7m/fppg/FixedI20F27SignedTest.java
./fppg com.io7m.fppg signed 21 26 > src/com/io7m/fppg/FixedI21F26Signed.java
./fppg-test.sh FixedI21F26Signed > src/com/io7m/fppg/FixedI21F26SignedTest.java
./fppg com.io7m.fppg signed 22 25 > src/com/io7m/fppg/FixedI22F25Signed.java
./fppg-test.sh FixedI22F25Signed > src/com/io7m/fppg/FixedI22F25SignedTest.java
./fppg com.io7m.fppg signed 23 24 > src/com/io7m/fppg/FixedI23F24Signed.java
./fppg-test.sh FixedI23F24Signed > src/com/io7m/fppg/FixedI23F24SignedTest.java
./fppg com.io7m.fppg signed 24 23 > src/com/io7m/fppg/FixedI24F23Signed.java
./fppg-test.sh FixedI24F23Signed > src/com/io7m/fppg/FixedI24F23SignedTest.java
./fppg com.io7m.fppg signed 25 22 > src/com/io7m/fppg/FixedI25F22Signed.java
./fppg-test.sh FixedI25F22Signed > src/com/io7m/fppg/FixedI25F22SignedTest.java
./fppg com.io7m.fppg signed 26 21 > src/com/io7m/fppg/FixedI26F21Signed.java
./fppg-test.sh FixedI26F21Signed > src/com/io7m/fppg/FixedI26F21SignedTest.java
./fppg com.io7m.fppg signed 27 20 > src/com/io7m/fppg/FixedI27F20Signed.java
./fppg-test.sh FixedI27F20Signed > src/com/io7m/fppg/FixedI27F20SignedTest.java
./fppg com.io7m.fppg signed 28 19 > src/com/io7m/fppg/FixedI28F19Signed.java
./fppg-test.sh FixedI28F19Signed > src/com/io7m/fppg/FixedI28F19SignedTest.java
./fppg com.io7m.fppg signed 29 18 > src/com/io7m/fppg/FixedI29F18Signed.java
./fppg-test.sh FixedI29F18Signed > src/com/io7m/fppg/FixedI29F18SignedTest.java
./fppg com.io7m.fppg signed 30 17 > src/com/io7m/fppg/FixedI30F17Signed.java
./fppg-test.sh FixedI30F17Signed > src/com/io7m/fppg/FixedI30F17SignedTest.java
./fppg com.io7m.fppg signed 31 16 > src/com/io7m/fppg/FixedI31F16Signed.java
./fppg-test.sh FixedI31F16Signed > src/com/io7m/fppg/FixedI31F16SignedTest.java
./fppg com.io7m.fppg signed 32 15 > src/com/io7m/fppg/FixedI32F15Signed.java
./fppg-test.sh FixedI32F15Signed > src/com/io7m/fppg/FixedI32F15SignedTest.java
./fppg com.io7m.fppg signed 33 14 > src/com/io7m/fppg/FixedI33F14Signed.java
./fppg-test.sh FixedI33F14Signed > src/com/io7m/fppg/FixedI33F14SignedTest.java
./fppg com.io7m.fppg signed 34 13 > src/com/io7m/fppg/FixedI34F13Signed.java
./fppg-test.sh FixedI34F13Signed > src/com/io7m/fppg/FixedI34F13SignedTest.java
./fppg com.io7m.fppg signed 35 12 > src/com/io7m/fppg/FixedI35F12Signed.java
./fppg-test.sh FixedI35F12Signed > src/com/io7m/fppg/FixedI35F12SignedTest.java
./fppg com.io7m.fppg signed 36 11 > src/com/io7m/fppg/FixedI36F11Signed.java
./fppg-test.sh FixedI36F11Signed > src/com/io7m/fppg/FixedI36F11SignedTest.java
./fppg com.io7m.fppg signed 37 10 > src/com/io7m/fppg/FixedI37F10Signed.java
./fppg-test.sh FixedI37F10Signed > src/com/io7m/fppg/FixedI37F10SignedTest.java
./fppg com.io7m.fppg signed 38 9 > src/com/io7m/fppg/FixedI38F9Signed.java
./fppg-test.sh FixedI38F9Signed > src/com/io7m/fppg/FixedI38F9SignedTest.java
./fppg com.io7m.fppg signed 39 8 > src/com/io7m/fppg/FixedI39F8Signed.java
./fppg-test.sh FixedI39F8Signed > src/com/io7m/fppg/FixedI39F8SignedTest.java
./fppg com.io7m.fppg signed 40 7 > src/com/io7m/fppg/FixedI40F7Signed.java
./fppg-test.sh FixedI40F7Signed > src/com/io7m/fppg/FixedI40F7SignedTest.java
./fppg com.io7m.fppg signed 41 6 > src/com/io7m/fppg/FixedI41F6Signed.java
./fppg-test.sh FixedI41F6Signed > src/com/io7m/fppg/FixedI41F6SignedTest.java
./fppg com.io7m.fppg signed 42 5 > src/com/io7m/fppg/FixedI42F5Signed.java
./fppg-test.sh FixedI42F5Signed > src/com/io7m/fppg/FixedI42F5SignedTest.java
./fppg com.io7m.fppg signed 43 4 > src/com/io7m/fppg/FixedI43F4Signed.java
./fppg-test.sh FixedI43F4Signed > src/com/io7m/fppg/FixedI43F4SignedTest.java
./fppg com.io7m.fppg signed 44 3 > src/com/io7m/fppg/FixedI44F3Signed.java
./fppg-test.sh FixedI44F3Signed > src/com/io7m/fppg/FixedI44F3SignedTest.java
./fppg com.io7m.fppg signed 45 2 > src/com/io7m/fppg/FixedI45F2Signed.java
./fppg-test.sh FixedI45F2Signed > src/com/io7m/fppg/FixedI45F2SignedTest.java
./fppg com.io7m.fppg signed 46 1 > src/com/io7m/fppg/FixedI46F1Signed.java
./fppg-test.sh FixedI46F1Signed > src/com/io7m/fppg/FixedI46F1SignedTest.java

#------------------------------------------------------------------------
# unsigned 48

./fppg com.io7m.fppg unsigned 1 47 > src/com/io7m/fppg/FixedI1F47Unsigned.java
./fppg-test.sh FixedI1F47Unsigned > src/com/io7m/fppg/FixedI1F47UnsignedTest.java
./fppg com.io7m.fppg unsigned 2 46 > src/com/io7m/fppg/FixedI2F46Unsigned.java
./fppg-test.sh FixedI2F46Unsigned > src/com/io7m/fppg/FixedI2F46UnsignedTest.java
./fppg com.io7m.fppg unsigned 3 45 > src/com/io7m/fppg/FixedI3F45Unsigned.java
./fppg-test.sh FixedI3F45Unsigned > src/com/io7m/fppg/FixedI3F45UnsignedTest.java
./fppg com.io7m.fppg unsigned 4 44 > src/com/io7m/fppg/FixedI4F44Unsigned.java
./fppg-test.sh FixedI4F44Unsigned > src/com/io7m/fppg/FixedI4F44UnsignedTest.java
./fppg com.io7m.fppg unsigned 5 43 > src/com/io7m/fppg/FixedI5F43Unsigned.java
./fppg-test.sh FixedI5F43Unsigned > src/com/io7m/fppg/FixedI5F43UnsignedTest.java
./fppg com.io7m.fppg unsigned 6 42 > src/com/io7m/fppg/FixedI6F42Unsigned.java
./fppg-test.sh FixedI6F42Unsigned > src/com/io7m/fppg/FixedI6F42UnsignedTest.java
./fppg com.io7m.fppg unsigned 7 41 > src/com/io7m/fppg/FixedI7F41Unsigned.java
./fppg-test.sh FixedI7F41Unsigned > src/com/io7m/fppg/FixedI7F41UnsignedTest.java
./fppg com.io7m.fppg unsigned 8 40 > src/com/io7m/fppg/FixedI8F40Unsigned.java
./fppg-test.sh FixedI8F40Unsigned > src/com/io7m/fppg/FixedI8F40UnsignedTest.java
./fppg com.io7m.fppg unsigned 9 39 > src/com/io7m/fppg/FixedI9F39Unsigned.java
./fppg-test.sh FixedI9F39Unsigned > src/com/io7m/fppg/FixedI9F39UnsignedTest.java
./fppg com.io7m.fppg unsigned 10 38 > src/com/io7m/fppg/FixedI10F38Unsigned.java
./fppg-test.sh FixedI10F38Unsigned > src/com/io7m/fppg/FixedI10F38UnsignedTest.java
./fppg com.io7m.fppg unsigned 11 37 > src/com/io7m/fppg/FixedI11F37Unsigned.java
./fppg-test.sh FixedI11F37Unsigned > src/com/io7m/fppg/FixedI11F37UnsignedTest.java
./fppg com.io7m.fppg unsigned 12 36 > src/com/io7m/fppg/FixedI12F36Unsigned.java
./fppg-test.sh FixedI12F36Unsigned > src/com/io7m/fppg/FixedI12F36UnsignedTest.java
./fppg com.io7m.fppg unsigned 13 35 > src/com/io7m/fppg/FixedI13F35Unsigned.java
./fppg-test.sh FixedI13F35Unsigned > src/com/io7m/fppg/FixedI13F35UnsignedTest.java
./fppg com.io7m.fppg unsigned 14 34 > src/com/io7m/fppg/FixedI14F34Unsigned.java
./fppg-test.sh FixedI14F34Unsigned > src/com/io7m/fppg/FixedI14F34UnsignedTest.java
./fppg com.io7m.fppg unsigned 15 33 > src/com/io7m/fppg/FixedI15F33Unsigned.java
./fppg-test.sh FixedI15F33Unsigned > src/com/io7m/fppg/FixedI15F33UnsignedTest.java
./fppg com.io7m.fppg unsigned 16 32 > src/com/io7m/fppg/FixedI16F32Unsigned.java
./fppg-test.sh FixedI16F32Unsigned > src/com/io7m/fppg/FixedI16F32UnsignedTest.java
./fppg com.io7m.fppg unsigned 17 31 > src/com/io7m/fppg/FixedI17F31Unsigned.java
./fppg-test.sh FixedI17F31Unsigned > src/com/io7m/fppg/FixedI17F31UnsignedTest.java
./fppg com.io7m.fppg unsigned 18 30 > src/com/io7m/fppg/FixedI18F30Unsigned.java
./fppg-test.sh FixedI18F30Unsigned > src/com/io7m/fppg/FixedI18F30UnsignedTest.java
./fppg com.io7m.fppg unsigned 19 29 > src/com/io7m/fppg/FixedI19F29Unsigned.java
./fppg-test.sh FixedI19F29Unsigned > src/com/io7m/fppg/FixedI19F29UnsignedTest.java
./fppg com.io7m.fppg unsigned 20 28 > src/com/io7m/fppg/FixedI20F28Unsigned.java
./fppg-test.sh FixedI20F28Unsigned > src/com/io7m/fppg/FixedI20F28UnsignedTest.java
./fppg com.io7m.fppg unsigned 21 27 > src/com/io7m/fppg/FixedI21F27Unsigned.java
./fppg-test.sh FixedI21F27Unsigned > src/com/io7m/fppg/FixedI21F27UnsignedTest.java
./fppg com.io7m.fppg unsigned 22 26 > src/com/io7m/fppg/FixedI22F26Unsigned.java
./fppg-test.sh FixedI22F26Unsigned > src/com/io7m/fppg/FixedI22F26UnsignedTest.java
./fppg com.io7m.fppg unsigned 23 25 > src/com/io7m/fppg/FixedI23F25Unsigned.java
./fppg-test.sh FixedI23F25Unsigned > src/com/io7m/fppg/FixedI23F25UnsignedTest.java
./fppg com.io7m.fppg unsigned 24 24 > src/com/io7m/fppg/FixedI24F24Unsigned.java
./fppg-test.sh FixedI24F24Unsigned > src/com/io7m/fppg/FixedI24F24UnsignedTest.java
./fppg com.io7m.fppg unsigned 25 23 > src/com/io7m/fppg/FixedI25F23Unsigned.java
./fppg-test.sh FixedI25F23Unsigned > src/com/io7m/fppg/FixedI25F23UnsignedTest.java
./fppg com.io7m.fppg unsigned 26 22 > src/com/io7m/fppg/FixedI26F22Unsigned.java
./fppg-test.sh FixedI26F22Unsigned > src/com/io7m/fppg/FixedI26F22UnsignedTest.java
./fppg com.io7m.fppg unsigned 27 21 > src/com/io7m/fppg/FixedI27F21Unsigned.java
./fppg-test.sh FixedI27F21Unsigned > src/com/io7m/fppg/FixedI27F21UnsignedTest.java
./fppg com.io7m.fppg unsigned 28 20 > src/com/io7m/fppg/FixedI28F20Unsigned.java
./fppg-test.sh FixedI28F20Unsigned > src/com/io7m/fppg/FixedI28F20UnsignedTest.java
./fppg com.io7m.fppg unsigned 29 19 > src/com/io7m/fppg/FixedI29F19Unsigned.java
./fppg-test.sh FixedI29F19Unsigned > src/com/io7m/fppg/FixedI29F19UnsignedTest.java
./fppg com.io7m.fppg unsigned 30 18 > src/com/io7m/fppg/FixedI30F18Unsigned.java
./fppg-test.sh FixedI30F18Unsigned > src/com/io7m/fppg/FixedI30F18UnsignedTest.java
./fppg com.io7m.fppg unsigned 31 17 > src/com/io7m/fppg/FixedI31F17Unsigned.java
./fppg-test.sh FixedI31F17Unsigned > src/com/io7m/fppg/FixedI31F17UnsignedTest.java
./fppg com.io7m.fppg unsigned 32 16 > src/com/io7m/fppg/FixedI32F16Unsigned.java
./fppg-test.sh FixedI32F16Unsigned > src/com/io7m/fppg/FixedI32F16UnsignedTest.java
./fppg com.io7m.fppg unsigned 33 15 > src/com/io7m/fppg/FixedI33F15Unsigned.java
./fppg-test.sh FixedI33F15Unsigned > src/com/io7m/fppg/FixedI33F15UnsignedTest.java
./fppg com.io7m.fppg unsigned 34 14 > src/com/io7m/fppg/FixedI34F14Unsigned.java
./fppg-test.sh FixedI34F14Unsigned > src/com/io7m/fppg/FixedI34F14UnsignedTest.java
./fppg com.io7m.fppg unsigned 35 13 > src/com/io7m/fppg/FixedI35F13Unsigned.java
./fppg-test.sh FixedI35F13Unsigned > src/com/io7m/fppg/FixedI35F13UnsignedTest.java
./fppg com.io7m.fppg unsigned 36 12 > src/com/io7m/fppg/FixedI36F12Unsigned.java
./fppg-test.sh FixedI36F12Unsigned > src/com/io7m/fppg/FixedI36F12UnsignedTest.java
./fppg com.io7m.fppg unsigned 37 11 > src/com/io7m/fppg/FixedI37F11Unsigned.java
./fppg-test.sh FixedI37F11Unsigned > src/com/io7m/fppg/FixedI37F11UnsignedTest.java
./fppg com.io7m.fppg unsigned 38 10 > src/com/io7m/fppg/FixedI38F10Unsigned.java
./fppg-test.sh FixedI38F10Unsigned > src/com/io7m/fppg/FixedI38F10UnsignedTest.java
./fppg com.io7m.fppg unsigned 39 9 > src/com/io7m/fppg/FixedI39F9Unsigned.java
./fppg-test.sh FixedI39F9Unsigned > src/com/io7m/fppg/FixedI39F9UnsignedTest.java
./fppg com.io7m.fppg unsigned 40 8 > src/com/io7m/fppg/FixedI40F8Unsigned.java
./fppg-test.sh FixedI40F8Unsigned > src/com/io7m/fppg/FixedI40F8UnsignedTest.java
./fppg com.io7m.fppg unsigned 41 7 > src/com/io7m/fppg/FixedI41F7Unsigned.java
./fppg-test.sh FixedI41F7Unsigned > src/com/io7m/fppg/FixedI41F7UnsignedTest.java
./fppg com.io7m.fppg unsigned 42 6 > src/com/io7m/fppg/FixedI42F6Unsigned.java
./fppg-test.sh FixedI42F6Unsigned > src/com/io7m/fppg/FixedI42F6UnsignedTest.java
./fppg com.io7m.fppg unsigned 43 5 > src/com/io7m/fppg/FixedI43F5Unsigned.java
./fppg-test.sh FixedI43F5Unsigned > src/com/io7m/fppg/FixedI43F5UnsignedTest.java
./fppg com.io7m.fppg unsigned 44 4 > src/com/io7m/fppg/FixedI44F4Unsigned.java
./fppg-test.sh FixedI44F4Unsigned > src/com/io7m/fppg/FixedI44F4UnsignedTest.java
./fppg com.io7m.fppg unsigned 45 3 > src/com/io7m/fppg/FixedI45F3Unsigned.java
./fppg-test.sh FixedI45F3Unsigned > src/com/io7m/fppg/FixedI45F3UnsignedTest.java
./fppg com.io7m.fppg unsigned 46 2 > src/com/io7m/fppg/FixedI46F2Unsigned.java
./fppg-test.sh FixedI46F2Unsigned > src/com/io7m/fppg/FixedI46F2UnsignedTest.java
./fppg com.io7m.fppg unsigned 47 1 > src/com/io7m/fppg/FixedI47F1Unsigned.java
./fppg-test.sh FixedI47F1Unsigned > src/com/io7m/fppg/FixedI47F1UnsignedTest.java

