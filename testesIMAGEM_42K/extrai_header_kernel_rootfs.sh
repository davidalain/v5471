#! /bin/sh


dd if=B14103-GVT-OXY-42000.bin of=header_42000 bs=1 count=4096
dd if=B14103-GVT-OXY-42001.bin of=header_42001 bs=1 count=4096
dd if=B14103-GVT-OXY-42002.bin of=header_42002 bs=1 count=4096
dd if=B14103-GVT-OXY-42003.bin of=header_42003 bs=1 count=4096
dd if=B14103-GVT-OXY-42004.bin of=header_42004 bs=1 count=4096
dd if=B14103-GVT-OXY-42005.bin of=header_42005 bs=1 count=4096
dd if=B14103-GVT-OXY-42006.bin of=header_42006 bs=1 count=4096

dd if=B14103-GVT-OXY-42000.bin of=kernel_42000 bs=1 count=2134016 skip=4096
dd if=B14103-GVT-OXY-42001.bin of=kernel_42001 bs=1 count=2134016 skip=4096
dd if=B14103-GVT-OXY-42002.bin of=kernel_42002 bs=1 count=2134016 skip=4096
dd if=B14103-GVT-OXY-42003.bin of=kernel_42003 bs=1 count=2134016 skip=4096
dd if=B14103-GVT-OXY-42004.bin of=kernel_42004 bs=1 count=2134016 skip=4096
dd if=B14103-GVT-OXY-42005.bin of=kernel_42005 bs=1 count=2134016 skip=4096
dd if=B14103-GVT-OXY-42006.bin of=kernel_42006 bs=1 count=2134016 skip=4096

dd if=B14103-GVT-OXY-42000.bin of=rootfs_42000 bs=1 count=11612160 skip=2138112
dd if=B14103-GVT-OXY-42001.bin of=rootfs_42001 bs=1 count=11612160 skip=2138112
dd if=B14103-GVT-OXY-42002.bin of=rootfs_42002 bs=1 count=11612160 skip=2138112
dd if=B14103-GVT-OXY-42003.bin of=rootfs_42003 bs=1 count=11612160 skip=2138112
dd if=B14103-GVT-OXY-42004.bin of=rootfs_42004 bs=1 count=11616256 skip=2138112
dd if=B14103-GVT-OXY-42005.bin of=rootfs_42005 bs=1 count=12681216 skip=2138112
dd if=B14103-GVT-OXY-42006.bin of=rootfs_42006 bs=1 count=12681216 skip=2138112
