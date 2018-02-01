<?php declare(strict_types=1);

use PHPUnit\Framework\TestCase;

final class StartTest extends TestCase
{
  public function testReturnsCorrectString()
  {
    $this->assertEquals(
      'testing',
      Start::test()
    );
  }
}
