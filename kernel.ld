OUTPUT_ARCH( "riscv" )
ENTRY( _entry )

SECTIONS
{
  /*
   * ensure that entry.S / _entry is at 0x80000000,
   * where qemu's -kernel jumps.
   */
  . = 0x80000000;

  .text : {
    *(.entry_os) . = ALIGN(0x1000);
    EXCLUDE_FILE(build/src/[A-Za-z]*) *(.text .text.*)
    . = ALIGN(0x1000);
    PROVIDE(etext = .);
  }

  .rodata : {
    . = ALIGN(16);
    EXCLUDE_FILE(build/src/[A-Za-z]*) *(.srodata .srodata.*) /* do not need to distinguish this from .rodata */
    . = ALIGN(16);
    EXCLUDE_FILE(build/src/[A-Za-z]*) *(.rodata .rodata.*)
  }

  .data : {
    . = ALIGN(16);
    EXCLUDE_FILE(build/src/[A-Za-z]*) *(.sdata .sdata.*) /* do not need to distinguish this from .data */
    . = ALIGN(16);
    EXCLUDE_FILE(build/src/[A-Za-z]*) *(.data .data.*)
  }

  .bss : {
    . = ALIGN(16);
    EXCLUDE_FILE(build/src/[A-Za-z]*) *(.sbss .sbss.*) /* do not need to distinguish this from .bss */
    . = ALIGN(16);
    EXCLUDE_FILE(build/src/[A-Za-z]*) *(.bss .bss.*)
  }

    . = ALIGN(0x1000);

  user.got : {
        *(.got .got.*)
        . = ALIGN(16);
      }

  user.text : {
      *(.text .text.*)
      . = ALIGN(0x1000);
    }

    user.rodata : {
      . = ALIGN(16);
      *(.srodata .srodata.*) /* do not need to distinguish this from .rodata */
      . = ALIGN(16);
      *(.rodata .rodata.*)
    }

    user.data : {
      . = ALIGN(16);
      *(.sdata .sdata.*) /* do not need to distinguish this from .data */
      . = ALIGN(16);
      *(.data .data.*)
    }

    user.bss : {
      . = ALIGN(16);
      *(.sbss .sbss.*) /* do not need to distinguish this from .bss */
      . = ALIGN(16);
      *(.bss .bss.*)
    }

  PROVIDE(end = .);
}
