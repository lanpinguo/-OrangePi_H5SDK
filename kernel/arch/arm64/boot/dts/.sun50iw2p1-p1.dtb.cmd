cmd_arch/arm64/boot/dts/sun50iw2p1-p1.dtb := /work/orangePi/OrangePi_H5SDK/toolchain/gcc-linaro-aarch/bin/aarch64-linux-gnu-gcc -E -Wp,-MD,arch/arm64/boot/dts/.sun50iw2p1-p1.dtb.d.pre.tmp -nostdinc -I/work/orangePi/OrangePi_H5SDK/kernel/arch/arm64/boot/dts -I/work/orangePi/OrangePi_H5SDK/kernel/arch/arm64/boot/dts/include -I/work/orangePi/OrangePi_H5SDK/kernel/include -undef -D__DTS__ -x assembler-with-cpp -o arch/arm64/boot/dts/.sun50iw2p1-p1.dtb.dts arch/arm64/boot/dts/sun50iw2p1-p1.dts ; /work/orangePi/OrangePi_H5SDK/kernel/scripts/dtc/dtc -O dtb -o arch/arm64/boot/dts/sun50iw2p1-p1.dtb -b 0 -i arch/arm64/boot/dts/  -d arch/arm64/boot/dts/.sun50iw2p1-p1.dtb.d.dtc.tmp arch/arm64/boot/dts/.sun50iw2p1-p1.dtb.dts ; cat arch/arm64/boot/dts/.sun50iw2p1-p1.dtb.d.pre.tmp arch/arm64/boot/dts/.sun50iw2p1-p1.dtb.d.dtc.tmp > arch/arm64/boot/dts/.sun50iw2p1-p1.dtb.d

source_arch/arm64/boot/dts/sun50iw2p1-p1.dtb := arch/arm64/boot/dts/sun50iw2p1-p1.dts

deps_arch/arm64/boot/dts/sun50iw2p1-p1.dtb := \
  arch/arm64/boot/dts/sun50iw2p1.dtsi \
  /work/orangePi/OrangePi_H5SDK/kernel/include/dt-bindings/interrupt-controller/arm-gic.h \
  /work/orangePi/OrangePi_H5SDK/kernel/include/dt-bindings/interrupt-controller/irq.h \
  /work/orangePi/OrangePi_H5SDK/kernel/include/dt-bindings/gpio/gpio.h \
  arch/arm64/boot/dts/sun50iw2p1-clk.dtsi \
  arch/arm64/boot/dts/sun50iw2p1-pinctrl.dtsi \

arch/arm64/boot/dts/sun50iw2p1-p1.dtb: $(deps_arch/arm64/boot/dts/sun50iw2p1-p1.dtb)

$(deps_arch/arm64/boot/dts/sun50iw2p1-p1.dtb):
