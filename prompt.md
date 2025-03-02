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

The find command run from /usr didn't return anything.  Would it work to somehow run these commands:

cd /usr/src/linux-source-6.8.0/linux-source-6.8.0
make mrproper  # Clean up kernel source
make olddefconfig  # Use existing config
make prepare  # Prepare headers
make modules_prepare  # Prepare for module compilation

like I did to kick off the load build but put it through grep or something with a | and look for tun?  Would that work?  Not that I'm suggesting I'd do that, but wondering if it would work and maybe give and indication of where tun.ko is.  That find command is one I don't understand and don't trust.

I briefly researched doing stuff like what we're doing now and I learned of an old tool that was good for looking through bodies of code, and not having to use the grep method.  I know it's for finding functions and keywords and names and things in files, not for finding files themselves, but do you have an idea of the tool I'm thinking of and do you think it would be useful or would VSCode and its extensions do the same or better?

This Ubuntu installation was done in an automated way.  Had I done it myself I would have modularized it.  I'm pretty sure we'll have to change it on disk.  Would it be a good idea to go that route right now?

/////////////////////////////////////

Last time I used this:

make mrproper  # Clean up kernel source
make olddefconfig  # Use existing config
make prepare  # Prepare headers
make modules_prepare  # Prepare for module compilation

This time it's this:

make -j$(nproc)  # Compile kernel with all CPU cores
make modules
make modules_install
make install

Now I have these errors:

  CC [M]  kernel/kheaders.o
make[1]: *** [/usr/src/linux-source-6.8.0/linux-source-6.8.0/Makefile:1925: .] Error 2
make: *** [Makefile:240: __sub-make] Error 2
  CALL    scripts/checksyscalls.sh
  DESCEND objtool
  INSTALL libsubcmd_headers
  DESCEND bpf/resolve_btfids
  INSTALL libsubcmd_headers
make[3]: *** No rule to make target 'debian/canonical-certs.pem', needed by 'certs/x509_certificate_list'.  Stop.
make[2]: *** [scripts/Makefile.build:481: certs] Error 2
make[1]: *** [/usr/src/linux-source-6.8.0/linux-source-6.8.0/Makefile:1925: .] Error 2
make: *** [Makefile:240: __sub-make] Error 2
  SYMLINK /lib/modules/6.8.12/build
make[2]: *** No rule to make target 'modules.order', needed by '/lib/modules/6.8.12/modules.order'.  Stop.
make[1]: *** [/usr/src/linux-source-6.8.0/linux-source-6.8.0/Makefile:1833: modules_install] Error 2
make: *** [Makefile:240: __sub-make] Error 2
  INSTALL /boot

 *** Missing file: arch/x86/boot/bzImage
 *** You need to run "make" before "make install".

make[1]: *** [arch/x86/Makefile:295: install] Error 1
make: *** [Makefile:240: __sub-make] Error 2
root@PRED:/usr/src/linux-source-6.8.0/linux-source-6.8.0# 

I'm guess this is because as we dig down deeper we create the need for more dependencies and because this was send all compiled together the dependencies are no longer present at the place the load building is happening.  Is that right?

Is there a way I can find out what they are all at once and get them all in place at the same time or would it be best to just carry on like this, as a sure-fire method, and eventually uncover all of the dependencies and handle them as they come until we've exhausted them?

/////////////////////////////////

Looks like a linker error:

  CC [M]  fs/xfs/xfs_notify_failure.o
  LD [M]  fs/xfs/xfs.o
make[1]: *** [/usr/src/linux-source-6.8.0/linux-source-6.8.0/Makefile:1925: .] Error 2
make: *** [Makefile:240: __sub-make] Error 2
root@PRED:/usr/src/linux-source-6.8.0/linux-source-6.8.0# 

/////////////////////////////////////

Last time it said I should run make before make install.  I caught a glimpse of that in the error messages last time.  Should I do:

make -j$(nproc) bzImage
make -j$(nproc) modules
make modules_install
make
make install

instead of:

make -j$(nproc) bzImage
make -j$(nproc) modules
make modules_install
make install

?

/////////////////////////////////

I ran this:

make -j$(nproc) bzImage    # Build the kernel image
make -j$(nproc) modules    # Build all modules
make modules_install       # Install the modules
make -j$(nproc)            # Build everything (needed before install)
make install               # Install the kernel

Look at this last little bit of activity on my computer:

  LD [M]  sound/soc/codecs/snd-soc-simple-mux.o
make[1]: *** [/usr/src/linux-source-6.8.0/linux-source-6.8.0/Makefile:1925: .] Error 2
make: *** [Makefile:240: __sub-make] Error 2
  INSTALL /boot

 *** Missing file: arch/x86/boot/bzImage
 *** You need to run "make" before "make install".

make[1]: *** [arch/x86/Makefile:295: install] Error 1
make: *** [Makefile:240: __sub-make] Error 2
root@PRED:/usr/src/linux-source-6.8.0/linux-source-6.8.0# tail -n 30 /usr/src/linux-source-6.8.0/linux-source-6.8.0/build.log
tail: cannot open '/usr/src/linux-source-6.8.0/linux-source-6.8.0/build.log' for reading: No such file or directory
root@PRED:/usr/src/linux-source-6.8.0/linux-source-6.8.0# find /usr/src/linux-source-6.8.0/linux-source-6.8.0 -name "build.log"
root@PRED:/usr/src/linux-source-6.8.0/linux-source-6.8.0# ls
arch   COPYING  Documentation  fs                          include   ipc      kernel    MAINTAINERS  net     samples   sound   Ubuntu.md  vmlinux-gdb.py
block  CREDITS  drivers        generic.depmod.log          init      Kbuild   lib       Makefile     README  scripts   tools   usr
certs  crypto   dropped.txt    generic.inclusion-list.log  io_uring  Kconfig  LICENSES  mm           rust    security  ubuntu  virt
root@PRED:/usr/src/linux-source-6.8.0/linux-source-6.8.0# vim Makefile 

 I went to do:

 tail -n 30 /usr/src/linux-source-6.8.0/linux-source-6.8.0/build.log

as you can see above and it couldn't find biuld.log.  So I went to look for it and I don't know what directory to look in within this directory:

/usr/src/linux-source-6.8.0/linux-source-6.8.0/

////////////////////////////////

Hey it's currently building.  In the mean time look at these lines that were scrolling by.  Are those the lines I added to tun.c?

drivers/net/tun.c: In function ‘tun_do_read’:
drivers/net/tun.c:2241:72: error: ‘len’ undeclared (first use in this function)
 2241 |         printk(KERN_INFO "TUN: Sending packet to user, length: %zd\n", len);
      |                                                                        ^~~
./include/linux/printk.h:429:33: note: in definition of macro ‘printk_index_wrap’
  429 |                 _p_func(_fmt, ##__VA_ARGS__);                           \
      |                                 ^~~~~~~~~~~
drivers/net/tun.c:2241:9: note: in expansion of macro ‘printk’
 2241 |         printk(KERN_INFO "TUN: Sending packet to user, length: %zd\n", len);
      |         ^~~~~~
drivers/net/tun.c:2241:72: note: each undeclared identifier is reported only once for each function it appears in
 2241 |         printk(KERN_INFO "TUN: Sending packet to user, length: %zd\n", len);
      |                                                                        ^~~
./include/linux/printk.h:429:33: note: in definition of macro ‘printk_index_wrap’
  429 |                 _p_func(_fmt, ##__VA_ARGS__);                           \
      |                                 ^~~~~~~~~~~
drivers/net/tun.c:2241:9: note: in expansion of macro ‘printk’
 2241 |         printk(KERN_INFO "TUN: Sending packet to user, length: %zd\n", len);
      |         ^~~~~~
make[4]: *** [scripts/Makefile.build:243: drivers/net/tun.o] Error 1
make[4]: *** Waiting for unfinished jobs....

//////////////////////////////////////

I think we might have some confusion here.  I'm not so sure I put those changes into the same tun.c that the load build is working on.  I suspect I made the changes in the current kernel version, not my local one.  After all our reloading and stuff I bet I have an old one.  I'm going to use VSCode to get the latest tun.c, and I'll bet it's different.  What the compiler complains about seems to be about 3 lines off of what the editor is displaying.

It says the line 2241 is the problem.

static ssize_t tun_do_read(struct tun_struct *tun, struct tun_file *tfile,
			   struct iov_iter *to,
			   int noblock, void *ptr)
{
	ssize_t ret;  /*  <-----------  I changed the printk below from length to this ret */
	int err;

		if (!iov_iter_count(to)) {    /* <------  This is line 2241 in VSCode version */
		tun_ptr_free(ptr);
		return 0;
	}

	if (!ptr) {
		/* Read frames from ring */
		ptr = tun_ring_recv(tfile, noblock, &err);
		if (!ptr)
			return err;
	}

	if (tun_is_xdp_frame(ptr)) {
		struct xdp_frame *xdpf = tun_ptr_to_xdp(ptr);

		ret = tun_put_user_xdp(tun, tfile, xdpf, to);
		xdp_return_frame(xdpf);
	} else {
		struct sk_buff *skb = ptr;

		ret = tun_put_user(tun, tfile, skb, to);
		if (unlikely(ret < 0))
			kfree_skb(skb);
		else
			consume_skb(skb);
	}
	
	printk(KERN_INFO "TUN: Sending packet to user, length: %zd\n", ret); /* <---- ret used to be length */

	return ret;
}

See that if statement that's line 2241?  And see that ret above it?  I used to have the printk line up at the top too.  So now I'm confused over what's happening and which tun.c is getting in the build, the one in the kernel directory or the one that I've got in VSCode.  The directory I run the make commands you give me to run I've been running in this directory actually:

/usr/src/linux-source-6.8.0/linux-source-6.8.0# 

It's been what's been making certain things work but maybe I've gotten confused over what commands I should run in what directories a too.

What would you advise I do next at this point?  Can you please assess our status and let's just make sure we have a plan and that we're making progress.

////////////////////////////

The very last one is mine in /usr/local/tap.  I got it from  here:

/usr/src/linux-source-6.8.0/linux-source-6.8.0/drivers/net/tun.c:

This is the one I have in VSCode, which is that last one below.  My edited, modified tun.c is supposed to replace that one in /drivers/:

root@PRED:/usr/src/linux-source-6.8.0/linux-source-6.8.0# find /usr/src/linux-source-6.8.0 -name "tun.c"
/usr/src/linux-source-6.8.0/linux-source-6.8.0/tools/testing/selftests/net/tun.c
/usr/src/linux-source-6.8.0/linux-source-6.8.0/drivers/net/ethernet/mellanox/mlx5/core/en/tc/act/tun.c
/usr/src/linux-source-6.8.0/linux-source-6.8.0/drivers/net/tun.c
/usr/src/linux-source-6.8.0/linux-source-6.8.0/net/qrtr/tun.c
root@PRED:/usr/src/linux-source-6.8.0/linux-source-6.8.0# find /usr/local -name "tun.c"
/usr/local/tap/tun.c
root@PRED:/usr/src/linux-source-6.8.0/linux-source-6.8.0# 

So it's good we're getting to the bottom of it.  Let's work our workflow so that my edits effect the proper file, at least eventually some time before the make process.  Will I need to start running the load build and the make commands from my own directory and use my own Makefile, that somehow ties in with the kernel make and build stuff, or do I not use my own make file and just participate in the existing make mechansim that's in place with the kernel already?

What's next?  This is great fun and powerful.  I should be able to control my own computer completely.

//////////////////////////////////

Here's the errors now.  We're making progress:

root@PRED:/usr/src/linux-source-6.8.0/linux-source-6.8.0# cd /usr/src/linux-source-6.8.0/linux-source-6.8.0
make -j$(nproc) bzImage    # Build the kernel image
make -j$(nproc) modules    # Build all modules
make modules_install       # Install the modules
make -j$(nproc)            # Ensure everything is built
make install               # Install the kernel
mkdir -p /usr/src/linux-source-6.8.0/linux-source-6.8.0/tools/objtool && make O=/usr/src/linux-source-6.8.0/linux-source-6.8.0 subdir=tools/objtool --no-print-directory -C objtool 
mkdir -p /usr/src/linux-source-6.8.0/linux-source-6.8.0/tools/bpf/resolve_btfids && make O=/usr/src/linux-source-6.8.0/linux-source-6.8.0 subdir=tools/bpf/resolve_btfids --no-print-directory -C bpf/resolve_btfids 
  INSTALL libsubcmd_headers
  INSTALL libsubcmd_headers
  CALL    scripts/checksyscalls.sh
make[3]: *** No rule to make target 'debian/canonical-certs.pem', needed by 'certs/x509_certificate_list'.  Stop.
make[2]: *** [scripts/Makefile.build:481: certs] Error 2
make[2]: *** Waiting for unfinished jobs....
make[1]: *** [/usr/src/linux-source-6.8.0/linux-source-6.8.0/Makefile:1925: .] Error 2
make: *** [Makefile:240: __sub-make] Error 2
mkdir -p /usr/src/linux-source-6.8.0/linux-source-6.8.0/tools/objtool && make O=/usr/src/linux-source-6.8.0/linux-source-6.8.0 subdir=tools/objtool --no-print-directory -C objtool 
mkdir -p /usr/src/linux-source-6.8.0/linux-source-6.8.0/tools/bpf/resolve_btfids && make O=/usr/src/linux-source-6.8.0/linux-source-6.8.0 subdir=tools/bpf/resolve_btfids --no-print-directory -C bpf/resolve_btfids 
  INSTALL libsubcmd_headers
  INSTALL libsubcmd_headers
  CALL    scripts/checksyscalls.sh
make[3]: *** No rule to make target 'debian/canonical-certs.pem', needed by 'certs/x509_certificate_list'.  Stop.
make[2]: *** [scripts/Makefile.build:481: certs] Error 2
make[2]: *** Waiting for unfinished jobs....
make[1]: *** [/usr/src/linux-source-6.8.0/linux-source-6.8.0/Makefile:1925: .] Error 2
make: *** [Makefile:240: __sub-make] Error 2
  SYMLINK /lib/modules/6.8.12/build
make[2]: *** No rule to make target 'modules.order', needed by '/lib/modules/6.8.12/modules.order'.  Stop.
make[1]: *** [/usr/src/linux-source-6.8.0/linux-source-6.8.0/Makefile:1833: modules_install] Error 2
make: *** [Makefile:240: __sub-make] Error 2
mkdir -p /usr/src/linux-source-6.8.0/linux-source-6.8.0/tools/objtool && make O=/usr/src/linux-source-6.8.0/linux-source-6.8.0 subdir=tools/objtool --no-print-directory -C objtool 
mkdir -p /usr/src/linux-source-6.8.0/linux-source-6.8.0/tools/bpf/resolve_btfids && make O=/usr/src/linux-source-6.8.0/linux-source-6.8.0 subdir=tools/bpf/resolve_btfids --no-print-directory -C bpf/resolve_btfids 
  INSTALL libsubcmd_headers
  INSTALL libsubcmd_headers
  CALL    scripts/checksyscalls.sh
make[3]: *** No rule to make target 'debian/canonical-certs.pem', needed by 'certs/x509_certificate_list'.  Stop.
make[2]: *** [scripts/Makefile.build:481: certs] Error 2
make[2]: *** Waiting for unfinished jobs....
make[1]: *** [/usr/src/linux-source-6.8.0/linux-source-6.8.0/Makefile:1925: .] Error 2
make: *** [Makefile:240: __sub-make] Error 2
  INSTALL /boot

 *** Missing file: arch/x86/boot/bzImage
 *** You need to run "make" before "make install".

make[1]: *** [arch/x86/Makefile:295: install] Error 1
make: *** [Makefile:240: __sub-make] Error 2
root@PRED:/usr/src/linux-source-6.8.0/linux-source-6.8.0# 

This looks familiar:

make[3]: *** No rule to make target 'debian/canonical-certs.pem', needed by 'certs/x509_certificate_list'.  Stop.

Are we going to have to do something about this now?

////////////////////////////////

Disable Certificate Signing
Run this command inside your kernel source directory:

I did this:

scripts/config --disable SYSTEM_TRUSTED_KEYS
scripts/config --disable SYSTEM_REVOCATION_KEYS

here:

cd /usr/src/linux-source-6.8.0/linux-source-6.8.0

and I ran this:

make clean
make -j$(nproc) bzImage    # Build the kernel image
make -j$(nproc) modules    # Build all modules
make modules_install       # Install the modules
make -j$(nproc)            # Ensure everything is built
make install               # Install the kernel

instead of what you proposed:

make clean
make -j$(nproc) bzImage
make -j$(nproc) modules
make modules_install
make install

I hope it's ok.

It's been doing this for a while:

  HOSTLD  scripts/kconfig/conf
*
* Restart config...
*
*
* Certificates for signature checking
*
File name or PKCS#11 URI of module signing key (MODULE_SIG_KEY) [certs/signing_key.pem] certs/signing_key.pem
Type of module signing key to be generated
> 1. RSA (MODULE_SIG_KEY_TYPE_RSA)
  2. ECDSA (MODULE_SIG_KEY_TYPE_ECDSA)
choice[1-2?]: 1
Provide system-wide ring of trusted keys (SYSTEM_TRUSTED_KEYRING) [Y/?] y
  Additional X.509 keys for default system keyring (SYSTEM_TRUSTED_KEYS) [] (NEW) 

After (NEW) there's a solid curser-like character.  Should I provide some keyboard input?

/////////////////////////////////////////////


