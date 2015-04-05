#define _IOC(a,b,c,d) ( ((a)<<29) | ((b)<<8) | (c) | ((d)<<16) )
#define _IOC_NONE  1U
#define _IOC_WRITE 4U
#define _IOC_READ  2U

#define _IO(a,b) _IOC(_IOC_NONE,(a),(b),0)
#define _IOW(a,b,c) _IOC(_IOC_WRITE,(a),(b),sizeof(c))
#define _IOR(a,b,c) _IOC(_IOC_READ,(a),(b),sizeof(c))
#define _IOWR(a,b,c) _IOC(_IOC_READ|_IOC_WRITE,(a),(b),sizeof(c))

#define FIONCLEX	_IO('f', 2)
#define FIOCLEX		_IO('f', 1)
#define FIOASYNC	_IOW('f', 125, int)
#define FIONBIO		_IOW('f', 126, int)
#define FIONREAD	_IOR('f', 127, int)
#define TIOCINQ		FIONREAD
#define FIOQSIZE	_IOR('f', 128, char[8])
#define TIOCGETP	_IOR('t', 8, char[6])
#define TIOCSETP	_IOW('t', 9, char[6])
#define TIOCSETN	_IOW('t', 10, char[6])

#define TIOCSETC	_IOW('t', 17, char[6])
#define TIOCGETC	_IOR('t', 18, char[6])
#define TCGETS		_IOR('t', 19, char[44])
#define TCSETS		_IOW('t', 20, char[44])
#define TCSETSW		_IOW('t', 21, char[44])
#define TCSETSF		_IOW('t', 22, char[44])

#define TCGETA		_IOR('t', 23, char[20])
#define TCSETA		_IOW('t', 24, char[20])
#define TCSETAW		_IOW('t', 25, char[20])
#define TCSETAF		_IOW('t', 28, char[20])

#define TCSBRK		_IO('t', 29)
#define TCXONC		_IO('t', 30)
#define TCFLSH		_IO('t', 31)

#define TIOCSWINSZ	_IOW('t', 103, char[8])
#define TIOCGWINSZ	_IOR('t', 104, char[8])
#define TIOCSTART	_IO('t', 110)
#define TIOCSTOP	_IO('t', 111)

#define TIOCOUTQ	_IOR('t', 115, int)

#define TIOCGLTC	_IOR('t', 116, char[6])
#define TIOCSLTC	_IOW('t', 117, char[6])
#define TIOCSPGRP	_IOW('t', 118, int)
#define TIOCGPGRP	_IOR('t', 119, int)

#define TIOCEXCL	0x540C
#define TIOCNXCL	0x540D
#define TIOCSCTTY	0x540E

#define TIOCSTI		0x5412
#define TIOCMGET	0x5415
#define TIOCMBIS	0x5416
#define TIOCMBIC	0x5417
#define TIOCMSET	0x5418
#define TIOCM_LE	0x001
#define TIOCM_DTR	0x002
#define TIOCM_RTS	0x004
#define TIOCM_ST	0x008
#define TIOCM_SR	0x010
#define TIOCM_CTS	0x020
#define TIOCM_CAR	0x040
#define TIOCM_RNG	0x080
#define TIOCM_DSR	0x100
#define TIOCM_CD	TIOCM_CAR
#define TIOCM_RI	TIOCM_RNG
#define TIOCM_OUT1	0x2000
#define TIOCM_OUT2	0x4000
#define TIOCM_LOOP	0x8000

#define TIOCGSOFTCAR	0x5419
#define TIOCSSOFTCAR	0x541A
#define TIOCLINUX	0x541C
#define TIOCCONS	0x541D
#define TIOCGSERIAL	0x541E
#define TIOCSSERIAL	0x541F
#define TIOCPKT	0x5420
#define TIOCPKT_DATA		0
#define TIOCPKT_FLUSHREAD	1
#define TIOCPKT_FLUSHWRITE	2
#define TIOCPKT_STOP		4
#define TIOCPKT_START		8
#define TIOCPKT_NOSTOP		16
#define TIOCPKT_DOSTOP		32
#define TIOCPKT_IOCTL		64

#define TIOCNOTTY	0x5422
#define TIOCSETD	0x5423
#define TIOCGETD	0x5424
#define TCSBRKP		0x5425
#define TIOCSBRK	0x5427
#define TIOCCBRK	0x5428
#define TIOCGSID	0x5429
#define TIOCGRS485	0x542e
#define TIOCSRS485	0x542f
#define TIOCGPTN	_IOR('T',0x30, unsigned int)
#define TIOCSPTLCK	_IOW('T',0x31, int)
#define TIOCGDEV	_IOR('T',0x32, unsigned int)
#define TIOCSIG		_IOW('T',0x36, int)
#define TIOCVHANGUP	0x5437

#define TIOCSERCONFIG	0x5453
#define TIOCSERGWILD	0x5454
#define TIOCSERSWILD	0x5455
#define TIOCGLCKTRMIOS	0x5456
#define TIOCSLCKTRMIOS	0x5457
#define TIOCSERGSTRUCT	0x5458
#define TIOCSERGETLSR	0x5459
#define TIOCSER_TEMT	0x01
#define TIOCSERGETMULTI	0x545A
#define TIOCSERSETMULTI	0x545B

#define TIOCMIWAIT	0x545C
#define TIOCGICOUNT	0x545D


/* end kernel header ioctls.h */


#define TIOCTTYGSTRUCT	0x5426

#define TCGETX		0x5432
#define TCSETX		0x5433
#define TCSETXF		0x5434
#define TCSETXW		0x5435

#define TIOCGHAYESESP   0x545E
#define TIOCSHAYESESP   0x545F

struct winsize {
	unsigned short ws_row;
	unsigned short ws_col;
	unsigned short ws_xpixel;
	unsigned short ws_ypixel;
};

#define TIOCM_MODEM_BITS TIOCM_OUT2

#define N_TTY           0
#define N_SLIP          1
#define N_MOUSE         2
#define N_PPP           3
#define N_STRIP         4
#define N_AX25          5
#define N_X25           6
#define N_6PACK         7
#define N_MASC          8
#define N_R3964         9
#define N_PROFIBUS_FDL  10
#define N_IRDA          11
#define N_SMSBLOCK      12
#define N_HDLC          13
#define N_SYNC_PPP      14
#define N_HCI           15

#define FIOSETOWN       0x8901
#define SIOCSPGRP       0x8902
#define FIOGETOWN       0x8903
#define SIOCGPGRP       0x8904
#define SIOCATMARK      0x8905
#define SIOCGSTAMP      0x8906

#define SIOCADDRT       0x890B
#define SIOCDELRT       0x890C
#define SIOCRTMSG       0x890D

#define SIOCGIFNAME     0x8910
#define SIOCSIFLINK     0x8911
#define SIOCGIFCONF     0x8912
#define SIOCGIFFLAGS    0x8913
#define SIOCSIFFLAGS    0x8914
#define SIOCGIFADDR     0x8915
#define SIOCSIFADDR     0x8916
#define SIOCGIFDSTADDR  0x8917
#define SIOCSIFDSTADDR  0x8918
#define SIOCGIFBRDADDR  0x8919
#define SIOCSIFBRDADDR  0x891a
#define SIOCGIFNETMASK  0x891b
#define SIOCSIFNETMASK  0x891c
#define SIOCGIFMETRIC   0x891d
#define SIOCSIFMETRIC   0x891e
#define SIOCGIFMEM      0x891f
#define SIOCSIFMEM      0x8920
#define SIOCGIFMTU      0x8921
#define SIOCSIFMTU      0x8922
#define SIOCSIFNAME     0x8923
#define SIOCSIFHWADDR   0x8924
#define SIOCGIFENCAP    0x8925
#define SIOCSIFENCAP    0x8926
#define SIOCGIFHWADDR   0x8927
#define SIOCGIFSLAVE    0x8929
#define SIOCSIFSLAVE    0x8930
#define SIOCADDMULTI    0x8931
#define SIOCDELMULTI    0x8932
#define SIOCGIFINDEX    0x8933
#define SIOGIFINDEX     SIOCGIFINDEX
#define SIOCSIFPFLAGS   0x8934
#define SIOCGIFPFLAGS   0x8935
#define SIOCDIFADDR     0x8936
#define SIOCSIFHWBROADCAST 0x8937
#define SIOCGIFCOUNT    0x8938

#define SIOCGIFBR       0x8940
#define SIOCSIFBR       0x8941

#define SIOCGIFTXQLEN   0x8942
#define SIOCSIFTXQLEN   0x8943

#define SIOCDARP        0x8953
#define SIOCGARP        0x8954
#define SIOCSARP        0x8955

#define SIOCDRARP       0x8960
#define SIOCGRARP       0x8961
#define SIOCSRARP       0x8962

#define SIOCGIFMAP      0x8970
#define SIOCSIFMAP      0x8971

#define SIOCADDDLCI     0x8980
#define SIOCDELDLCI     0x8981

#define SIOCDEVPRIVATE		0x89F0
#define SIOCPROTOPRIVATE	0x89E0
