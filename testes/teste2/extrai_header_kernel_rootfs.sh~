#! /bin/sh
## Autor: David Alain

# ======= Pega os tamanhos dos binários ======
bin_42000_size=$(ls -l B14103-GVT-OXY-42000.bin | awk '{ print $5 }')
bin_42001_size=$(ls -l B14103-GVT-OXY-42001.bin | awk '{ print $5 }')
bin_42002_size=$(ls -l B14103-GVT-OXY-42002.bin | awk '{ print $5 }')
bin_42003_size=$(ls -l B14103-GVT-OXY-42003.bin | awk '{ print $5 }')
bin_42004_size=$(ls -l B14103-GVT-OXY-42004.bin | awk '{ print $5 }')
bin_42005_size=$(ls -l B14103-GVT-OXY-42005.bin | awk '{ print $5 }')
bin_42006_size=$(ls -l B14103-GVT-OXY-42006.bin | awk '{ print $5 }')

# ======= Extrai os headers =======
# Todos os headers são do mesmo tamanho (4096 Bytes)

header_size=4096

dd if=B14103-GVT-OXY-42000.bin of=header_42000 bs=1 count=$header_size
dd if=B14103-GVT-OXY-42001.bin of=header_42001 bs=1 count=$header_size
dd if=B14103-GVT-OXY-42002.bin of=header_42002 bs=1 count=$header_size
dd if=B14103-GVT-OXY-42003.bin of=header_42003 bs=1 count=$header_size
dd if=B14103-GVT-OXY-42004.bin of=header_42004 bs=1 count=$header_size
dd if=B14103-GVT-OXY-42005.bin of=header_42005 bs=1 count=$header_size
dd if=B14103-GVT-OXY-42006.bin of=header_42006 bs=1 count=$header_size

# ======= Extrai os kernels =======
# Todos os kernels são do mesmo tamanho (2134016 Bytes)

kernel_size=2134016
kernel_offset=$header_size

dd if=B14103-GVT-OXY-42000.bin of=kernel_42000 bs=1 count=$kernel_size skip=$kernel_offset
dd if=B14103-GVT-OXY-42001.bin of=kernel_42001 bs=1 count=$kernel_size skip=$kernel_offset
dd if=B14103-GVT-OXY-42002.bin of=kernel_42002 bs=1 count=$kernel_size skip=$kernel_offset
dd if=B14103-GVT-OXY-42003.bin of=kernel_42003 bs=1 count=$kernel_size skip=$kernel_offset
dd if=B14103-GVT-OXY-42004.bin of=kernel_42004 bs=1 count=$kernel_size skip=$kernel_offset
dd if=B14103-GVT-OXY-42005.bin of=kernel_42005 bs=1 count=$kernel_size skip=$kernel_offset
dd if=B14103-GVT-OXY-42006.bin of=kernel_42006 bs=1 count=$kernel_size skip=$kernel_offset

# == Extrai os rootfs ==

rootfs_offset=$(($header_size+$kernel_size))
rootfs_42000_size=$(($bin_42000_size-$rootfs_offset))
rootfs_42001_size=$(($bin_42001_size-$rootfs_offset))
rootfs_42002_size=$(($bin_42002_size-$rootfs_offset))
rootfs_42003_size=$(($bin_42003_size-$rootfs_offset))
rootfs_42004_size=$(($bin_42004_size-$rootfs_offset))
rootfs_42005_size=$(($bin_42005_size-$rootfs_offset))
rootfs_42006_size=$(($bin_42006_size-$rootfs_offset))

dd if=B14103-GVT-OXY-42000.bin of=rootfs_42000 bs=1 count=$rootfs_42000_size skip=$rootfs_offset
dd if=B14103-GVT-OXY-42001.bin of=rootfs_42001 bs=1 count=$rootfs_42001_size skip=$rootfs_offset
dd if=B14103-GVT-OXY-42002.bin of=rootfs_42002 bs=1 count=$rootfs_42002_size skip=$rootfs_offset
dd if=B14103-GVT-OXY-42003.bin of=rootfs_42003 bs=1 count=$rootfs_42003_size skip=$rootfs_offset
dd if=B14103-GVT-OXY-42004.bin of=rootfs_42004 bs=1 count=$rootfs_42004_size skip=$rootfs_offset
dd if=B14103-GVT-OXY-42005.bin of=rootfs_42005 bs=1 count=$rootfs_42005_size skip=$rootfs_offset
dd if=B14103-GVT-OXY-42006.bin of=rootfs_42006 bs=1 count=$rootfs_42006_size skip=$rootfs_offset

