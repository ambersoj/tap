Are you aware that this is the path?  It could be extra tricky because of the duplicte directory names:

/usr/src/linux-source-6.8.0/linux-source-6.8.0/drivers/net/tun.c

Did you know there is also a tap.c?  It's here:

/usr/src/linux-source-6.8.0/linux-source-6.8.0/drivers/net/tap.c

Maybe tap.c will come in handy too.

This knowledge might be useful for you to find resources or set paths in VSCode.

////////////////////

I changed tasks.json like this:

{
    "version": "2.0.0",
    "tasks": [
        {
            "label": "Build tun.ko",
            "type": "shell",
            "command": "make -C ./linux-headers/ M=$(pwd) modules",
            "problemMatcher": [],
            "group": {
                "kind": "build",
                "isDefault": true
            }
        }
    ]
}

because that command I executed earlier put the linux-headers in /usr/local/tap/linux-headers

Hey, don't we have to tell this tasks.json file or this make system to get tun.c to compile?  Doesn't Makefile have a list of source code files?

///////////////////////

Hey does this tell you anything.  It's the problems VSCode claims it has:
[{
	"resource": "/usr/src/linux-source-6.8.0/linux-source-6.8.0/drivers/net/tun.c",
	"owner": "C/C++: IntelliSense",
	"code": "1696",
	"severity": 8,
	"message": "#include errors detected. Please update your includePath. Squiggles are disabled for this translation unit (/usr/src/linux-source-6.8.0/linux-source-6.8.0/drivers/net/tun.c).",
	"source": "C/C++",
	"startLineNumber": 38,
	"startColumn": 1,
	"endLineNumber": 38,
	"endColumn": 32
},{
	"resource": "/usr/src/linux-source-6.8.0/linux-source-6.8.0/drivers/net/tun.c",
	"owner": "C/C++: IntelliSense",
	"code": "1696",
	"severity": 8,
	"message": "cannot open source file \"linux/sched/signal.h\"",
	"source": "C/C++",
	"startLineNumber": 38,
	"startColumn": 1,
	"endLineNumber": 38,
	"endColumn": 32
},{
	"resource": "/usr/src/linux-source-6.8.0/linux-source-6.8.0/drivers/net/tun.c",
	"owner": "cpptools",
	"severity": 8,
	"message": "linux/sched/signal.h: No such file or directory",
	"source": "gcc",
	"startLineNumber": 38,
	"startColumn": 10,
	"endLineNumber": 38,
	"endColumn": 10
},{
	"resource": "/usr/src/linux-source-6.8.0/linux-source-6.8.0/drivers/net/tun.c",
	"owner": "C/C++: IntelliSense",
	"code": "1696",
	"severity": 8,
	"message": "cannot open source file \"linux/slab.h\"",
	"source": "C/C++",
	"startLineNumber": 40,
	"startColumn": 1,
	"endLineNumber": 40,
	"endColumn": 24
},{
	"resource": "/usr/src/linux-source-6.8.0/linux-source-6.8.0/drivers/net/tun.c",
	"owner": "C/C++: IntelliSense",
	"code": "1696",
	"severity": 8,
	"message": "cannot open source file \"linux/init.h\"",
	"source": "C/C++",
	"startLineNumber": 43,
	"startColumn": 1,
	"endLineNumber": 43,
	"endColumn": 24
},{
	"resource": "/usr/src/linux-source-6.8.0/linux-source-6.8.0/drivers/net/tun.c",
	"owner": "C/C++: IntelliSense",
	"code": "1696",
	"severity": 8,
	"message": "cannot open source file \"linux/skbuff.h\"",
	"source": "C/C++",
	"startLineNumber": 44,
	"startColumn": 1,
	"endLineNumber": 44,
	"endColumn": 26
},{
	"resource": "/usr/src/linux-source-6.8.0/linux-source-6.8.0/drivers/net/tun.c",
	"owner": "C/C++: IntelliSense",
	"code": "1696",
	"severity": 8,
	"message": "cannot open source file \"linux/etherdevice.h\"",
	"source": "C/C++",
	"startLineNumber": 46,
	"startColumn": 1,
	"endLineNumber": 46,
	"endColumn": 31
},{
	"resource": "/usr/src/linux-source-6.8.0/linux-source-6.8.0/drivers/net/tun.c",
	"owner": "C/C++: IntelliSense",
	"code": "1696",
	"severity": 8,
	"message": "cannot open source file \"linux/miscdevice.h\"",
	"source": "C/C++",
	"startLineNumber": 47,
	"startColumn": 1,
	"endLineNumber": 47,
	"endColumn": 30
},{
	"resource": "/usr/src/linux-source-6.8.0/linux-source-6.8.0/drivers/net/tun.c",
	"owner": "C/C++: IntelliSense",
	"code": "1696",
	"severity": 8,
	"message": "cannot open source file \"linux/compat.h\"",
	"source": "C/C++",
	"startLineNumber": 50,
	"startColumn": 1,
	"endLineNumber": 50,
	"endColumn": 26
},{
	"resource": "/usr/src/linux-source-6.8.0/linux-source-6.8.0/drivers/net/tun.c",
	"owner": "C/C++: IntelliSense",
	"code": "1696",
	"severity": 8,
	"message": "cannot open source file \"linux/crc32.h\"",
	"source": "C/C++",
	"startLineNumber": 56,
	"startColumn": 1,
	"endLineNumber": 56,
	"endColumn": 25
},{
	"resource": "/usr/src/linux-source-6.8.0/linux-source-6.8.0/drivers/net/tun.c",
	"owner": "C/C++: IntelliSense",
	"code": "1696",
	"severity": 8,
	"message": "cannot open source file \"linux/nsproxy.h\"",
	"source": "C/C++",
	"startLineNumber": 57,
	"startColumn": 1,
	"endLineNumber": 57,
	"endColumn": 27
},{
	"resource": "/usr/src/linux-source-6.8.0/linux-source-6.8.0/drivers/net/tun.c",
	"owner": "C/C++: IntelliSense",
	"code": "1696",
	"severity": 8,
	"message": "cannot open source file \"linux/rcupdate.h\"",
	"source": "C/C++",
	"startLineNumber": 59,
	"startColumn": 1,
	"endLineNumber": 59,
	"endColumn": 28
},{
	"resource": "/usr/src/linux-source-6.8.0/linux-source-6.8.0/drivers/net/tun.c",
	"owner": "C/C++: IntelliSense",
	"code": "1696",
	"severity": 8,
	"message": "cannot open source file \"net/net_namespace.h\"",
	"source": "C/C++",
	"startLineNumber": 60,
	"startColumn": 1,
	"endLineNumber": 60,
	"endColumn": 31
},{
	"resource": "/usr/src/linux-source-6.8.0/linux-source-6.8.0/drivers/net/tun.c",
	"owner": "C/C++: IntelliSense",
	"code": "1696",
	"severity": 8,
	"message": "cannot open source file \"net/netns/generic.h\"",
	"source": "C/C++",
	"startLineNumber": 61,
	"startColumn": 1,
	"endLineNumber": 61,
	"endColumn": 31
},{
	"resource": "/usr/src/linux-source-6.8.0/linux-source-6.8.0/drivers/net/tun.c",
	"owner": "C/C++: IntelliSense",
	"code": "1696",
	"severity": 8,
	"message": "cannot open source file \"net/rtnetlink.h\"",
	"source": "C/C++",
	"startLineNumber": 62,
	"startColumn": 1,
	"endLineNumber": 62,
	"endColumn": 27
},{
	"resource": "/usr/src/linux-source-6.8.0/linux-source-6.8.0/drivers/net/tun.c",
	"owner": "C/C++: IntelliSense",
	"code": "1696",
	"severity": 8,
	"message": "cannot open source file \"net/sock.h\"",
	"source": "C/C++",
	"startLineNumber": 63,
	"startColumn": 1,
	"endLineNumber": 63,
	"endColumn": 22
},{
	"resource": "/usr/src/linux-source-6.8.0/linux-source-6.8.0/drivers/net/tun.c",
	"owner": "C/C++: IntelliSense",
	"code": "1696",
	"severity": 8,
	"message": "cannot open source file \"net/xdp.h\"",
	"source": "C/C++",
	"startLineNumber": 64,
	"startColumn": 1,
	"endLineNumber": 64,
	"endColumn": 21
},{
	"resource": "/usr/src/linux-source-6.8.0/linux-source-6.8.0/drivers/net/tun.c",
	"owner": "C/C++: IntelliSense",
	"code": "1696",
	"severity": 8,
	"message": "cannot open source file \"net/ip_tunnels.h\"",
	"source": "C/C++",
	"startLineNumber": 65,
	"startColumn": 1,
	"endLineNumber": 65,
	"endColumn": 28
},{
	"resource": "/usr/src/linux-source-6.8.0/linux-source-6.8.0/drivers/net/tun.c",
	"owner": "C/C++: IntelliSense",
	"code": "1696",
	"severity": 8,
	"message": "cannot open source file \"linux/seq_file.h\"",
	"source": "C/C++",
	"startLineNumber": 66,
	"startColumn": 1,
	"endLineNumber": 66,
	"endColumn": 28
},{
	"resource": "/usr/src/linux-source-6.8.0/linux-source-6.8.0/drivers/net/tun.c",
	"owner": "C/C++: IntelliSense",
	"code": "1696",
	"severity": 8,
	"message": "cannot open source file \"linux/skb_array.h\"",
	"source": "C/C++",
	"startLineNumber": 68,
	"startColumn": 1,
	"endLineNumber": 68,
	"endColumn": 29
},{
	"resource": "/usr/src/linux-source-6.8.0/linux-source-6.8.0/drivers/net/tun.c",
	"owner": "C/C++: IntelliSense",
	"code": "1696",
	"severity": 8,
	"message": "cannot open source file \"linux/bpf_trace.h\"",
	"source": "C/C++",
	"startLineNumber": 70,
	"startColumn": 1,
	"endLineNumber": 70,
	"endColumn": 29
},{
	"resource": "/usr/src/linux-source-6.8.0/linux-source-6.8.0/drivers/net/tun.c",
	"owner": "C/C++: IntelliSense",
	"code": "1696",
	"severity": 8,
	"message": "cannot open source file \"linux/mutex.h\"",
	"source": "C/C++",
	"startLineNumber": 71,
	"startColumn": 1,
	"endLineNumber": 71,
	"endColumn": 25
},{
	"resource": "/usr/src/linux-source-6.8.0/linux-source-6.8.0/drivers/net/tun.c",
	"owner": "C/C++: IntelliSense",
	"code": "1696",
	"severity": 8,
	"message": "cannot open source file \"linux/ieee802154.h\"",
	"source": "C/C++",
	"startLineNumber": 72,
	"startColumn": 1,
	"endLineNumber": 72,
	"endColumn": 30
},{
	"resource": "/usr/src/linux-source-6.8.0/linux-source-6.8.0/drivers/net/tun.c",
	"owner": "C/C++: IntelliSense",
	"code": "1696",
	"severity": 8,
	"message": "cannot open source file \"uapi/linux/if_fddi.h\"",
	"source": "C/C++",
	"startLineNumber": 74,
	"startColumn": 1,
	"endLineNumber": 74,
	"endColumn": 32
},{
	"resource": "/usr/src/linux-source-6.8.0/linux-source-6.8.0/drivers/net/tun.c",
	"owner": "C/C++: IntelliSense",
	"code": "1696",
	"severity": 8,
	"message": "cannot open source file \"uapi/linux/if_hippi.h\"",
	"source": "C/C++",
	"startLineNumber": 75,
	"startColumn": 1,
	"endLineNumber": 75,
	"endColumn": 33
},{
	"resource": "/usr/src/linux-source-6.8.0/linux-source-6.8.0/drivers/net/tun.c",
	"owner": "C/C++: IntelliSense",
	"code": "1696",
	"severity": 8,
	"message": "cannot open source file \"uapi/linux/if_fc.h\"",
	"source": "C/C++",
	"startLineNumber": 76,
	"startColumn": 1,
	"endLineNumber": 76,
	"endColumn": 30
},{
	"resource": "/usr/src/linux-source-6.8.0/linux-source-6.8.0/drivers/net/tun.c",
	"owner": "C/C++: IntelliSense",
	"code": "1696",
	"severity": 8,
	"message": "cannot open source file \"net/ax25.h\"",
	"source": "C/C++",
	"startLineNumber": 77,
	"startColumn": 1,
	"endLineNumber": 77,
	"endColumn": 22
},{
	"resource": "/usr/src/linux-source-6.8.0/linux-source-6.8.0/drivers/net/tun.c",
	"owner": "C/C++: IntelliSense",
	"code": "1696",
	"severity": 8,
	"message": "cannot open source file \"net/rose.h\"",
	"source": "C/C++",
	"startLineNumber": 78,
	"startColumn": 1,
	"endLineNumber": 78,
	"endColumn": 22
},{
	"resource": "/usr/src/linux-source-6.8.0/linux-source-6.8.0/drivers/net/tun.c",
	"owner": "C/C++: IntelliSense",
	"code": "1696",
	"severity": 8,
	"message": "cannot open source file \"net/6lowpan.h\"",
	"source": "C/C++",
	"startLineNumber": 79,
	"startColumn": 1,
	"endLineNumber": 79,
	"endColumn": 25
},{
	"resource": "/usr/src/linux-source-6.8.0/linux-source-6.8.0/drivers/net/tun.c",
	"owner": "C/C++: IntelliSense",
	"code": "1696",
	"severity": 8,
	"message": "cannot open source file \"linux/uaccess.h\"",
	"source": "C/C++",
	"startLineNumber": 81,
	"startColumn": 1,
	"endLineNumber": 81,
	"endColumn": 27
},{
	"resource": "/usr/src/linux-source-6.8.0/linux-source-6.8.0/drivers/net/tun.c",
	"owner": "C/C++: IntelliSense",
	"code": "1696",
	"severity": 8,
	"message": "cannot open source file \"linux/proc_fs.h\"",
	"source": "C/C++",
	"startLineNumber": 82,
	"startColumn": 1,
	"endLineNumber": 82,
	"endColumn": 27
}]

////////////////////

Hey this looks like progress:

root@PRED:/usr/local/tap# make
make -C /lib/modules/6.8.0-52-generic/build M=/usr/local/tap modules
make[1]: Entering directory '/usr/src/linux-headers-6.8.0-52-generic'
warning: the compiler differs from the one used to build the kernel
  The kernel was built by: x86_64-linux-gnu-gcc-13 (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0
  You are using:           gcc-13 (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0
  MODPOST /usr/local/tap/Module.symvers
ERROR: modpost: /usr/local/tap/tun: 'tun_ptr_free' exported twice. Previous export was in vmlinux
ERROR: modpost: /usr/local/tap/tun: 'tun_get_socket' exported twice. Previous export was in vmlinux
ERROR: modpost: /usr/local/tap/tun: 'tun_get_tx_ring' exported twice. Previous export was in vmlinux
make[3]: *** [scripts/Makefile.modpost:145: /usr/local/tap/Module.symvers] Error 1
make[2]: *** [/usr/src/linux-headers-6.8.0-52-generic/Makefile:1877: modpost] Error 2
make[1]: *** [Makefile:240: __sub-make] Error 2
make[1]: Leaving directory '/usr/src/linux-headers-6.8.0-52-generic'
make: *** [Makefile:7: all] Error 2

//////////////////

I get this:

root@PRED:/usr/local/tap# rmmod tun
rmmod: ERROR: Module tun is builtin.

and this:

root@PRED:/usr/local/tap# lsmod | grep tun
xfrm6_tunnel           16384  1 xfrm_interface
tunnel4                12288  1 xfrm_interface
tunnel6                12288  2 xfrm_interface,xfrm6_tunnel

I sure hope there's a way to split my module out and modify it and put it back in.  That would be a powerful skill and maybe solve our immediate problem too.

///////////////////////////

root@PRED:/usr/src/linux-source-6.8.0/linux-source-6.8.0# make M=drivers/net
  CC [M]  drivers/net/phy/aquantia/aquantia_main.o
In file included from ./include/linux/array_size.h:5,
                 from ./include/linux/kernel.h:16,
                 from drivers/net/phy/aquantia/aquantia_main.c:10:
./include/linux/compiler.h:251:10: fatal error: asm/rwonce.h: No such file or directory
  251 | #include <asm/rwonce.h>
      |          ^~~~~~~~~~~~~~
compilation terminated.
make[4]: *** [scripts/Makefile.build:243: drivers/net/phy/aquantia/aquantia_main.o] Error 1
make[3]: *** [scripts/Makefile.build:481: drivers/net/phy/aquantia] Error 2
make[2]: *** [scripts/Makefile.build:481: drivers/net/phy] Error 2
make[1]: *** [/usr/src/linux-source-6.8.0/linux-source-6.8.0/Makefile:1925: drivers/net] Error 2
make: *** [Makefile:240: __sub-make] Error 2
root@PRED:/usr/src/linux-source-6.8.0/linux-source-6.8.0# 

//////////////////////////////////

cd /usr/src/linux-source-6.8.0/linux-source-6.8.0
make mrproper  # Clean up the kernel source
make olddefconfig  # Use existing config
make prepare  # Prepare headers
make modules_prepare  # Prepare for module compilation

<stdin>:1:10: fatal error: libelf.h: No such file or directory
compilation terminated.
/usr/src/linux-source-6.8.0/linux-source-6.8.0/tools/objtool/include/objtool/elf.h:10:10: fatal error: gelf.h: No such file or directory
   10 | #include <gelf.h>
      |          ^~~~~~~~
compilation terminated.
make[5]: *** [/usr/src/linux-source-6.8.0/linux-source-6.8.0/tools/build/Makefile.build:106: /usr/src/linux-source-6.8.0/linux-source-6.8.0/tools/objtool/arch/x86/special.o] Error 1
make[4]: *** [/usr/src/linux-source-6.8.0/linux-source-6.8.0/tools/build/Makefile.build:158: arch/x86] Error 2
make[3]: *** [Makefile:66: /usr/src/linux-source-6.8.0/linux-source-6.8.0/tools/objtool/objtool-in.o] Error 2
make[2]: *** [Makefile:73: objtool] Error 2
make[1]: *** [/usr/src/linux-source-6.8.0/linux-source-6.8.0/Makefile:1364: tools/objtool] Error 2
make: *** [Makefile:240: __sub-make] Error 2
  CALL    scripts/checksyscalls.sh
  DESCEND objtool
<stdin>:1:10: fatal error: libelf.h: No such file or directory
compilation terminated.
  INSTALL libsubcmd_headers
  CC      /usr/src/linux-source-6.8.0/linux-source-6.8.0/tools/objtool/arch/x86/special.o
In file included from /usr/src/linux-source-6.8.0/linux-source-6.8.0/tools/objtool/include/objtool/objtool.h:13,
                 from /usr/src/linux-source-6.8.0/linux-source-6.8.0/tools/objtool/include/objtool/arch.h:11,
                 from /usr/src/linux-source-6.8.0/linux-source-6.8.0/tools/objtool/include/objtool/check.h:11,
                 from /usr/src/linux-source-6.8.0/linux-source-6.8.0/tools/objtool/include/objtool/special.h:10,
                 from arch/x86/special.c:4:
/usr/src/linux-source-6.8.0/linux-source-6.8.0/tools/objtool/include/objtool/elf.h:10:10: fatal error: gelf.h: No such file or directory
   10 | #include <gelf.h>
      |          ^~~~~~~~
compilation terminated.
make[5]: *** [/usr/src/linux-source-6.8.0/linux-source-6.8.0/tools/build/Makefile.build:106: /usr/src/linux-source-6.8.0/linux-source-6.8.0/tools/objtool/arch/x86/special.o] Error 1
make[4]: *** [/usr/src/linux-source-6.8.0/linux-source-6.8.0/tools/build/Makefile.build:158: arch/x86] Error 2
make[3]: *** [Makefile:66: /usr/src/linux-source-6.8.0/linux-source-6.8.0/tools/objtool/objtool-in.o] Error 2
make[2]: *** [Makefile:73: objtool] Error 2
make[1]: *** [/usr/src/linux-source-6.8.0/linux-source-6.8.0/Makefile:1364: tools/objtool] Error 2
make: *** [Makefile:240: __sub-make] Error 2
root@PRED:/usr/src/linux-source-6.8.0/linux-source-6.8.0# 

/////////////////////////////////////////////

This is the last little bit of what I take was a build/link process:

INSTALL /usr/src/linux-source-6.8.0/linux-source-6.8.0/tools/bpf/resolve_btfids/libsubcmd//include/subcmd/parse-options.h
  INSTALL /usr/src/linux-source-6.8.0/linux-source-6.8.0/tools/bpf/resolve_btfids/libsubcmd//include/subcmd/run-command.h
  INSTALL libsubcmd_headers
  HOSTCC  /usr/src/linux-source-6.8.0/linux-source-6.8.0/tools/bpf/resolve_btfids/main.o
  HOSTCC  /usr/src/linux-source-6.8.0/linux-source-6.8.0/tools/bpf/resolve_btfids/rbtree.o
  HOSTCC  /usr/src/linux-source-6.8.0/linux-source-6.8.0/tools/bpf/resolve_btfids/zalloc.o
  HOSTCC  /usr/src/linux-source-6.8.0/linux-source-6.8.0/tools/bpf/resolve_btfids/string.o
  HOSTCC  /usr/src/linux-source-6.8.0/linux-source-6.8.0/tools/bpf/resolve_btfids/ctype.o
  HOSTCC  /usr/src/linux-source-6.8.0/linux-source-6.8.0/tools/bpf/resolve_btfids/str_error_r.o
  HOSTLD  /usr/src/linux-source-6.8.0/linux-source-6.8.0/tools/bpf/resolve_btfids/resolve_btfids-in.o
  LINK     resolve_btfids
  CALL    scripts/checksyscalls.sh
  DESCEND objtool
  INSTALL libsubcmd_headers
  DESCEND bpf/resolve_btfids
  INSTALL libsubcmd_headers
  LDS     scripts/module.lds
root@PRED:/usr/src/linux-source-6.8.0/linux-source-6.8.0# 

Will that have that modified tun.c in it?  With those print statements and the if statement?

This is very interesting.  Maybe we can quickly program our tap woes away.  We'll have a great time trying anyway, ritht partner?







////////////////////////////////////////////////////////






