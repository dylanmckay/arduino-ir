export CC=~/projects/builds/llvm/bin/clang++

OUT_DIR=ir

WARNINGS="-Wno-unknown-attributes -Wno-deprecated -Wno-unused-volatile-lvalue"
DEFINES="-DF_CPU=16000000L -DARDUINO=10613 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR -D__AVR_ATmega328P__"
INCLUDES="-I /Applications/Arduino.app/Contents/Java/hardware/arduino/avr/cores/arduino -I /Applications/Arduino.app/Contents/Java/hardware/tools/avr/avr/include/  -O2 -I /Applications/Arduino.app/Contents/Java/hardware/arduino/avr/variants/standard"
CXXFLAGS="$DEFINES $INCLUDES $WARNINGS -O2 -g"

mkdir $OUT_DIR

function compile_clang {
  SRC=$1
  DST=$OUT_DIR/$(basename $SRC).ll
  CMD="$CC -c -S -emit-llvm $SRC -o $DST $CXXFLAGS"

  echo running: $CMD

  $CMD

  if [ $? -ne 0 ]; then
    echo "; Error while compiling $SRC" > $DST
  fi
}

function compile {
  compile_clang "$@"
}

echo Compiling core...

compile Arduino/WInterrupts.c
compile Arduino/hooks.c
compile Arduino/wiring.c
compile Arduino/wiring_analog.c
compile Arduino/wiring_digital.c
compile Arduino/wiring_pulse.c
compile Arduino/wiring_shift.c
compile Arduino/CDC.cpp
compile Arduino/HardwareSerial.cpp
compile Arduino/HardwareSerial0.cpp
compile Arduino/HardwareSerial1.cpp
compile Arduino/HardwareSerial2.cpp
compile Arduino/HardwareSerial3.cpp
compile Arduino/IPAddress.cpp
compile Arduino/PluggableUSB.cpp
compile Arduino/Print.cpp
compile Arduino/Stream.cpp
compile Arduino/Tone.cpp
compile Arduino/USBCore.cpp
compile Arduino/WMath.cpp
compile Arduino/WString.cpp
compile Arduino/abi.cpp
compile Arduino/main.cpp
compile Arduino/new.cpp
