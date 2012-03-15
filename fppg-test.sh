#!/bin/sh

if [ $# -ne 1 ]
then
  echo "usage: class-name" 1>&2
  exit 1
fi

NAME="$1"

cat <<EOF
/* Auto generated, DO NOT EDIT. */

package com.io7m.fppg;

import junit.framework.Assert;

import org.junit.Test;

public class ${NAME}Test
{
  @Test public void testMaximumIntegral()
  {
    final ${NAME} v = new ${NAME}(${NAME}.MAX_INTEGRAL);
    final double x = v.doubleValue();
    Assert.assertTrue(ApproximatelyEqualDouble.approximatelyEqual(x, ${NAME}.MAX_INTEGRAL));
  }

  @Test public void testMinimumIntegral()
  {
    final ${NAME} v = new ${NAME}(${NAME}.MIN_INTEGRAL);
    final double x = v.doubleValue();
    Assert.assertTrue(ApproximatelyEqualDouble.approximatelyEqual(x, ${NAME}.MIN_INTEGRAL));
  }

  @Test public void testEpsilon()
  {
    final ${NAME} v = new ${NAME}(${NAME}.EPSILON);
    final double x = v.doubleValue();
    Assert.assertTrue(ApproximatelyEqualDouble.approximatelyEqual(x, ${NAME}.EPSILON));
  }
}
EOF
