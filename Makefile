
CFLAGS       += -O1 -s  -Wall -lpthread -lrt
GCC           =  arm-uid01_rev2_toolchain_buildroot-linux-uclibcgnueabi-gcc
#GCC           =  arm-gcc_4.9.2_cortex_a15-linux-uclibcgnueabi-gcc



clean:
	-@rm  *.o
	-@rm  *.so
	-@rm  *.*~
	-@rm  test_atomic
	-@rm  test_atomic_2
	-@rm  test_atomic_3
	-@rm  test_atomic_4
	-@rm  test_atomic_5
	-@rm  test_atomic_6



atomic_arm.o:
	$(GCC)  -c atomic_arm.S $(CFLAGS)
TEST_1_OBJ +=  atomic_arm.o
TEST_2_OBJ +=  atomic_arm.o
TEST_3_OBJ +=  atomic_arm.o
TEST_4_OBJ +=  atomic_arm.o
TEST_5_OBJ +=  atomic_arm.o
TEST_6_OBJ +=  atomic_arm.o



test_atomic.o:
	$(GCC)  -c test_atomic.c $(CFLAGS)
TEST_1_OBJ +=  test_atomic.o



#Сборка демона
test_atomic:  $(TEST_1_OBJ)
	$(GCC) $(TEST_1_OBJ) -o test_atomic $(CFLAGS)
	@echo "  --- Compiled test_atomic ---"




test_atomic_2.o:
	$(GCC)  -c test_atomic_2.c $(CFLAGS)
TEST_2_OBJ +=  test_atomic_2.o



shmem_utils.o:
	$(GCC)  -c shmem_utils.c $(CFLAGS)
TEST_2_OBJ +=  shmem_utils.o
TEST_6_OBJ +=  shmem_utils.o



#Сборка демона
test_atomic_2:  $(TEST_2_OBJ)
	$(GCC) $(TEST_2_OBJ) -o test_atomic_2 $(CFLAGS)
	@echo "  --- Compiled test_atomic_2 ---"




test_atomic_3.o:
	$(GCC)  -c test_atomic_3.c $(CFLAGS)
TEST_3_OBJ +=  test_atomic_3.o



#Сборка демона
test_atomic_3:  $(TEST_3_OBJ)
	$(GCC) $(TEST_3_OBJ) -o test_atomic_3 $(CFLAGS)
	@echo "  --- Compiled test_atomic_3 ---"




test_atomic_4.o:
	$(GCC)  -c test_atomic_4.c $(CFLAGS)
TEST_4_OBJ +=  test_atomic_4.o



#Сборка демона
test_atomic_4:  $(TEST_4_OBJ)
	$(GCC) $(TEST_4_OBJ) -o test_atomic_4 $(CFLAGS)
	@echo "  --- Compiled test_atomic_4 ---"



test_atomic_5.o:
	$(GCC)  -c test_atomic_5.c $(CFLAGS)
TEST_5_OBJ +=  test_atomic_5.o



#Сборка демона
test_atomic_5:  $(TEST_5_OBJ)
	$(GCC) $(TEST_5_OBJ) -o test_atomic_5 $(CFLAGS)
	@echo "  --- Compiled test_atomic_5 ---"




test_atomic_6.o:
	$(GCC)  -c test_atomic_6.c $(CFLAGS)
TEST_6_OBJ +=  test_atomic_6.o



#Сборка демона
test_atomic_6:  $(TEST_6_OBJ)
	$(GCC) $(TEST_6_OBJ) -o test_atomic_6 $(CFLAGS)
	@echo "  --- Compiled test_atomic_6 ---"




all: clean test_atomic test_atomic_2  test_atomic_3 test_atomic_4 test_atomic_5  test_atomic_6



#Версия собранная в режиме отладки: определен #define DEBUG 1
debug: CFLAGS  += -DDEBUG
debug: all




help:
	@echo "make [command]"
	@echo "add the path (buildroot-2011.05/output/host/usr/bin) to your file  in home/.bashrc\n"
	@echo "command is:"
	@echo "   clean   -  remove all binary files"
	@echo "   daemon  -  build  daemon"
	@echo "   all     -  clean and build all bin"
	@echo "   debug   -  build daemon in debug mode (#define DEBUG 1)"
	@echo "   help    -  This help"


