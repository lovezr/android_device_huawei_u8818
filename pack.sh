NOWDATE=$(date +%y%m%d)
#VERSION=v2.0.3
mkdir ~/OUT/$NOWDATE;
. build/envsetup.sh;

###########
#C8812.U8818.U8860.C8860E.U8800PRO.P970.P990.DesireS.DesireHD
###########
#cm_u8800pro-target_files-eng.airk.zip
#cm_u8800pro-ota-eng.airk.zip
########  1
MACHINE=c8812
brunch $MACHINE;
cp out/target/product/$MACHINE/obj/PACKAGING/target_files_intermediates/cm_$MACHINE-target_files-eng.airk.zip ~/OUT/$NOWDATE/;
cp out/target/product/$MACHINE/cm_$MACHINE-ota-eng.airk.zip ~/OUT/$NOWDATE/;
make clean;
#######   1 END

#######   2
MACHINE=u8818
brunch $MACHINE;
cp out/target/product/$MACHINE/obj/PACKAGING/target_files_intermediates/cm_$MACHINE-target_files-eng.airk.zip ~/OUT/$NOWDATE/;
cp out/target/product/$MACHINE/cm_$MACHINE-ota-eng.airk.zip ~/OUT/$NOWDATE/;
make clean;
#######   2 END

#######   3
MACHINE=u8860
brunch $MACHINE;
cp out/target/product/$MACHINE/obj/PACKAGING/target_files_intermediates/cm_$MACHINE-target_files-eng.airk.zip ~/OUT/$NOWDATE/;
cp out/target/product/$MACHINE/cm_$MACHINE-ota-eng.airk.zip ~/OUT/$NOWDATE/;
make clean;
#######   3 END

#######   4
MACHINE=c8860e
brunch $MACHINE;
cp out/target/product/$MACHINE/obj/PACKAGING/target_files_intermediates/cm_$MACHINE-target_files-eng.airk.zip ~/OUT/$NOWDATE/;
cp out/target/product/$MACHINE/cm_$MACHINE-ota-eng.airk.zip ~/OUT/$NOWDATE/;
make clean;
#######   4 END

#######   5
#MACHINE=U8800PRO
#brunch u8800pro;
#cp out/target/product/u8800pro/ShenDu-$MACHINE-$VERSION-$NOWDATE.zip ~/OUT/;
#make clean;
#######   5 END

#######   6
MACHINE=p970
brunch $MACHINE;
cp out/target/product/$MACHINE/obj/PACKAGING/target_files_intermediates/cm_$MACHINE-target_files-eng.airk.zip ~/OUT/$NOWDATE/;
cp out/target/product/$MACHINE/cm_$MACHINE-ota-eng.airk.zip ~/OUT/$NOWDATE/;
#######   6 END

#######   7
#MACHINE=P990
#brunch p990;
#cp out/target/product/p990/ShenDu-$MACHINE-$VERSION-$NOWDATE.zip ~/OUT/;
#make clean;
#######   7 END

#######   8
#MACHINE=DesireS
#brunch saga;
#cp out/target/product/saga/ShenDu-$MACHINE-$VERSION-$NOWDATE.zip ~/OUT/;
#######   8 END

#######   9 
#MACHINE=DesireHD
#brunch ace;
#cp out/target/product/ace/ShenDu-$MACHINE-$VERSION-$NOWDATE.zip ~/OUT/;
#######   9 END
