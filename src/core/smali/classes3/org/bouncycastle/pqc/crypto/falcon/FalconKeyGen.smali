.class Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;
.super Ljava/lang/Object;


# instance fields
.field final DEPTH_INT_FG:I

.field final MAX_BL_LARGE:[I

.field final MAX_BL_SMALL:[I

.field private REV10:[S

.field final bitlength_avg:[I

.field final bitlength_std:[I

.field codec:Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;

.field fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

.field fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

.field final gauss_1024_12289:[J

.field primes:Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrimeList;

.field vrfy:Lorg/bouncycastle/pqc/crypto/falcon/FalconVrfy;


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x400

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->REV10:[S

    const/16 v0, 0x1b

    new-array v0, v0, [J

    fill-array-data v0, :array_1

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->gauss_1024_12289:[J

    const/16 v0, 0xb

    new-array v1, v0, [I

    fill-array-data v1, :array_2

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->MAX_BL_SMALL:[I

    const/16 v1, 0xa

    new-array v1, v1, [I

    fill-array-data v1, :array_3

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->MAX_BL_LARGE:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_4

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->bitlength_avg:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_5

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->bitlength_std:[I

    const/4 v0, 0x4

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->DEPTH_INT_FG:I

    new-instance v0, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrimeList;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrimeList;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->primes:Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrimeList;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->codec:Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconVrfy;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/falcon/FalconVrfy;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->vrfy:Lorg/bouncycastle/pqc/crypto/falcon/FalconVrfy;

    return-void

    :array_0
    .array-data 2
        0x0s
        0x200s
        0x100s
        0x300s
        0x80s
        0x280s
        0x180s
        0x380s
        0x40s
        0x240s
        0x140s
        0x340s
        0xc0s
        0x2c0s
        0x1c0s
        0x3c0s
        0x20s
        0x220s
        0x120s
        0x320s
        0xa0s
        0x2a0s
        0x1a0s
        0x3a0s
        0x60s
        0x260s
        0x160s
        0x360s
        0xe0s
        0x2e0s
        0x1e0s
        0x3e0s
        0x10s
        0x210s
        0x110s
        0x310s
        0x90s
        0x290s
        0x190s
        0x390s
        0x50s
        0x250s
        0x150s
        0x350s
        0xd0s
        0x2d0s
        0x1d0s
        0x3d0s
        0x30s
        0x230s
        0x130s
        0x330s
        0xb0s
        0x2b0s
        0x1b0s
        0x3b0s
        0x70s
        0x270s
        0x170s
        0x370s
        0xf0s
        0x2f0s
        0x1f0s
        0x3f0s
        0x8s
        0x208s
        0x108s
        0x308s
        0x88s
        0x288s
        0x188s
        0x388s
        0x48s
        0x248s
        0x148s
        0x348s
        0xc8s
        0x2c8s
        0x1c8s
        0x3c8s
        0x28s
        0x228s
        0x128s
        0x328s
        0xa8s
        0x2a8s
        0x1a8s
        0x3a8s
        0x68s
        0x268s
        0x168s
        0x368s
        0xe8s
        0x2e8s
        0x1e8s
        0x3e8s
        0x18s
        0x218s
        0x118s
        0x318s
        0x98s
        0x298s
        0x198s
        0x398s
        0x58s
        0x258s
        0x158s
        0x358s
        0xd8s
        0x2d8s
        0x1d8s
        0x3d8s
        0x38s
        0x238s
        0x138s
        0x338s
        0xb8s
        0x2b8s
        0x1b8s
        0x3b8s
        0x78s
        0x278s
        0x178s
        0x378s
        0xf8s
        0x2f8s
        0x1f8s
        0x3f8s
        0x4s
        0x204s
        0x104s
        0x304s
        0x84s
        0x284s
        0x184s
        0x384s
        0x44s
        0x244s
        0x144s
        0x344s
        0xc4s
        0x2c4s
        0x1c4s
        0x3c4s
        0x24s
        0x224s
        0x124s
        0x324s
        0xa4s
        0x2a4s
        0x1a4s
        0x3a4s
        0x64s
        0x264s
        0x164s
        0x364s
        0xe4s
        0x2e4s
        0x1e4s
        0x3e4s
        0x14s
        0x214s
        0x114s
        0x314s
        0x94s
        0x294s
        0x194s
        0x394s
        0x54s
        0x254s
        0x154s
        0x354s
        0xd4s
        0x2d4s
        0x1d4s
        0x3d4s
        0x34s
        0x234s
        0x134s
        0x334s
        0xb4s
        0x2b4s
        0x1b4s
        0x3b4s
        0x74s
        0x274s
        0x174s
        0x374s
        0xf4s
        0x2f4s
        0x1f4s
        0x3f4s
        0xcs
        0x20cs
        0x10cs
        0x30cs
        0x8cs
        0x28cs
        0x18cs
        0x38cs
        0x4cs
        0x24cs
        0x14cs
        0x34cs
        0xccs
        0x2ccs
        0x1ccs
        0x3ccs
        0x2cs
        0x22cs
        0x12cs
        0x32cs
        0xacs
        0x2acs
        0x1acs
        0x3acs
        0x6cs
        0x26cs
        0x16cs
        0x36cs
        0xecs
        0x2ecs
        0x1ecs
        0x3ecs
        0x1cs
        0x21cs
        0x11cs
        0x31cs
        0x9cs
        0x29cs
        0x19cs
        0x39cs
        0x5cs
        0x25cs
        0x15cs
        0x35cs
        0xdcs
        0x2dcs
        0x1dcs
        0x3dcs
        0x3cs
        0x23cs
        0x13cs
        0x33cs
        0xbcs
        0x2bcs
        0x1bcs
        0x3bcs
        0x7cs
        0x27cs
        0x17cs
        0x37cs
        0xfcs
        0x2fcs
        0x1fcs
        0x3fcs
        0x2s
        0x202s
        0x102s
        0x302s
        0x82s
        0x282s
        0x182s
        0x382s
        0x42s
        0x242s
        0x142s
        0x342s
        0xc2s
        0x2c2s
        0x1c2s
        0x3c2s
        0x22s
        0x222s
        0x122s
        0x322s
        0xa2s
        0x2a2s
        0x1a2s
        0x3a2s
        0x62s
        0x262s
        0x162s
        0x362s
        0xe2s
        0x2e2s
        0x1e2s
        0x3e2s
        0x12s
        0x212s
        0x112s
        0x312s
        0x92s
        0x292s
        0x192s
        0x392s
        0x52s
        0x252s
        0x152s
        0x352s
        0xd2s
        0x2d2s
        0x1d2s
        0x3d2s
        0x32s
        0x232s
        0x132s
        0x332s
        0xb2s
        0x2b2s
        0x1b2s
        0x3b2s
        0x72s
        0x272s
        0x172s
        0x372s
        0xf2s
        0x2f2s
        0x1f2s
        0x3f2s
        0xas
        0x20as
        0x10as
        0x30as
        0x8as
        0x28as
        0x18as
        0x38as
        0x4as
        0x24as
        0x14as
        0x34as
        0xcas
        0x2cas
        0x1cas
        0x3cas
        0x2as
        0x22as
        0x12as
        0x32as
        0xaas
        0x2aas
        0x1aas
        0x3aas
        0x6as
        0x26as
        0x16as
        0x36as
        0xeas
        0x2eas
        0x1eas
        0x3eas
        0x1as
        0x21as
        0x11as
        0x31as
        0x9as
        0x29as
        0x19as
        0x39as
        0x5as
        0x25as
        0x15as
        0x35as
        0xdas
        0x2das
        0x1das
        0x3das
        0x3as
        0x23as
        0x13as
        0x33as
        0xbas
        0x2bas
        0x1bas
        0x3bas
        0x7as
        0x27as
        0x17as
        0x37as
        0xfas
        0x2fas
        0x1fas
        0x3fas
        0x6s
        0x206s
        0x106s
        0x306s
        0x86s
        0x286s
        0x186s
        0x386s
        0x46s
        0x246s
        0x146s
        0x346s
        0xc6s
        0x2c6s
        0x1c6s
        0x3c6s
        0x26s
        0x226s
        0x126s
        0x326s
        0xa6s
        0x2a6s
        0x1a6s
        0x3a6s
        0x66s
        0x266s
        0x166s
        0x366s
        0xe6s
        0x2e6s
        0x1e6s
        0x3e6s
        0x16s
        0x216s
        0x116s
        0x316s
        0x96s
        0x296s
        0x196s
        0x396s
        0x56s
        0x256s
        0x156s
        0x356s
        0xd6s
        0x2d6s
        0x1d6s
        0x3d6s
        0x36s
        0x236s
        0x136s
        0x336s
        0xb6s
        0x2b6s
        0x1b6s
        0x3b6s
        0x76s
        0x276s
        0x176s
        0x376s
        0xf6s
        0x2f6s
        0x1f6s
        0x3f6s
        0xes
        0x20es
        0x10es
        0x30es
        0x8es
        0x28es
        0x18es
        0x38es
        0x4es
        0x24es
        0x14es
        0x34es
        0xces
        0x2ces
        0x1ces
        0x3ces
        0x2es
        0x22es
        0x12es
        0x32es
        0xaes
        0x2aes
        0x1aes
        0x3aes
        0x6es
        0x26es
        0x16es
        0x36es
        0xees
        0x2ees
        0x1ees
        0x3ees
        0x1es
        0x21es
        0x11es
        0x31es
        0x9es
        0x29es
        0x19es
        0x39es
        0x5es
        0x25es
        0x15es
        0x35es
        0xdes
        0x2des
        0x1des
        0x3des
        0x3es
        0x23es
        0x13es
        0x33es
        0xbes
        0x2bes
        0x1bes
        0x3bes
        0x7es
        0x27es
        0x17es
        0x37es
        0xfes
        0x2fes
        0x1fes
        0x3fes
        0x1s
        0x201s
        0x101s
        0x301s
        0x81s
        0x281s
        0x181s
        0x381s
        0x41s
        0x241s
        0x141s
        0x341s
        0xc1s
        0x2c1s
        0x1c1s
        0x3c1s
        0x21s
        0x221s
        0x121s
        0x321s
        0xa1s
        0x2a1s
        0x1a1s
        0x3a1s
        0x61s
        0x261s
        0x161s
        0x361s
        0xe1s
        0x2e1s
        0x1e1s
        0x3e1s
        0x11s
        0x211s
        0x111s
        0x311s
        0x91s
        0x291s
        0x191s
        0x391s
        0x51s
        0x251s
        0x151s
        0x351s
        0xd1s
        0x2d1s
        0x1d1s
        0x3d1s
        0x31s
        0x231s
        0x131s
        0x331s
        0xb1s
        0x2b1s
        0x1b1s
        0x3b1s
        0x71s
        0x271s
        0x171s
        0x371s
        0xf1s
        0x2f1s
        0x1f1s
        0x3f1s
        0x9s
        0x209s
        0x109s
        0x309s
        0x89s
        0x289s
        0x189s
        0x389s
        0x49s
        0x249s
        0x149s
        0x349s
        0xc9s
        0x2c9s
        0x1c9s
        0x3c9s
        0x29s
        0x229s
        0x129s
        0x329s
        0xa9s
        0x2a9s
        0x1a9s
        0x3a9s
        0x69s
        0x269s
        0x169s
        0x369s
        0xe9s
        0x2e9s
        0x1e9s
        0x3e9s
        0x19s
        0x219s
        0x119s
        0x319s
        0x99s
        0x299s
        0x199s
        0x399s
        0x59s
        0x259s
        0x159s
        0x359s
        0xd9s
        0x2d9s
        0x1d9s
        0x3d9s
        0x39s
        0x239s
        0x139s
        0x339s
        0xb9s
        0x2b9s
        0x1b9s
        0x3b9s
        0x79s
        0x279s
        0x179s
        0x379s
        0xf9s
        0x2f9s
        0x1f9s
        0x3f9s
        0x5s
        0x205s
        0x105s
        0x305s
        0x85s
        0x285s
        0x185s
        0x385s
        0x45s
        0x245s
        0x145s
        0x345s
        0xc5s
        0x2c5s
        0x1c5s
        0x3c5s
        0x25s
        0x225s
        0x125s
        0x325s
        0xa5s
        0x2a5s
        0x1a5s
        0x3a5s
        0x65s
        0x265s
        0x165s
        0x365s
        0xe5s
        0x2e5s
        0x1e5s
        0x3e5s
        0x15s
        0x215s
        0x115s
        0x315s
        0x95s
        0x295s
        0x195s
        0x395s
        0x55s
        0x255s
        0x155s
        0x355s
        0xd5s
        0x2d5s
        0x1d5s
        0x3d5s
        0x35s
        0x235s
        0x135s
        0x335s
        0xb5s
        0x2b5s
        0x1b5s
        0x3b5s
        0x75s
        0x275s
        0x175s
        0x375s
        0xf5s
        0x2f5s
        0x1f5s
        0x3f5s
        0xds
        0x20ds
        0x10ds
        0x30ds
        0x8ds
        0x28ds
        0x18ds
        0x38ds
        0x4ds
        0x24ds
        0x14ds
        0x34ds
        0xcds
        0x2cds
        0x1cds
        0x3cds
        0x2ds
        0x22ds
        0x12ds
        0x32ds
        0xads
        0x2ads
        0x1ads
        0x3ads
        0x6ds
        0x26ds
        0x16ds
        0x36ds
        0xeds
        0x2eds
        0x1eds
        0x3eds
        0x1ds
        0x21ds
        0x11ds
        0x31ds
        0x9ds
        0x29ds
        0x19ds
        0x39ds
        0x5ds
        0x25ds
        0x15ds
        0x35ds
        0xdds
        0x2dds
        0x1dds
        0x3dds
        0x3ds
        0x23ds
        0x13ds
        0x33ds
        0xbds
        0x2bds
        0x1bds
        0x3bds
        0x7ds
        0x27ds
        0x17ds
        0x37ds
        0xfds
        0x2fds
        0x1fds
        0x3fds
        0x3s
        0x203s
        0x103s
        0x303s
        0x83s
        0x283s
        0x183s
        0x383s
        0x43s
        0x243s
        0x143s
        0x343s
        0xc3s
        0x2c3s
        0x1c3s
        0x3c3s
        0x23s
        0x223s
        0x123s
        0x323s
        0xa3s
        0x2a3s
        0x1a3s
        0x3a3s
        0x63s
        0x263s
        0x163s
        0x363s
        0xe3s
        0x2e3s
        0x1e3s
        0x3e3s
        0x13s
        0x213s
        0x113s
        0x313s
        0x93s
        0x293s
        0x193s
        0x393s
        0x53s
        0x253s
        0x153s
        0x353s
        0xd3s
        0x2d3s
        0x1d3s
        0x3d3s
        0x33s
        0x233s
        0x133s
        0x333s
        0xb3s
        0x2b3s
        0x1b3s
        0x3b3s
        0x73s
        0x273s
        0x173s
        0x373s
        0xf3s
        0x2f3s
        0x1f3s
        0x3f3s
        0xbs
        0x20bs
        0x10bs
        0x30bs
        0x8bs
        0x28bs
        0x18bs
        0x38bs
        0x4bs
        0x24bs
        0x14bs
        0x34bs
        0xcbs
        0x2cbs
        0x1cbs
        0x3cbs
        0x2bs
        0x22bs
        0x12bs
        0x32bs
        0xabs
        0x2abs
        0x1abs
        0x3abs
        0x6bs
        0x26bs
        0x16bs
        0x36bs
        0xebs
        0x2ebs
        0x1ebs
        0x3ebs
        0x1bs
        0x21bs
        0x11bs
        0x31bs
        0x9bs
        0x29bs
        0x19bs
        0x39bs
        0x5bs
        0x25bs
        0x15bs
        0x35bs
        0xdbs
        0x2dbs
        0x1dbs
        0x3dbs
        0x3bs
        0x23bs
        0x13bs
        0x33bs
        0xbbs
        0x2bbs
        0x1bbs
        0x3bbs
        0x7bs
        0x27bs
        0x17bs
        0x37bs
        0xfbs
        0x2fbs
        0x1fbs
        0x3fbs
        0x7s
        0x207s
        0x107s
        0x307s
        0x87s
        0x287s
        0x187s
        0x387s
        0x47s
        0x247s
        0x147s
        0x347s
        0xc7s
        0x2c7s
        0x1c7s
        0x3c7s
        0x27s
        0x227s
        0x127s
        0x327s
        0xa7s
        0x2a7s
        0x1a7s
        0x3a7s
        0x67s
        0x267s
        0x167s
        0x367s
        0xe7s
        0x2e7s
        0x1e7s
        0x3e7s
        0x17s
        0x217s
        0x117s
        0x317s
        0x97s
        0x297s
        0x197s
        0x397s
        0x57s
        0x257s
        0x157s
        0x357s
        0xd7s
        0x2d7s
        0x1d7s
        0x3d7s
        0x37s
        0x237s
        0x137s
        0x337s
        0xb7s
        0x2b7s
        0x1b7s
        0x3b7s
        0x77s
        0x277s
        0x177s
        0x377s
        0xf7s
        0x2f7s
        0x1f7s
        0x3f7s
        0xfs
        0x20fs
        0x10fs
        0x30fs
        0x8fs
        0x28fs
        0x18fs
        0x38fs
        0x4fs
        0x24fs
        0x14fs
        0x34fs
        0xcfs
        0x2cfs
        0x1cfs
        0x3cfs
        0x2fs
        0x22fs
        0x12fs
        0x32fs
        0xafs
        0x2afs
        0x1afs
        0x3afs
        0x6fs
        0x26fs
        0x16fs
        0x36fs
        0xefs
        0x2efs
        0x1efs
        0x3efs
        0x1fs
        0x21fs
        0x11fs
        0x31fs
        0x9fs
        0x29fs
        0x19fs
        0x39fs
        0x5fs
        0x25fs
        0x15fs
        0x35fs
        0xdfs
        0x2dfs
        0x1dfs
        0x3dfs
        0x3fs
        0x23fs
        0x13fs
        0x33fs
        0xbfs
        0x2bfs
        0x1bfs
        0x3bfs
        0x7fs
        0x27fs
        0x17fs
        0x37fs
        0xffs
        0x2ffs
        0x1ffs
        0x3ffs
    .end array-data

    :array_1
    .array-data 8
        0x11d137d82df2ab58L    # 7.442682835852581E-223
        0x590c40f63ff5f974L    # 9.119782724244173E120
        0x3898e41d85b975b7L    # 4.681490977171112E-36
        0x20a964ef50858ff9L
        0x1107d1ae973857ebL    # 1.256834460130344E-226
        0x7fe1ec29220ea37L
        0x35dafcacd37a439L
        0x144d98306216d42L
        0x6d6beeeaf81655L
        0x20e1a00d6fa84cL
        0x8cdddcd9dda9cL
        0x2192fc3dcdcb4L
        0x71dfcd3c57e9L    # 6.1860000510735E-310
        0x1574938d76ebL
        0x3974b0c33e5L
        0x889d3da6feL
        0x1204ddc6cbL
        0x21bd3b27aL
        0x38091f5e
        0x5287db0
        0x6bc528
        0x7cbfb
        0x7ffc
        0x746
        0x5e
        0x4
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x1
        0x1
        0x2
        0x2
        0x4
        0x7
        0xe
        0x1b
        0x35
        0x6a
        0xd1
    .end array-data

    :array_3
    .array-data 4
        0x2
        0x2
        0x5
        0x7
        0xc
        0x15
        0x28
        0x4e
        0x9d
        0x134
    .end array-data

    :array_4
    .array-data 4
        0x4
        0xb
        0x18
        0x32
        0x66
        0xca
        0x191
        0x31a
        0x629
        0xc42
        0x18a4
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x1
        0x1
        0x1
        0x1
        0x2
        0x4
        0x5
        0x8
        0xd
        0x19
    .end array-data
.end method

.method private static mkn(I)I
    .locals 1

    const/4 v0, 0x1

    shl-int p0, v0, p0

    return p0
.end method

.method private toUnsignedLong(I)J
    .locals 4

    int-to-long v0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method get_rng_u64(Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;)J
    .locals 8

    const/16 v0, 0x8

    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->inner_shake256_extract([BII)V

    aget-byte p1, v1, v2

    int-to-long v2, p1

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    const/4 p1, 0x1

    aget-byte p1, v1, p1

    int-to-long v6, p1

    and-long/2addr v6, v4

    shl-long/2addr v6, v0

    or-long/2addr v2, v6

    const/4 p1, 0x2

    aget-byte p1, v1, p1

    int-to-long v6, p1

    and-long/2addr v6, v4

    const/16 p1, 0x10

    shl-long/2addr v6, p1

    or-long/2addr v2, v6

    const/4 p1, 0x3

    aget-byte p1, v1, p1

    int-to-long v6, p1

    and-long/2addr v6, v4

    const/16 p1, 0x18

    shl-long/2addr v6, p1

    or-long/2addr v2, v6

    const/4 p1, 0x4

    aget-byte p1, v1, p1

    int-to-long v6, p1

    and-long/2addr v6, v4

    const/16 p1, 0x20

    shl-long/2addr v6, p1

    or-long/2addr v2, v6

    const/4 p1, 0x5

    aget-byte p1, v1, p1

    int-to-long v6, p1

    and-long/2addr v6, v4

    const/16 p1, 0x28

    shl-long/2addr v6, p1

    or-long/2addr v2, v6

    const/4 p1, 0x6

    aget-byte p1, v1, p1

    int-to-long v6, p1

    and-long/2addr v6, v4

    const/16 p1, 0x30

    shl-long/2addr v6, p1

    or-long/2addr v2, v6

    const/4 p1, 0x7

    aget-byte p1, v1, p1

    int-to-long v0, p1

    and-long/2addr v0, v4

    const/16 p1, 0x38

    shl-long/2addr v0, p1

    or-long/2addr v0, v2

    return-wide v0
.end method

.method keygen(Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;[BI[BI[BI[BI[SII)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v13, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v8, p4

    move/from16 v6, p5

    move/from16 v5, p12

    invoke-static {v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->mkn(I)I

    move-result v7

    move-object/from16 v9, p10

    :goto_0
    mul-int/lit8 v1, v7, 0x3

    new-array v1, v1, [Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    invoke-virtual {v0, v13, v3, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->poly_small_mkgauss(Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;[BII)V

    invoke-virtual {v0, v13, v8, v6, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->poly_small_mkgauss(Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;[BII)V

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->codec:Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;->max_fg_bits:[B

    aget-byte v2, v2, v5

    const/4 v10, 0x1

    sub-int/2addr v2, v10

    shl-int v2, v10, v2

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v7, :cond_2

    add-int v14, v4, v12

    aget-byte v14, v3, v14

    if-ge v14, v2, :cond_1

    neg-int v15, v2

    if-le v14, v15, :cond_1

    add-int v14, v6, v12

    aget-byte v14, v8, v14

    if-ge v14, v2, :cond_1

    if-gt v14, v15, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    const/4 v2, -0x1

    :cond_2
    if-gez v2, :cond_3

    :goto_3
    move-object v14, v0

    move v15, v7

    goto/16 :goto_5

    :cond_3
    invoke-virtual {v0, v3, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->poly_small_sqnorm([BII)I

    move-result v2

    invoke-virtual {v0, v8, v6, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->poly_small_sqnorm([BII)I

    move-result v12

    add-int v14, v2, v12

    or-int/2addr v2, v12

    ushr-int/lit8 v2, v2, 0x1f

    neg-int v2, v2

    or-int/2addr v2, v14

    int-to-long v14, v2

    const-wide v16, 0xffffffffL

    and-long v14, v14, v16

    const-wide/16 v16, 0x41b7

    cmp-long v2, v14, v16

    if-ltz v2, :cond_4

    goto :goto_3

    :cond_4
    add-int v12, v7, v7

    const/4 v2, 0x0

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->poly_small_to_fp([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[BII)V

    move v4, v6

    move v2, v7

    move-object v3, v8

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->poly_small_to_fp([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[BII)V

    move-object v14, v0

    iget-object v0, v14, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    invoke-virtual {v0, v1, v6, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FFT([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    iget-object v0, v14, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    invoke-virtual {v0, v1, v2, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FFT([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    iget-object v0, v14, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object v3, v1

    move-object v5, v1

    move/from16 v7, p12

    move v6, v2

    move v2, v12

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_invnorm2_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move v4, v2

    move v5, v7

    const/4 v2, 0x0

    iget-object v0, v14, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    invoke-virtual {v0, v1, v2, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_adj_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    iget-object v0, v14, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    invoke-virtual {v0, v1, v6, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_adj_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    iget-object v0, v14, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    iget-object v3, v14, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_q:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    invoke-virtual {v0, v1, v2, v3, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_mulconst([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;ILorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I)V

    iget-object v0, v14, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    iget-object v3, v14, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_q:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    invoke-virtual {v0, v1, v6, v3, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_mulconst([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;ILorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I)V

    iget-object v0, v14, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object v3, v1

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_mul_autoadj_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    const/4 v7, 0x0

    iget-object v0, v14, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move/from16 v5, p12

    move v2, v6

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_mul_autoadj_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move v15, v2

    iget-object v0, v14, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    invoke-virtual {v0, v1, v7, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->iFFT([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    iget-object v0, v14, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    invoke-virtual {v0, v1, v15, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->iFFT([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    iget-object v0, v14, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_zero:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v15, :cond_5

    iget-object v3, v14, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    aget-object v4, v1, v2

    invoke-virtual {v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sqr(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v0

    iget-object v3, v14, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    add-int v7, v15, v2

    aget-object v4, v1, v7

    invoke-virtual {v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sqr(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_5
    iget-object v1, v14, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v2, v1, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_bnorm_max:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    invoke-virtual {v1, v0, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_lt(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Z

    move-result v0

    if-nez v0, :cond_6

    :goto_5
    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v8, p4

    move/from16 v6, p5

    move-object v0, v14

    move v7, v15

    goto/16 :goto_0

    :cond_6
    mul-int/lit8 v7, v15, 0x2

    new-array v8, v7, [S

    if-nez v9, :cond_7

    move-object v1, v8

    move v9, v15

    const/4 v2, 0x0

    goto :goto_6

    :cond_7
    move/from16 v2, p11

    move-object v1, v9

    const/4 v9, 0x0

    :goto_6
    iget-object v0, v14, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->vrfy:Lorg/bouncycastle/pqc/crypto/falcon/FalconVrfy;

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v6, p5

    move v7, v5

    move-object/from16 v5, p4

    invoke-virtual/range {v0 .. v9}, Lorg/bouncycastle/pqc/crypto/falcon/FalconVrfy;->compute_public([SI[BI[BII[SI)I

    move-result v0

    move-object/from16 v16, v1

    move v5, v7

    if-nez v0, :cond_8

    goto :goto_8

    :cond_8
    const/4 v0, 0x2

    if-le v5, v0, :cond_9

    mul-int/lit8 v7, v15, 0x1c

    goto :goto_7

    :cond_9
    mul-int/lit8 v7, v15, 0x54

    :goto_7
    new-array v0, v7, [I

    move-object v11, v0

    iget-object v0, v14, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->codec:Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;->max_FG_bits:[B

    aget-byte v0, v0, v5

    sub-int/2addr v0, v10

    shl-int v0, v10, v0

    add-int/lit8 v10, v0, -0x1

    const/4 v12, 0x0

    move-object/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p5

    move-object/from16 v2, p6

    move/from16 v3, p7

    move-object/from16 v4, p8

    move v1, v5

    move-object v0, v14

    move/from16 v5, p9

    invoke-virtual/range {v0 .. v12}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->solve_NTRU(I[BI[BI[BI[BII[II)I

    move-result v10

    if-nez v10, :cond_a

    :goto_8
    move-object/from16 v0, p0

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v8, p4

    move/from16 v6, p5

    move/from16 v5, p12

    move v7, v15

    move-object/from16 v9, v16

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method make_fg([II[BI[BIIII)V
    .locals 10

    move/from16 v7, p8

    invoke-static/range {p7 .. p7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->mkn(I)I

    move-result v1

    add-int v9, p2, v1

    sget-object v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrimeList;->PRIMES:[Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;

    const/4 v8, 0x0

    aget-object v3, v2, v8

    iget v3, v3, Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;->p:I

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_0

    add-int v5, p2, v4

    add-int v6, p4, v4

    aget-byte v6, p3, v6

    invoke-virtual {p0, v6, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_set(II)I

    move-result v6

    aput v6, p1, v5

    add-int v5, v9, v4

    add-int v6, p6, v4

    aget-byte v6, p5, v6

    invoke-virtual {p0, v6, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_set(II)I

    move-result v6

    aput v6, p1, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    if-nez v7, :cond_1

    if-eqz p9, :cond_1

    aget-object v3, v2, v8

    iget v6, v3, Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;->p:I

    invoke-virtual {p0, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_ninv31(I)I

    move-result v7

    add-int v4, v9, v1

    add-int/2addr v1, v4

    aget-object v2, v2, v8

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;->g:I

    move-object v3, p1

    move-object v0, p0

    move/from16 v5, p7

    move v8, v7

    move v7, v6

    move v6, v2

    move v2, v4

    move v4, v1

    move-object v1, p1

    invoke-virtual/range {v0 .. v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_mkgm2([II[IIIIII)V

    move v4, v2

    move v6, v7

    move v7, v8

    move v2, p2

    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_NTT2([II[IIIII)V

    move v2, v9

    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_NTT2([II[IIIII)V

    return-void

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v7, :cond_5

    sub-int v3, p7, v4

    const/4 v0, 0x1

    if-eqz v4, :cond_2

    const/4 v5, 0x1

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    :goto_2
    add-int/lit8 v9, v4, 0x1

    if-lt v9, v7, :cond_4

    if-eqz p9, :cond_3

    goto :goto_3

    :cond_3
    const/4 v6, 0x0

    goto :goto_4

    :cond_4
    :goto_3
    const/4 v6, 0x1

    :goto_4
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->make_fg_step([IIIIII)V

    move v4, v9

    goto :goto_1

    :cond_5
    return-void
.end method

.method make_fg_step([IIIIII)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v10, p2

    const/4 v11, 0x1

    shl-int v9, v11, p3

    shr-int/lit8 v12, v9, 0x1

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->MAX_BL_SMALL:[I

    aget v13, v2, p4

    add-int/lit8 v3, p4, 0x1

    aget v14, v2, v3

    sget-object v15, Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrimeList;->PRIMES:[Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;

    mul-int v2, v12, v14

    add-int v16, v10, v2

    add-int v2, v16, v2

    mul-int v3, v9, v13

    add-int v17, v2, v3

    add-int v4, v17, v3

    add-int v5, v4, v9

    add-int v18, v5, v9

    mul-int/lit8 v3, v9, 0x2

    mul-int v3, v3, v13

    invoke-static {v1, v10, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v19, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v13, :cond_9

    aget-object v6, v15, v3

    iget v7, v6, Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;->p:I

    invoke-virtual {v0, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_ninv31(I)I

    move-result v8

    invoke-virtual {v0, v7, v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_R2(II)I

    move-result v6

    const/16 v20, 0x1

    aget-object v11, v15, v3

    iget v11, v11, Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;->g:I

    move/from16 v21, v3

    move-object/from16 v3, p1

    move v10, v6

    move v6, v11

    move v11, v2

    move v2, v4

    move v4, v5

    move/from16 v5, p3

    invoke-virtual/range {v0 .. v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_mkgm2([II[IIIIII)V

    move v0, v8

    move v8, v4

    move v4, v2

    add-int v22, v11, v21

    move/from16 v2, v22

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v9, :cond_0

    add-int v3, v18, v1

    aget v5, p1, v2

    aput v5, p1, v3

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v2, v13

    goto :goto_1

    :cond_0
    if-nez p5, :cond_1

    move-object/from16 v3, p1

    move-object/from16 v1, p1

    move/from16 v5, p3

    move v6, v7

    move/from16 v2, v18

    move v7, v0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_NTT2([II[IIIII)V

    move/from16 v23, v2

    move v5, v8

    move v8, v7

    move v7, v6

    goto :goto_2

    :cond_1
    move v5, v8

    move/from16 v23, v18

    move v8, v0

    move-object/from16 v0, p0

    :goto_2
    move/from16 v18, v4

    add-int v24, p2, v21

    move/from16 v2, v24

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v12, :cond_2

    shl-int/lit8 v3, v1, 0x1

    add-int v3, v23, v3

    aget v4, p1, v3

    add-int/lit8 v3, v3, 0x1

    aget v3, p1, v3

    invoke-virtual {v0, v4, v3, v7, v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v3

    invoke-virtual {v0, v3, v10, v7, v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v3

    aput v3, p1, v2

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v2, v14

    goto :goto_3

    :cond_2
    if-eqz p5, :cond_3

    move-object/from16 v4, p1

    move-object/from16 v1, p1

    move/from16 v6, p3

    move v3, v13

    move/from16 v2, v22

    invoke-virtual/range {v0 .. v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_iNTT2_ext([III[IIIII)V

    move v0, v8

    move v8, v3

    goto :goto_4

    :cond_3
    move v0, v8

    move v8, v13

    :goto_4
    move v13, v5

    add-int v22, v17, v21

    move/from16 v2, v22

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v9, :cond_4

    add-int v3, v23, v1

    aget v4, p1, v2

    aput v4, p1, v3

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v2, v8

    goto :goto_5

    :cond_4
    if-nez p5, :cond_5

    move-object/from16 v3, p1

    move-object/from16 v1, p1

    move/from16 v5, p3

    move v6, v7

    move/from16 v4, v18

    move/from16 v2, v23

    move v7, v0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_NTT2([II[IIIII)V

    move v3, v8

    move v8, v7

    move v7, v6

    goto :goto_6

    :cond_5
    move v3, v8

    move v8, v0

    move-object/from16 v0, p0

    :goto_6
    add-int v25, v16, v21

    move/from16 v2, v25

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v12, :cond_6

    shl-int/lit8 v4, v1, 0x1

    add-int v4, v23, v4

    aget v5, p1, v4

    add-int/lit8 v4, v4, 0x1

    aget v4, p1, v4

    invoke-virtual {v0, v5, v4, v7, v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v4

    invoke-virtual {v0, v4, v10, v7, v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v4

    aput v4, p1, v2

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v2, v14

    goto :goto_7

    :cond_6
    if-eqz p5, :cond_7

    move-object/from16 v4, p1

    move-object/from16 v1, p1

    move/from16 v6, p3

    move v5, v13

    move/from16 v2, v22

    invoke-virtual/range {v0 .. v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_iNTT2_ext([III[IIIII)V

    goto :goto_8

    :cond_7
    move v5, v13

    :goto_8
    move v10, v3

    if-nez p6, :cond_8

    add-int/lit8 v6, p3, -0x1

    move-object/from16 v4, p1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v3, v14

    move/from16 v2, v24

    invoke-virtual/range {v0 .. v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_iNTT2_ext([III[IIIII)V

    move/from16 v2, v25

    invoke-virtual/range {v0 .. v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_iNTT2_ext([III[IIIII)V

    move v13, v3

    goto :goto_9

    :cond_8
    move v13, v14

    :goto_9
    move v14, v5

    add-int/lit8 v3, v21, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v5, v14

    move/from16 v4, v18

    move/from16 v18, v23

    const/4 v11, 0x1

    move v14, v13

    move v13, v10

    move/from16 v10, p2

    goto/16 :goto_0

    :cond_9
    move v11, v2

    move v10, v13

    move v13, v14

    move/from16 v23, v18

    const/16 v20, 0x1

    move/from16 v18, v4

    move v14, v5

    const/4 v7, 0x1

    move v4, v10

    move-object/from16 v8, p1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v5, v9

    move v3, v10

    move-object v6, v15

    move/from16 v9, v18

    invoke-virtual/range {v0 .. v9}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->zint_rebuild_CRT([IIIII[Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;I[II)V

    move v4, v9

    move v4, v3

    move/from16 v2, v17

    invoke-virtual/range {v0 .. v9}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->zint_rebuild_CRT([IIIII[Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;I[II)V

    move v4, v9

    move v9, v5

    move v1, v10

    :goto_a
    if-ge v1, v13, :cond_f

    aget-object v2, v15, v1

    iget v7, v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;->p:I

    invoke-virtual {v0, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_ninv31(I)I

    move-result v8

    invoke-virtual {v0, v7, v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_R2(II)I

    move-result v2

    invoke-virtual {v0, v10, v7, v8, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_Rx(IIII)I

    move-result v18

    aget-object v3, v15, v1

    iget v6, v3, Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;->g:I

    move-object/from16 v3, p1

    move/from16 v5, p3

    move/from16 v21, v2

    move v2, v4

    move v4, v14

    move v14, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_mkgm2([II[IIIIII)V

    move/from16 v22, v4

    move v5, v8

    move v8, v2

    move v2, v11

    const/4 v0, 0x0

    :goto_b
    if-ge v0, v9, :cond_a

    add-int v24, v23, v0

    move-object/from16 v1, p1

    move v4, v7

    move v3, v10

    move/from16 v7, v18

    move/from16 v6, v21

    move v10, v0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->zint_mod_small_signed([IIIIIII)I

    move-result v18

    move/from16 v21, v3

    move/from16 v25, v7

    move v7, v4

    aput v18, p1, v24

    add-int/lit8 v0, v10, 0x1

    add-int v2, v2, v21

    move/from16 v10, v21

    move/from16 v18, v25

    move/from16 v21, v6

    goto :goto_b

    :cond_a
    move/from16 v25, v18

    move/from16 v6, v21

    move/from16 v21, v10

    move-object/from16 v3, p1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v4, v8

    move/from16 v2, v23

    move v8, v6

    move v6, v7

    move v7, v5

    move/from16 v5, p3

    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_NTT2([II[IIIII)V

    move/from16 v18, v4

    move v5, v7

    move v7, v6

    add-int v10, p2, v14

    move v2, v10

    const/4 v1, 0x0

    :goto_c
    if-ge v1, v12, :cond_b

    shl-int/lit8 v3, v1, 0x1

    add-int v3, v23, v3

    aget v4, p1, v3

    add-int/lit8 v3, v3, 0x1

    aget v3, p1, v3

    invoke-virtual {v0, v4, v3, v7, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v3

    invoke-virtual {v0, v3, v8, v7, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v3

    aput v3, p1, v2

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v2, v13

    goto :goto_c

    :cond_b
    move/from16 v2, v17

    const/4 v1, 0x0

    :goto_d
    if-ge v1, v9, :cond_c

    add-int v24, v23, v1

    move v4, v7

    move v6, v8

    move/from16 v3, v21

    move/from16 v7, v25

    move v8, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->zint_mod_small_signed([IIIIIII)I

    move-result v21

    move/from16 v25, v3

    move v0, v7

    move v7, v4

    aput v21, p1, v24

    add-int/lit8 v1, v8, 0x1

    add-int v2, v2, v25

    move v8, v6

    move/from16 v21, v25

    move/from16 v25, v0

    move-object/from16 v0, p0

    goto :goto_d

    :cond_c
    move v6, v8

    move/from16 v25, v21

    move-object/from16 v3, p1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v6, v7

    move/from16 v4, v18

    move/from16 v2, v23

    move v7, v5

    move/from16 v5, p3

    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_NTT2([II[IIIII)V

    move v5, v7

    move v7, v6

    add-int v21, v16, v14

    move/from16 v2, v21

    const/4 v1, 0x0

    :goto_e
    if-ge v1, v12, :cond_d

    shl-int/lit8 v3, v1, 0x1

    add-int v3, v23, v3

    aget v4, p1, v3

    add-int/lit8 v3, v3, 0x1

    aget v3, p1, v3

    invoke-virtual {v0, v4, v3, v7, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v3

    invoke-virtual {v0, v3, v8, v7, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v3

    aput v3, p1, v2

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v2, v13

    goto :goto_e

    :cond_d
    if-nez p6, :cond_e

    add-int/lit8 v6, p3, -0x1

    move-object/from16 v4, p1

    move-object/from16 v1, p1

    move v8, v5

    move v2, v10

    move v3, v13

    move/from16 v5, v22

    invoke-virtual/range {v0 .. v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_iNTT2_ext([III[IIIII)V

    move-object/from16 v0, p0

    move/from16 v2, v21

    invoke-virtual/range {v0 .. v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_iNTT2_ext([III[IIIII)V

    goto :goto_f

    :cond_e
    move v3, v13

    move/from16 v5, v22

    :goto_f
    add-int/lit8 v1, v14, 0x1

    move-object/from16 v0, p0

    move v13, v3

    move v14, v5

    move/from16 v4, v18

    move/from16 v10, v25

    goto/16 :goto_a

    :cond_f
    return-void
.end method

.method mkgauss(Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;I)I
    .locals 16

    move-object/from16 v0, p0

    rsub-int/lit8 v1, p2, 0xa

    const/4 v2, 0x1

    shl-int v1, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v1, :cond_1

    invoke-virtual/range {p0 .. p1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->get_rng_u64(Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;)J

    move-result-wide v6

    const/16 v8, 0x3f

    ushr-long v9, v6, v8

    long-to-int v10, v9

    const-wide v11, 0x7fffffffffffffffL

    and-long/2addr v6, v11

    iget-object v9, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->gauss_1024_12289:[J

    aget-wide v13, v9, v3

    sub-long/2addr v6, v13

    ushr-long/2addr v6, v8

    long-to-int v7, v6

    invoke-virtual/range {p0 .. p1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->get_rng_u64(Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;)J

    move-result-wide v13

    and-long/2addr v11, v13

    const/4 v6, 0x1

    const/4 v9, 0x0

    :goto_1
    iget-object v13, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->gauss_1024_12289:[J

    array-length v14, v13

    if-ge v6, v14, :cond_0

    aget-wide v14, v13, v6

    sub-long v14, v11, v14

    ushr-long v13, v14, v8

    long-to-int v14, v13

    xor-int/lit8 v13, v14, 0x1

    xor-int/lit8 v14, v7, 0x1

    and-int/2addr v14, v13

    neg-int v14, v14

    and-int/2addr v14, v6

    or-int/2addr v9, v14

    or-int/2addr v7, v13

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    neg-int v6, v10

    xor-int/2addr v6, v9

    add-int/2addr v6, v10

    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return v5
.end method

.method modp_NTT2([II[IIIII)V
    .locals 9

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_NTT2_ext([III[IIIII)V

    return-void
.end method

.method modp_NTT2_ext([III[IIIII)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p7

    if-nez p6, :cond_0

    goto :goto_3

    :cond_0
    invoke-static/range {p6 .. p6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->mkn(I)I

    move-result v2

    const/4 v3, 0x1

    move v4, v2

    :goto_0
    if-ge v3, v2, :cond_3

    shr-int/lit8 v5, v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_1
    if-ge v7, v3, :cond_2

    add-int v9, p5, v3

    add-int/2addr v9, v7

    aget v9, p4, v9

    mul-int v10, v8, p3

    add-int v10, p2, v10

    mul-int v11, v5, p3

    add-int/2addr v11, v10

    const/4 v12, 0x0

    :goto_2
    if-ge v12, v5, :cond_1

    aget v13, p1, v10

    aget v14, p1, v11

    move/from16 v15, p8

    invoke-virtual {v0, v14, v9, v1, v15}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v14

    invoke-virtual {v0, v13, v14, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_add(III)I

    move-result v16

    aput v16, p1, v10

    invoke-virtual {v0, v13, v14, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_sub(III)I

    move-result v13

    aput v13, p1, v11

    add-int/lit8 v12, v12, 0x1

    add-int v10, v10, p3

    add-int v11, v11, p3

    goto :goto_2

    :cond_1
    move/from16 v15, p8

    add-int/lit8 v7, v7, 0x1

    add-int/2addr v8, v4

    goto :goto_1

    :cond_2
    move/from16 v15, p8

    shl-int/lit8 v3, v3, 0x1

    move v4, v5

    goto :goto_0

    :cond_3
    :goto_3
    return-void
.end method

.method modp_R(I)I
    .locals 1

    const/high16 v0, -0x80000000

    sub-int/2addr v0, p1

    return v0
.end method

.method modp_R2(II)I
    .locals 1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_R(I)I

    move-result v0

    invoke-virtual {p0, v0, v0, p1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_add(III)I

    move-result v0

    invoke-virtual {p0, v0, v0, p1, p2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v0

    invoke-virtual {p0, v0, v0, p1, p2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v0

    invoke-virtual {p0, v0, v0, p1, p2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v0

    invoke-virtual {p0, v0, v0, p1, p2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v0

    invoke-virtual {p0, v0, v0, p1, p2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result p2

    and-int/lit8 v0, p2, 0x1

    neg-int v0, v0

    and-int/2addr p1, v0

    add-int/2addr p2, p1

    ushr-int/lit8 p1, p2, 0x1

    return p1
.end method

.method modp_Rx(IIII)I
    .locals 3

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_R(I)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x1

    shl-int/2addr v2, v1

    if-gt v2, p1, :cond_1

    and-int/2addr v2, p1

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0, p4, p2, p3}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v0

    :cond_0
    invoke-virtual {p0, p4, p4, p2, p3}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result p4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method modp_add(III)I
    .locals 0

    add-int/2addr p1, p2

    sub-int/2addr p1, p3

    ushr-int/lit8 p2, p1, 0x1f

    neg-int p2, p2

    and-int/2addr p2, p3

    add-int/2addr p1, p2

    return p1
.end method

.method modp_div(IIIII)I
    .locals 5

    add-int/lit8 v0, p3, -0x2

    const/16 v1, 0x1e

    :goto_0
    const/4 v2, 0x1

    if-ltz v1, :cond_0

    invoke-virtual {p0, p5, p5, p3, p4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result p5

    invoke-virtual {p0, p5, p2, p3, p4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v3

    xor-int/2addr v3, p5

    ushr-int v4, v0, v1

    and-int/2addr v2, v4

    neg-int v2, v2

    and-int/2addr v2, v3

    xor-int/2addr p5, v2

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p5, v2, p3, p4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result p2

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result p1

    return p1
.end method

.method modp_iNTT2([II[IIIII)V
    .locals 9

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_iNTT2_ext([III[IIIII)V

    return-void
.end method

.method modp_iNTT2_ext([III[IIIII)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p7

    move/from16 v2, p8

    if-nez p6, :cond_0

    goto :goto_4

    :cond_0
    invoke-static/range {p6 .. p6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->mkn(I)I

    move-result v3

    const/4 v4, 0x1

    move v5, v3

    const/4 v6, 0x1

    :goto_0
    const/4 v7, 0x0

    if-le v5, v4, :cond_3

    shr-int/lit8 v5, v5, 0x1

    shl-int/lit8 v8, v6, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_1
    if-ge v9, v5, :cond_2

    add-int v11, p5, v5

    add-int/2addr v11, v9

    aget v11, p4, v11

    mul-int v12, v10, p3

    add-int v12, p2, v12

    mul-int v13, v6, p3

    add-int/2addr v13, v12

    const/4 v14, 0x0

    :goto_2
    if-ge v14, v6, :cond_1

    aget v15, p1, v12

    const/16 v16, 0x1

    aget v4, p1, v13

    invoke-virtual {v0, v15, v4, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_add(III)I

    move-result v17

    aput v17, p1, v12

    invoke-virtual {v0, v15, v4, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_sub(III)I

    move-result v4

    invoke-virtual {v0, v4, v11, v1, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v4

    aput v4, p1, v13

    add-int/lit8 v14, v14, 0x1

    add-int v12, v12, p3

    add-int v13, v13, p3

    const/4 v4, 0x1

    goto :goto_2

    :cond_1
    const/16 v16, 0x1

    add-int/lit8 v9, v9, 0x1

    add-int/2addr v10, v8

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    move v6, v8

    goto :goto_0

    :cond_3
    const/16 v16, 0x1

    rsub-int/lit8 v4, p6, 0x1f

    shl-int v4, v16, v4

    move/from16 v5, p2

    :goto_3
    if-ge v7, v3, :cond_4

    aget v6, p1, v5

    invoke-virtual {v0, v6, v4, v1, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v6

    aput v6, p1, v5

    add-int/lit8 v7, v7, 0x1

    add-int v5, v5, p3

    goto :goto_3

    :cond_4
    :goto_4
    return-void
.end method

.method modp_mkgm2([II[IIIIII)V
    .locals 12

    move/from16 v3, p7

    move/from16 v4, p8

    invoke-static/range {p5 .. p5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->mkn(I)I

    move-result v6

    invoke-virtual {p0, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_R2(II)I

    move-result v1

    move/from16 v0, p6

    invoke-virtual {p0, v0, v1, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v0

    move v2, v0

    move/from16 v0, p5

    :goto_0
    const/16 v7, 0xa

    if-ge v0, v7, :cond_0

    invoke-virtual {p0, v2, v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_R(I)I

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_div(IIIII)I

    move-result v1

    rsub-int/lit8 v7, p5, 0xa

    invoke-virtual {p0, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_R(I)I

    move-result v5

    const/4 v8, 0x0

    move v8, v5

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v6, :cond_1

    iget-object v10, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->REV10:[S

    shl-int v11, v9, v7

    aget-short v10, v10, v11

    add-int v11, p2, v10

    aput v5, p1, v11

    add-int v10, p4, v10

    aput v8, p3, v10

    invoke-virtual {p0, v5, v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v5

    invoke-virtual {p0, v8, v1, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v8

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method modp_montymul(IIII)I
    .locals 4

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->toUnsignedLong(I)J

    move-result-wide v0

    invoke-direct {p0, p2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->toUnsignedLong(I)J

    move-result-wide p1

    mul-long v0, v0, p1

    int-to-long p1, p4

    mul-long p1, p1, v0

    const p4, 0x7fffffff

    invoke-direct {p0, p4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->toUnsignedLong(I)J

    move-result-wide v2

    and-long/2addr p1, v2

    int-to-long v2, p3

    mul-long p1, p1, v2

    add-long/2addr v0, p1

    const/16 p1, 0x1f

    ushr-long p1, v0, p1

    long-to-int p2, p1

    sub-int/2addr p2, p3

    ushr-int/lit8 p1, p2, 0x1f

    neg-int p1, p1

    and-int/2addr p1, p3

    add-int/2addr p2, p1

    return p2
.end method

.method modp_ninv31(I)I
    .locals 2

    rsub-int/lit8 v0, p1, 0x2

    mul-int v1, p1, v0

    rsub-int/lit8 v1, v1, 0x2

    mul-int v0, v0, v1

    mul-int v1, p1, v0

    rsub-int/lit8 v1, v1, 0x2

    mul-int v0, v0, v1

    mul-int v1, p1, v0

    rsub-int/lit8 v1, v1, 0x2

    mul-int v0, v0, v1

    mul-int p1, p1, v0

    rsub-int/lit8 p1, p1, 0x2

    mul-int v0, v0, p1

    const p1, 0x7fffffff

    neg-int v0, v0

    and-int/2addr p1, v0

    return p1
.end method

.method modp_norm(II)I
    .locals 1

    add-int/lit8 v0, p2, 0x1

    ushr-int/lit8 v0, v0, 0x1

    sub-int v0, p1, v0

    ushr-int/lit8 v0, v0, 0x1f

    add-int/lit8 v0, v0, -0x1

    and-int/2addr p2, v0

    sub-int/2addr p1, p2

    return p1
.end method

.method modp_poly_rec_res([IIIIII)V
    .locals 5

    const/4 v0, 0x1

    sub-int/2addr p3, v0

    shl-int p3, v0, p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_0

    shl-int/lit8 v2, v1, 0x1

    add-int/2addr v2, p2

    aget v3, p1, v2

    add-int/2addr v2, v0

    aget v2, p1, v2

    add-int v4, p2, v1

    invoke-virtual {p0, v3, v2, p4, p5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v2

    invoke-virtual {p0, v2, p6, p4, p5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v2

    aput v2, p1, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method modp_set(II)I
    .locals 1

    ushr-int/lit8 v0, p1, 0x1f

    neg-int v0, v0

    and-int/2addr p2, v0

    add-int/2addr p1, p2

    return p1
.end method

.method modp_sub(III)I
    .locals 0

    sub-int/2addr p1, p2

    ushr-int/lit8 p2, p1, 0x1f

    neg-int p2, p2

    and-int/2addr p2, p3

    add-int/2addr p1, p2

    return p1
.end method

.method poly_big_to_fp([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[IIIII)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-static/range {p7 .. p7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->mkn(I)I

    move-result v2

    const/4 v3, 0x0

    if-nez v1, :cond_0

    :goto_0
    if-ge v3, v2, :cond_2

    add-int v1, p2, v3

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_zero:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    aput-object v4, p1, v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move/from16 v4, p4

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v2, :cond_2

    add-int v6, v4, v1

    add-int/lit8 v6, v6, -0x1

    aget v6, p3, v6

    ushr-int/lit8 v6, v6, 0x1e

    neg-int v6, v6

    ushr-int/lit8 v7, v6, 0x1

    and-int/lit8 v8, v6, 0x1

    iget-object v9, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v9, v9, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_zero:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    iget-object v10, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v10, v10, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_one:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v1, :cond_1

    add-int v12, v4, v11

    aget v12, p3, v12

    xor-int/2addr v12, v7

    add-int/2addr v12, v8

    ushr-int/lit8 v8, v12, 0x1f

    const v13, 0x7fffffff

    and-int/2addr v12, v13

    shl-int/lit8 v13, v12, 0x1

    and-int/2addr v13, v6

    sub-int/2addr v12, v13

    iget-object v13, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    int-to-long v14, v12

    invoke-virtual {v13, v14, v15}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_of(J)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v12

    invoke-virtual {v13, v12, v10}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v12

    invoke-virtual {v13, v9, v12}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v9

    add-int/lit8 v11, v11, 0x1

    iget-object v12, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v13, v12, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_ptwo31:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    invoke-virtual {v12, v10, v13}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v10

    goto :goto_2

    :cond_1
    add-int v6, p2, v5

    aput-object v9, p1, v6

    add-int/lit8 v5, v5, 0x1

    add-int v4, v4, p6

    goto :goto_1

    :cond_2
    return-void
.end method

.method poly_big_to_small([BI[IIII)I
    .locals 4

    invoke-static {p6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->mkn(I)I

    move-result p6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p6, :cond_2

    add-int v2, p4, v1

    invoke-virtual {p0, p3, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->zint_one_to_plain([II)I

    move-result v2

    neg-int v3, p5

    if-lt v2, v3, :cond_1

    if-le v2, p5, :cond_0

    goto :goto_1

    :cond_0
    add-int v3, p2, v1

    int-to-byte v2, v2

    aput-byte v2, p1, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method poly_small_mkgauss(Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;[BII)V
    .locals 5

    invoke-static {p4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->mkn(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    :cond_0
    :goto_1
    invoke-virtual {p0, p1, p4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->mkgauss(Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;I)I

    move-result v3

    const/16 v4, -0x7f

    if-lt v3, v4, :cond_0

    const/16 v4, 0x7f

    if-le v3, v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v0, -0x1

    if-ne v1, v4, :cond_2

    and-int/lit8 v4, v3, 0x1

    xor-int/2addr v4, v2

    if-nez v4, :cond_3

    goto :goto_1

    :cond_2
    and-int/lit8 v4, v3, 0x1

    xor-int/2addr v2, v4

    :cond_3
    add-int v4, p3, v1

    int-to-byte v3, v3

    aput-byte v3, p2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method poly_small_sqnorm([BII)I
    .locals 4

    invoke-static {p3}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->mkn(I)I

    move-result p3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    add-int v3, p2, v0

    aget-byte v3, p1, v3

    mul-int v3, v3, v3

    add-int/2addr v1, v3

    or-int/2addr v2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    ushr-int/lit8 p1, v2, 0x1f

    neg-int p1, p1

    or-int/2addr p1, v1

    return p1
.end method

.method poly_small_to_fp([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[BII)V
    .locals 5

    invoke-static {p5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->mkn(I)I

    move-result p5

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p5, :cond_0

    add-int v1, p2, v0

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    add-int v3, p4, v0

    aget-byte v3, p3, v3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_of(J)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v2

    aput-object v2, p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method poly_sub_scaled([IIII[IIII[IIIII)V
    .locals 15

    invoke-static/range {p13 .. p13}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->mkn(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    add-int v3, p10, v2

    aget v3, p9, v3

    neg-int v3, v3

    mul-int v4, v2, p4

    add-int v4, p2, v4

    move/from16 v10, p6

    move v12, v3

    move v7, v4

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_1

    move-object v5, p0

    move-object/from16 v6, p1

    move/from16 v8, p3

    move-object/from16 v9, p5

    move/from16 v11, p7

    move/from16 v13, p11

    move/from16 v14, p12

    invoke-virtual/range {v5 .. v14}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->zint_add_scaled_mul_small([III[IIIIII)V

    add-int v4, v2, v3

    add-int/lit8 v5, v0, -0x1

    if-ne v4, v5, :cond_0

    neg-int v4, v12

    move/from16 v7, p2

    move v12, v4

    goto :goto_2

    :cond_0
    add-int v7, v7, p4

    :goto_2
    add-int v10, v10, p8

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method poly_sub_scaled_ntt([IIII[IIII[IIIII[II)V
    .locals 21

    move-object/from16 v0, p0

    move/from16 v9, p7

    invoke-static/range {p13 .. p13}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->mkn(I)I

    move-result v10

    add-int/lit8 v11, v9, 0x1

    invoke-static/range {p13 .. p13}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->mkn(I)I

    move-result v1

    add-int v4, p15, v1

    invoke-static/range {p13 .. p13}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->mkn(I)I

    move-result v1

    add-int v12, v4, v1

    mul-int v1, v10, v11

    add-int v13, v12, v1

    sget-object v14, Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrimeList;->PRIMES:[Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;

    const/4 v15, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v11, :cond_3

    aget-object v2, v14, v1

    iget v7, v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;->p:I

    invoke-virtual {v0, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_ninv31(I)I

    move-result v8

    invoke-virtual {v0, v7, v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_R2(II)I

    move-result v2

    invoke-virtual {v0, v9, v7, v8, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_Rx(IIII)I

    move-result v16

    aget-object v3, v14, v1

    iget v6, v3, Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;->g:I

    move-object/from16 v3, p14

    move/from16 v5, p13

    move/from16 v17, v1

    move/from16 v18, v2

    move-object/from16 v1, p14

    move/from16 v2, p15

    invoke-virtual/range {v0 .. v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_mkgm2([II[IIIIII)V

    move/from16 v19, v4

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v10, :cond_0

    add-int v2, v13, v1

    add-int v3, p10, v1

    aget v3, p9, v3

    invoke-virtual {v0, v3, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_set(II)I

    move-result v3

    aput v3, p14, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    move-object/from16 v3, p14

    move/from16 v5, p13

    move-object/from16 v1, p14

    move/from16 v4, p15

    move v6, v7

    move v7, v8

    move v2, v13

    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_NTT2([II[IIIII)V

    move v9, v2

    move v7, v6

    add-int v13, v12, v17

    move/from16 v2, p6

    move/from16 v20, v13

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v10, :cond_1

    move-object/from16 v1, p5

    move/from16 v3, p7

    move v4, v7

    move v5, v8

    move/from16 v7, v16

    move/from16 v6, v18

    move v8, v0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->zint_mod_small_signed([IIIIIII)I

    move-result v16

    move v0, v7

    move v7, v4

    aput v16, p14, v20

    add-int/lit8 v1, v8, 0x1

    add-int v2, v2, p8

    add-int v20, v20, v11

    move/from16 v16, v0

    move v0, v1

    move v8, v5

    goto :goto_2

    :cond_1
    move v5, v8

    move-object/from16 v4, p14

    move-object/from16 v0, p0

    move/from16 v6, p13

    move-object/from16 v1, p14

    move v3, v11

    move v2, v13

    move/from16 v11, v18

    move/from16 v5, p15

    invoke-virtual/range {v0 .. v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_NTT2_ext([III[IIIII)V

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v10, :cond_2

    add-int v4, v9, v1

    aget v4, p14, v4

    aget v5, p14, v13

    invoke-virtual {v0, v4, v5, v7, v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v4

    invoke-virtual {v0, v4, v11, v7, v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v4

    aput v4, p14, v13

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v13, v3

    goto :goto_3

    :cond_2
    move-object/from16 v4, p14

    move/from16 v6, p13

    move-object/from16 v1, p14

    move/from16 v5, v19

    invoke-virtual/range {v0 .. v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_iNTT2_ext([III[IIIII)V

    add-int/lit8 v1, v17, 0x1

    move-object/from16 v0, p0

    move v11, v3

    move v13, v9

    move/from16 v4, v19

    move/from16 v9, p7

    goto/16 :goto_0

    :cond_3
    move v3, v11

    move v9, v13

    const/4 v7, 0x1

    move v4, v3

    move-object/from16 v8, p14

    move-object/from16 v0, p0

    move-object/from16 v1, p14

    move v5, v10

    move v2, v12

    move-object v6, v14

    invoke-virtual/range {v0 .. v9}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->zint_rebuild_CRT([IIIII[Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;I[II)V

    move v9, v5

    move v5, v2

    move/from16 v2, p2

    :goto_4
    if-ge v15, v9, :cond_4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v7, p11

    move/from16 v8, p12

    move-object/from16 v4, p14

    move v6, v3

    move/from16 v3, p3

    invoke-virtual/range {v0 .. v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->zint_sub_scaled([III[IIIII)V

    move v3, v6

    add-int/lit8 v15, v15, 0x1

    add-int v2, v2, p4

    add-int/2addr v5, v3

    goto :goto_4

    :cond_4
    return-void
.end method

.method solve_NTRU(I[BI[BI[BI[BII[II)I
    .locals 16

    invoke-static/range {p1 .. p1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->mkn(I)I

    move-result v9

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p6

    move/from16 v3, p7

    move-object/from16 v4, p8

    move/from16 v5, p9

    move-object/from16 v6, p11

    move/from16 v7, p12

    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->solve_NTRU_deepest(I[BI[BI[II)I

    move-result v8

    const/4 v10, 0x0

    if-nez v8, :cond_0

    return v10

    :cond_0
    const/4 v11, 0x2

    move/from16 v1, p1

    if-gt v1, v11, :cond_2

    move v0, v1

    :goto_0
    add-int/lit8 v6, v0, -0x1

    if-lez v0, :cond_6

    move-object/from16 v0, p0

    move-object/from16 v2, p6

    move/from16 v3, p7

    move-object/from16 v4, p8

    move/from16 v5, p9

    move-object/from16 v7, p11

    move/from16 v8, p12

    invoke-virtual/range {v0 .. v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->solve_NTRU_intermediate(I[BI[BII[II)I

    move-result v11

    if-nez v11, :cond_1

    return v10

    :cond_1
    move/from16 v1, p1

    move v0, v6

    goto :goto_0

    :cond_2
    move/from16 v0, p1

    :goto_1
    add-int/lit8 v6, v0, -0x1

    if-le v0, v11, :cond_4

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p6

    move/from16 v3, p7

    move-object/from16 v4, p8

    move/from16 v5, p9

    move-object/from16 v7, p11

    move/from16 v8, p12

    invoke-virtual/range {v0 .. v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->solve_NTRU_intermediate(I[BI[BII[II)I

    move-result v12

    if-nez v12, :cond_3

    return v10

    :cond_3
    move v0, v6

    goto :goto_1

    :cond_4
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p6

    move/from16 v3, p7

    move-object/from16 v4, p8

    move/from16 v5, p9

    move-object/from16 v6, p11

    move/from16 v7, p12

    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->solve_NTRU_binary_depth1(I[BI[BI[II)I

    move-result v8

    if-nez v8, :cond_5

    return v10

    :cond_5
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p6

    move/from16 v3, p7

    move-object/from16 v4, p8

    move/from16 v5, p9

    move-object/from16 v6, p11

    move/from16 v7, p12

    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->solve_NTRU_binary_depth0(I[BI[BI[II)I

    move-result v8

    if-nez v8, :cond_6

    return v10

    :cond_6
    if-nez p4, :cond_7

    new-array v0, v9, [B

    move-object v7, v0

    const/4 v8, 0x0

    move/from16 v6, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v5, p10

    move-object/from16 v3, p11

    move/from16 v4, p12

    move-object/from16 v0, p0

    goto :goto_2

    :cond_7
    move-object/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v0, p0

    move/from16 v6, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v5, p10

    move-object/from16 v3, p11

    move/from16 v4, p12

    :goto_2
    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->poly_big_to_small([BI[IIII)I

    move-result v11

    if-eqz v11, :cond_d

    add-int v4, p12, v9

    move-object/from16 v0, p0

    move/from16 v6, p1

    move/from16 v5, p10

    move-object/from16 v3, p11

    move-object v1, v7

    move v2, v8

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->poly_big_to_small([BI[IIII)I

    move-result v5

    move-object v11, v1

    move v12, v2

    move v13, v4

    if-nez v5, :cond_8

    move-object v1, v0

    goto/16 :goto_6

    :cond_8
    add-int v14, v13, v9

    add-int v15, v14, v9

    add-int v2, v15, v9

    sget-object v1, Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrimeList;->PRIMES:[Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;

    aget-object v3, v1, v10

    iget v7, v3, Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;->p:I

    invoke-virtual {v0, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_ninv31(I)I

    move-result v8

    aget-object v1, v1, v10

    iget v6, v1, Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;->g:I

    move-object/from16 v3, p11

    move/from16 v5, p1

    move-object/from16 v1, p11

    move/from16 v4, p12

    invoke-virtual/range {v0 .. v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_mkgm2([II[IIIIII)V

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v9, :cond_9

    add-int v3, p12, v1

    add-int v4, v12, v1

    aget-byte v4, v11, v4

    invoke-virtual {v0, v4, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_set(II)I

    move-result v4

    aput v4, p11, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_9
    const/4 v1, 0x0

    :goto_4
    if-ge v1, v9, :cond_a

    add-int v4, v13, v1

    add-int v3, p7, v1

    aget-byte v3, p6, v3

    invoke-virtual {v0, v3, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_set(II)I

    move-result v3

    aput v3, p11, v4

    add-int v3, v14, v1

    add-int v4, p9, v1

    aget-byte v4, p8, v4

    invoke-virtual {v0, v4, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_set(II)I

    move-result v4

    aput v4, p11, v3

    add-int v3, v15, v1

    add-int v4, p3, v1

    aget-byte v4, p2, v4

    invoke-virtual {v0, v4, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_set(II)I

    move-result v4

    aput v4, p11, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_a
    move-object/from16 v1, p11

    move/from16 p7, p1

    move-object/from16 p3, p11

    move-object/from16 p2, v0

    move-object/from16 p5, v1

    move/from16 p6, v2

    move/from16 p8, v7

    move/from16 p9, v8

    move/from16 p4, v13

    invoke-virtual/range {p2 .. p9}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_NTT2([II[IIIII)V

    move/from16 v4, p4

    move-object/from16 v0, p11

    move-object/from16 p2, p0

    move-object/from16 p5, v0

    move/from16 p4, v14

    invoke-virtual/range {p2 .. p9}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_NTT2([II[IIIII)V

    move/from16 v0, p4

    move-object/from16 p5, v1

    move/from16 p4, v15

    invoke-virtual/range {p2 .. p9}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_NTT2([II[IIIII)V

    move/from16 v14, p4

    move/from16 p4, p12

    invoke-virtual/range {p2 .. p9}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_NTT2([II[IIIII)V

    move-object/from16 v1, p2

    const/16 v2, 0x3001

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, v7, v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v2

    const/4 v5, 0x0

    :goto_5
    if-ge v5, v9, :cond_c

    add-int v6, v4, v5

    aget v6, p11, v6

    add-int v11, p12, v5

    aget v11, p11, v11

    invoke-virtual {v1, v6, v11, v7, v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v6

    add-int v11, v0, v5

    aget v11, p11, v11

    add-int v15, v14, v5

    aget v12, p11, v15

    invoke-virtual {v1, v11, v12, v7, v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v11

    invoke-virtual {v1, v6, v11, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_sub(III)I

    move-result v6

    if-eq v6, v2, :cond_b

    return v10

    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_c
    return v3

    :cond_d
    move-object/from16 v1, p0

    :goto_6
    return v10
.end method

.method solve_NTRU_binary_depth0(I[BI[BI[II)I
    .locals 25

    move-object/from16 v0, p0

    const/4 v9, 0x1

    shl-int v10, v9, p1

    shr-int/lit8 v11, v10, 0x1

    sget-object v1, Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrimeList;->PRIMES:[Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;

    const/4 v12, 0x0

    aget-object v1, v1, v12

    iget v6, v1, Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;->p:I

    invoke-virtual {v0, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_ninv31(I)I

    move-result v7

    invoke-virtual {v0, v6, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_R2(II)I

    move-result v13

    add-int v14, p7, v11

    add-int v15, v14, v11

    add-int v16, v15, v10

    add-int v4, v16, v10

    move v2, v4

    add-int v4, v2, v10

    sget-object v1, Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrimeList;->PRIMES:[Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;

    aget-object v1, v1, v12

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;->g:I

    move-object/from16 v3, p6

    move/from16 v5, p1

    move v8, v7

    move v7, v6

    move v6, v1

    move-object/from16 v1, p6

    invoke-virtual/range {v0 .. v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_mkgm2([II[IIIIII)V

    move v6, v7

    move v7, v8

    move v8, v4

    move v4, v2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v11, :cond_0

    add-int v3, p7, v2

    invoke-virtual {v0, v1, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->zint_one_to_plain([II)I

    move-result v5

    invoke-virtual {v0, v5, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_set(II)I

    move-result v5

    aput v5, v1, v3

    add-int v3, v14, v2

    invoke-virtual {v0, v1, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->zint_one_to_plain([II)I

    move-result v5

    invoke-virtual {v0, v5, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_set(II)I

    move-result v5

    aput v5, v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v5, p1, -0x1

    move-object/from16 v3, p6

    move/from16 v2, p7

    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_NTT2([II[IIIII)V

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move v2, v14

    move/from16 v14, p7

    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_NTT2([II[IIIII)V

    move/from16 v17, v2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v10, :cond_1

    add-int v2, v15, v1

    add-int v3, p3, v1

    aget-byte v3, p2, v3

    invoke-virtual {v0, v3, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_set(II)I

    move-result v3

    aput v3, p6, v2

    add-int v2, v16, v1

    add-int v3, p5, v1

    aget-byte v3, p4, v3

    invoke-virtual {v0, v3, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_set(II)I

    move-result v3

    aput v3, p6, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move-object/from16 v3, p6

    move/from16 v5, p1

    move-object/from16 v1, p6

    move v2, v15

    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_NTT2([II[IIIII)V

    move-object/from16 v0, p0

    move/from16 v2, v16

    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_NTT2([II[IIIII)V

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v10, :cond_2

    add-int v2, v15, v1

    aget v3, p6, v2

    add-int/lit8 v4, v2, 0x1

    aget v5, p6, v4

    add-int v18, v16, v1

    const/16 v19, 0x1

    aget v9, p6, v18

    add-int/lit8 v20, v18, 0x1

    const/16 v21, 0x0

    aget v12, p6, v20

    shr-int/lit8 v22, v1, 0x1

    add-int v23, v14, v22

    move/from16 v24, v1

    aget v1, p6, v23

    invoke-virtual {v0, v1, v13, v6, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v1

    add-int v22, v17, v22

    move/from16 v23, v2

    aget v2, p6, v22

    invoke-virtual {v0, v2, v13, v6, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v2

    invoke-virtual {v0, v12, v1, v6, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v12

    aput v12, p6, v23

    invoke-virtual {v0, v9, v1, v6, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v1

    aput v1, p6, v4

    invoke-virtual {v0, v5, v2, v6, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v1

    aput v1, p6, v18

    invoke-virtual {v0, v3, v2, v6, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v1

    aput v1, p6, v20

    add-int/lit8 v1, v24, 0x2

    const/4 v9, 0x1

    const/4 v12, 0x0

    goto :goto_2

    :cond_2
    const/16 v19, 0x1

    const/16 v21, 0x0

    move-object/from16 v3, p6

    move/from16 v5, p1

    move-object/from16 v1, p6

    move v4, v8

    move v2, v15

    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_iNTT2([II[IIIII)V

    move-object/from16 v0, p0

    move/from16 v2, v16

    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_iNTT2([II[IIIII)V

    add-int v9, v14, v10

    add-int v4, v9, v10

    mul-int/lit8 v0, v10, 0x2

    invoke-static {v1, v15, v1, v14, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v2, v4, v10

    add-int v12, v2, v10

    add-int v15, v12, v10

    add-int v16, v15, v10

    sget-object v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrimeList;->PRIMES:[Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;

    aget-object v0, v0, v21

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;->g:I

    move v5, v4

    move v4, v2

    move v2, v5

    move/from16 v5, p1

    move v8, v7

    move v7, v6

    move v6, v0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_mkgm2([II[IIIIII)V

    move/from16 v17, v4

    move v6, v7

    move v7, v8

    move v4, v2

    move v2, v14

    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_NTT2([II[IIIII)V

    move v2, v9

    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_NTT2([II[IIIII)V

    aget-byte v1, p2, p3

    invoke-virtual {v0, v1, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_set(II)I

    move-result v1

    aput v1, p6, v16

    aput v1, p6, v15

    const/4 v1, 0x1

    :goto_3
    if-ge v1, v10, :cond_3

    add-int v2, v15, v1

    add-int v3, p3, v1

    aget-byte v5, p2, v3

    invoke-virtual {v0, v5, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_set(II)I

    move-result v5

    aput v5, p6, v2

    add-int v2, v16, v10

    sub-int/2addr v2, v1

    aget-byte v3, p2, v3

    neg-int v3, v3

    invoke-virtual {v0, v3, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_set(II)I

    move-result v3

    aput v3, p6, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    move-object/from16 v3, p6

    move/from16 v5, p1

    move-object/from16 v1, p6

    move v2, v15

    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_NTT2([II[IIIII)V

    move v8, v2

    move-object/from16 v0, p0

    move/from16 v2, v16

    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_NTT2([II[IIIII)V

    move v15, v2

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v10, :cond_4

    add-int v16, v15, v1

    aget v2, p6, v16

    invoke-virtual {v0, v2, v13, v6, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v2

    add-int v3, v17, v1

    add-int v5, p7, v1

    aget v5, p6, v5

    invoke-virtual {v0, v2, v5, v6, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v5

    aput v5, p6, v3

    add-int v3, v12, v1

    add-int v5, v8, v1

    aget v5, p6, v5

    invoke-virtual {v0, v2, v5, v6, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v2

    aput v2, p6, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_4
    aget-byte v1, p4, p5

    invoke-virtual {v0, v1, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_set(II)I

    move-result v1

    aput v1, p6, v15

    aput v1, p6, v8

    const/4 v1, 0x1

    :goto_5
    if-ge v1, v10, :cond_5

    add-int v2, v8, v1

    add-int v3, p5, v1

    aget-byte v5, p4, v3

    invoke-virtual {v0, v5, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_set(II)I

    move-result v5

    aput v5, p6, v2

    add-int v16, v15, v10

    sub-int v16, v16, v1

    aget-byte v2, p4, v3

    neg-int v2, v2

    invoke-virtual {v0, v2, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_set(II)I

    move-result v2

    aput v2, p6, v16

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_5
    move-object/from16 v3, p6

    move/from16 v5, p1

    move-object/from16 v1, p6

    move v2, v8

    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_NTT2([II[IIIII)V

    move-object/from16 v0, p0

    move v2, v15

    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_NTT2([II[IIIII)V

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v10, :cond_6

    add-int v16, v15, v1

    aget v2, p6, v16

    invoke-virtual {v0, v2, v13, v6, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v2

    add-int v3, v17, v1

    aget v5, p6, v3

    add-int v14, v9, v1

    aget v14, p6, v14

    invoke-virtual {v0, v2, v14, v6, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v14

    invoke-virtual {v0, v5, v14, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_add(III)I

    move-result v5

    aput v5, p6, v3

    add-int v3, v12, v1

    aget v5, p6, v3

    add-int v14, v8, v1

    aget v14, p6, v14

    invoke-virtual {v0, v2, v14, v6, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v2

    invoke-virtual {v0, v5, v2, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_add(III)I

    move-result v2

    aput v2, p6, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_6
    sget-object v1, Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrimeList;->PRIMES:[Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;

    aget-object v1, v1, v21

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;->g:I

    move-object/from16 v3, p6

    move/from16 v5, p1

    move v2, v4

    move v4, v8

    move v8, v7

    move v7, v6

    move v6, v1

    move-object/from16 v1, p6

    invoke-virtual/range {v0 .. v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_mkgm2([II[IIIIII)V

    move v14, v2

    move v2, v4

    move v6, v7

    move v7, v8

    move-object/from16 v0, p0

    move/from16 v2, v17

    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_iNTT2([II[IIIII)V

    move v2, v4

    move v2, v12

    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_iNTT2([II[IIIII)V

    move/from16 v16, v4

    move v7, v6

    move-object v6, v0

    const/4 v0, 0x0

    :goto_7
    if-ge v0, v10, :cond_7

    add-int v4, v14, v0

    add-int v2, v17, v0

    aget v1, p6, v2

    invoke-virtual {v6, v1, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_norm(II)I

    move-result v1

    aput v1, p6, v4

    add-int v1, v12, v0

    aget v1, p6, v1

    invoke-virtual {v6, v1, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_norm(II)I

    move-result v1

    aput v1, p6, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_7
    mul-int/lit8 v0, v10, 0x3

    new-array v1, v0, [Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    add-int v0, v10, v10

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v10, :cond_8

    add-int v3, v0, v2

    iget-object v4, v6, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    add-int v18, v17, v2

    move/from16 v20, v2

    aget v2, p6, v18

    move/from16 v18, v3

    int-to-long v2, v2

    invoke-virtual {v4, v2, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_of(J)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v2

    aput-object v2, v1, v18

    add-int/lit8 v2, v20, 0x1

    goto :goto_8

    :cond_8
    iget-object v2, v6, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    invoke-virtual {v2, v1, v0, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FFT([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    invoke-static {v1, v0, v1, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v2, v10, v11

    const/4 v0, 0x0

    :goto_9
    if-ge v0, v10, :cond_9

    add-int v3, v2, v0

    iget-object v4, v6, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    add-int v11, v14, v0

    aget v11, p6, v11

    move/from16 v20, v8

    move/from16 v18, v9

    int-to-long v8, v11

    invoke-virtual {v4, v8, v9}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_of(J)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v4

    aput-object v4, v1, v3

    add-int/lit8 v0, v0, 0x1

    move/from16 v9, v18

    move/from16 v8, v20

    goto :goto_9

    :cond_9
    move/from16 v20, v8

    move/from16 v18, v9

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    invoke-virtual {v0, v1, v2, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FFT([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object v3, v1

    move v4, v10

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_div_autoadj_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move v9, v4

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    invoke-virtual {v0, v1, v2, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->iFFT([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    const/4 v0, 0x0

    :goto_a
    if-ge v0, v9, :cond_a

    add-int v4, v14, v0

    iget-object v3, v6, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    add-int v8, v2, v0

    aget-object v8, v1, v8

    invoke-virtual {v3, v8}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_rint(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)J

    move-result-wide v10

    long-to-int v3, v10

    invoke-virtual {v6, v3, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_set(II)I

    move-result v3

    aput v3, p6, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_a
    sget-object v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrimeList;->PRIMES:[Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;

    aget-object v0, v0, v21

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;->g:I

    move-object/from16 v3, p6

    move-object v1, v6

    move v6, v0

    move-object v0, v1

    move-object/from16 v1, p6

    move v4, v12

    move/from16 v2, v17

    move/from16 v8, v20

    invoke-virtual/range {v0 .. v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_mkgm2([II[IIIIII)V

    move v6, v7

    move v7, v8

    move v4, v2

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v9, :cond_b

    add-int v2, v16, v1

    add-int v3, p3, v1

    aget-byte v3, p2, v3

    invoke-virtual {v0, v3, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_set(II)I

    move-result v3

    aput v3, p6, v2

    add-int v2, v15, v1

    add-int v3, p5, v1

    aget-byte v3, p4, v3

    invoke-virtual {v0, v3, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_set(II)I

    move-result v3

    aput v3, p6, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_b
    move-object/from16 v3, p6

    move/from16 v5, p1

    move-object/from16 v1, p6

    move v2, v14

    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_NTT2([II[IIIII)V

    move-object/from16 v0, p0

    move/from16 v2, v16

    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_NTT2([II[IIIII)V

    move v8, v2

    move v2, v15

    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_NTT2([II[IIIII)V

    const/4 v1, 0x0

    :goto_c
    if-ge v1, v9, :cond_c

    add-int v4, v14, v1

    aget v3, p6, v4

    invoke-virtual {v0, v3, v13, v6, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v3

    add-int v4, p7, v1

    aget v5, p6, v4

    add-int v15, v8, v1

    aget v10, p6, v15

    invoke-virtual {v0, v3, v10, v6, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v10

    invoke-virtual {v0, v5, v10, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_sub(III)I

    move-result v5

    aput v5, p6, v4

    add-int v4, v18, v1

    aget v5, p6, v4

    add-int v16, v2, v1

    aget v10, p6, v16

    invoke-virtual {v0, v3, v10, v6, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v3

    invoke-virtual {v0, v5, v3, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_sub(III)I

    move-result v3

    aput v3, p6, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_c
    move-object/from16 v3, p6

    move/from16 v5, p1

    move-object/from16 v1, p6

    move/from16 v2, p7

    move v4, v12

    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_iNTT2([II[IIIII)V

    move-object/from16 v0, p0

    move/from16 v2, v18

    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_iNTT2([II[IIIII)V

    const/4 v12, 0x0

    :goto_d
    if-ge v12, v9, :cond_d

    add-int v1, p7, v12

    aget v3, p6, v1

    invoke-virtual {v0, v3, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_norm(II)I

    move-result v3

    aput v3, p6, v1

    add-int v1, v2, v12

    aget v3, p6, v1

    invoke-virtual {v0, v3, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_norm(II)I

    move-result v3

    aput v3, p6, v1

    add-int/lit8 v12, v12, 0x1

    goto :goto_d

    :cond_d
    return v19
.end method

.method solve_NTRU_binary_depth1(I[BI[BI[II)I
    .locals 34

    move-object/from16 v0, p0

    move/from16 v9, p7

    const/4 v10, 0x1

    shl-int v11, v10, p1

    add-int/lit8 v12, p1, -0x1

    shl-int v13, v10, v12

    shr-int/lit8 v14, v13, 0x1

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->MAX_BL_SMALL:[I

    aget v15, v1, v10

    const/4 v2, 0x2

    aget v3, v1, v2

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->MAX_BL_LARGE:[I

    aget v8, v1, v10

    mul-int v1, v3, v14

    add-int v16, v9, v1

    add-int v1, v16, v1

    mul-int v2, v8, v13

    add-int v4, v1, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v8, :cond_1

    sget-object v7, Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrimeList;->PRIMES:[Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;

    aget-object v7, v7, v6

    iget v7, v7, Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;->p:I

    const/16 v17, 0x0

    invoke-virtual {v0, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_ninv31(I)I

    move-result v5

    move/from16 v18, v6

    invoke-virtual {v0, v7, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_R2(II)I

    move-result v6

    move/from16 v19, v4

    move v4, v7

    invoke-virtual {v0, v3, v4, v5, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_Rx(IIII)I

    move-result v7

    add-int v20, v1, v18

    add-int v21, v19, v18

    move/from16 v22, v2

    move v2, v9

    move/from16 v23, v16

    const/4 v10, 0x0

    const/16 v24, 0x1

    :goto_1
    if-ge v10, v14, :cond_0

    move/from16 v17, v18

    move/from16 v18, v14

    move/from16 v14, v19

    move/from16 v19, v17

    move/from16 v25, v10

    move/from16 v17, v15

    move/from16 v15, v22

    move v10, v1

    move-object/from16 v1, p6

    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->zint_mod_small_signed([IIIIIII)I

    move-result v22

    move/from16 v26, v2

    aput v22, p6, v20

    move-object/from16 v0, p0

    move/from16 v2, v23

    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->zint_mod_small_signed([IIIIIII)I

    move-result v22

    aput v22, v1, v21

    add-int/lit8 v22, v25, 0x1

    add-int v23, v26, v3

    add-int/2addr v2, v3

    add-int v20, v20, v8

    add-int v21, v21, v8

    move/from16 v1, v23

    move/from16 v23, v2

    move v2, v1

    move/from16 v1, v19

    move/from16 v19, v14

    move/from16 v14, v18

    move/from16 v18, v1

    move v1, v10

    move/from16 v10, v22

    move/from16 v22, v15

    move/from16 v15, v17

    const/16 v17, 0x0

    goto :goto_1

    :cond_0
    move/from16 v10, v18

    move/from16 v18, v14

    move/from16 v14, v19

    move/from16 v19, v10

    move v10, v1

    move/from16 v17, v15

    move/from16 v15, v22

    move-object/from16 v1, p6

    add-int/lit8 v6, v19, 0x1

    move v1, v10

    move v4, v14

    move v2, v15

    move/from16 v15, v17

    move/from16 v14, v18

    const/4 v5, 0x0

    const/4 v10, 0x1

    goto/16 :goto_0

    :cond_1
    move v10, v1

    move/from16 v18, v14

    move/from16 v17, v15

    const/16 v24, 0x1

    move-object/from16 v1, p6

    move v15, v2

    move v14, v4

    invoke-static {v1, v10, v1, v9, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v10, v9, v15

    invoke-static {v1, v14, v1, v10, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v14, v10, v15

    mul-int v15, v17, v13

    add-int v16, v14, v15

    add-int v4, v16, v15

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v8, :cond_8

    sget-object v3, Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrimeList;->PRIMES:[Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;

    aget-object v3, v3, v2

    iget v6, v3, Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;->p:I

    invoke-virtual {v0, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_ninv31(I)I

    move-result v7

    invoke-virtual {v0, v6, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_R2(II)I

    move-result v19

    move v3, v2

    move v2, v4

    add-int v4, v2, v11

    add-int v20, v4, v13

    add-int v21, v20, v11

    sget-object v5, Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrimeList;->PRIMES:[Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;

    aget-object v5, v5, v3

    iget v5, v5, Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;->g:I

    move/from16 v22, v3

    move-object/from16 v3, p6

    move/from16 v9, v22

    move/from16 v22, v8

    move v8, v7

    move v7, v6

    move v6, v5

    move/from16 v5, p1

    invoke-virtual/range {v0 .. v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_mkgm2([II[IIIIII)V

    move v6, v7

    move v7, v8

    move v8, v4

    move v4, v2

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v11, :cond_2

    add-int v1, v20, v5

    add-int v2, p3, v5

    aget-byte v2, p2, v2

    invoke-virtual {v0, v2, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_set(II)I

    move-result v2

    aput v2, p6, v1

    add-int v1, v21, v5

    add-int v2, p5, v5

    aget-byte v2, p4, v2

    invoke-virtual {v0, v2, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_set(II)I

    move-result v2

    aput v2, p6, v1

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_2
    move-object/from16 v3, p6

    move/from16 v5, p1

    move-object/from16 v1, p6

    move/from16 v2, v20

    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_NTT2([II[IIIII)V

    move-object/from16 v0, p0

    move/from16 v2, v21

    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_NTT2([II[IIIII)V

    move v5, v7

    move v7, v4

    move/from16 v3, p1

    :goto_4
    if-le v3, v12, :cond_3

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move v4, v6

    move/from16 v6, v19

    move/from16 v2, v20

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_poly_rec_res([IIIIII)V

    move/from16 v19, v7

    move v7, v2

    move/from16 v2, v21

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_poly_rec_res([IIIIII)V

    move v0, v6

    move v6, v4

    add-int/lit8 v3, v3, -0x1

    move/from16 v20, v7

    move/from16 v7, v19

    move/from16 v19, v0

    goto :goto_4

    :cond_3
    move-object/from16 v1, p6

    move/from16 v0, v19

    move/from16 v2, v21

    move/from16 v19, v7

    move/from16 v7, v20

    add-int v3, v19, v13

    invoke-static {v1, v8, v1, v3, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v8, v3, v13

    invoke-static {v1, v7, v1, v8, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v4, v8, v13

    invoke-static {v1, v2, v1, v4, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v2, v4, v13

    add-int v20, v2, v18

    add-int v21, p7, v9

    add-int v23, v10, v9

    move/from16 v7, v18

    move/from16 v18, v10

    move v10, v7

    move/from16 v25, v21

    move/from16 v26, v23

    const/4 v7, 0x0

    :goto_5
    if-ge v7, v10, :cond_4

    add-int v27, v2, v7

    aget v28, v1, v25

    aput v28, v1, v27

    add-int v27, v20, v7

    aget v28, v1, v26

    aput v28, v1, v27

    add-int/lit8 v7, v7, 0x1

    add-int v25, v25, v22

    add-int v26, v26, v22

    goto :goto_5

    :cond_4
    move v7, v5

    add-int/lit8 v5, p1, -0x2

    move/from16 v25, v3

    move-object/from16 v3, p6

    move/from16 v26, v19

    move/from16 v19, v4

    move/from16 v4, v26

    move/from16 v26, v8

    move v8, v0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_NTT2([II[IIIII)V

    move/from16 v27, v2

    move-object/from16 v1, p6

    move/from16 v2, v20

    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_NTT2([II[IIIII)V

    move/from16 v20, v4

    move/from16 v1, v21

    move/from16 v3, v23

    const/4 v5, 0x0

    :goto_6
    if-ge v5, v10, :cond_5

    shl-int/lit8 v4, v5, 0x1

    add-int v28, v26, v4

    move/from16 v29, v1

    aget v1, p6, v28

    add-int/lit8 v28, v28, 0x1

    move/from16 v30, v2

    aget v2, p6, v28

    add-int v4, v19, v4

    move/from16 v28, v3

    aget v3, p6, v4

    add-int/lit8 v4, v4, 0x1

    aget v4, p6, v4

    add-int v31, v27, v5

    move/from16 v32, v5

    aget v5, p6, v31

    invoke-virtual {v0, v5, v8, v6, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v5

    add-int v31, v30, v32

    move/from16 v33, v11

    aget v11, p6, v31

    invoke-virtual {v0, v11, v8, v6, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v11

    invoke-virtual {v0, v4, v5, v6, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v4

    aput v4, p6, v29

    add-int v4, v29, v22

    invoke-virtual {v0, v3, v5, v6, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v3

    aput v3, p6, v4

    invoke-virtual {v0, v2, v11, v6, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v2

    aput v2, p6, v28

    add-int v3, v28, v22

    invoke-virtual {v0, v1, v11, v6, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v1

    aput v1, p6, v3

    add-int/lit8 v5, v32, 0x1

    shl-int/lit8 v1, v22, 0x1

    add-int v2, v29, v1

    add-int v3, v28, v1

    move v1, v2

    move/from16 v2, v30

    move/from16 v11, v33

    goto :goto_6

    :cond_5
    move/from16 v33, v11

    move-object/from16 v4, p6

    move-object/from16 v1, p6

    move v8, v7

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v5, v25

    move v7, v6

    move v6, v12

    invoke-virtual/range {v0 .. v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_iNTT2_ext([III[IIIII)V

    move v5, v6

    move v6, v7

    move v7, v8

    move-object/from16 v0, p0

    move/from16 v2, v23

    move v7, v6

    move v6, v5

    move/from16 v5, v25

    invoke-virtual/range {v0 .. v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_iNTT2_ext([III[IIIII)V

    move v5, v6

    move v6, v7

    move v7, v8

    move/from16 v11, v17

    if-ge v9, v11, :cond_6

    move-object/from16 v3, p6

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move/from16 v4, v25

    move/from16 v2, v26

    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_iNTT2([II[IIIII)V

    move/from16 v2, v19

    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_iNTT2([II[IIIII)V

    move/from16 v23, v5

    add-int v0, v14, v9

    add-int v1, v16, v9

    const/4 v5, 0x0

    :goto_7
    if-ge v5, v13, :cond_7

    add-int v8, v26, v5

    aget v3, p6, v8

    aput v3, p6, v0

    add-int v4, v2, v5

    aget v3, p6, v4

    aput v3, p6, v1

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v0, v11

    add-int/2addr v1, v11

    goto :goto_7

    :cond_6
    move/from16 v23, v5

    :cond_7
    add-int/lit8 v2, v9, 0x1

    move/from16 v0, v18

    move/from16 v18, v10

    move v10, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move/from16 v9, p7

    move/from16 v17, v11

    move/from16 v4, v20

    move/from16 v8, v22

    move/from16 v12, v23

    move/from16 v11, v33

    goto/16 :goto_2

    :cond_8
    move/from16 v11, v18

    move/from16 v18, v10

    move v10, v11

    move/from16 v20, v4

    move/from16 v22, v8

    move/from16 v23, v12

    move/from16 v11, v17

    shl-int/lit8 v5, v13, 0x1

    sget-object v6, Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrimeList;->PRIMES:[Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;

    const/4 v7, 0x1

    move/from16 v4, v22

    move-object/from16 v8, p6

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move/from16 v2, p7

    move/from16 v9, v20

    move/from16 v3, v22

    invoke-virtual/range {v0 .. v9}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->zint_rebuild_CRT([IIIII[Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;I[II)V

    move v4, v9

    sget-object v6, Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrimeList;->PRIMES:[Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;

    move v4, v11

    move v3, v11

    move v2, v14

    invoke-virtual/range {v0 .. v9}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->zint_rebuild_CRT([IIIII[Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;I[II)V

    move v8, v2

    new-array v1, v13, [Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    new-array v9, v13, [Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const/4 v2, 0x0

    move/from16 v6, v22

    move-object/from16 v3, p6

    move/from16 v4, p7

    move/from16 v5, v22

    move/from16 v7, v23

    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->poly_big_to_fp([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[IIIII)V

    move v12, v4

    move v3, v5

    move v5, v7

    move v14, v15

    move-object v15, v1

    move v6, v3

    move-object v1, v9

    move/from16 v4, v18

    move v5, v3

    move-object/from16 v3, p6

    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->poly_big_to_fp([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[IIIII)V

    move-object v1, v3

    move v5, v7

    mul-int/lit8 v0, v11, 0x2

    mul-int v0, v0, v13

    invoke-static {v1, v8, v1, v12, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v8, v12, v14

    new-array v3, v13, [Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    new-array v14, v13, [Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move v6, v11

    move-object v0, v3

    move-object v3, v1

    move-object v1, v0

    move-object/from16 v0, p0

    move v5, v11

    move v4, v12

    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->poly_big_to_fp([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[IIIII)V

    move-object v12, v1

    move v5, v7

    move-object/from16 v3, p6

    move v4, v8

    move v5, v11

    move-object v1, v14

    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->poly_big_to_fp([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[IIIII)V

    move-object v8, v0

    move v5, v7

    iget-object v0, v8, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    const/4 v2, 0x0

    invoke-virtual {v0, v15, v2, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FFT([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    iget-object v0, v8, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    invoke-virtual {v0, v9, v2, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FFT([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    iget-object v0, v8, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    invoke-virtual {v0, v12, v2, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FFT([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    iget-object v0, v8, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    invoke-virtual {v0, v1, v2, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FFT([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    new-array v3, v13, [Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    new-array v0, v10, [Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-object/from16 v19, v12

    iget-object v12, v8, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    const/16 v20, 0x0

    const/16 v22, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    move-object/from16 v21, v1

    move/from16 v23, v5

    move-object/from16 v17, v9

    move v9, v13

    move-object v13, v3

    invoke-virtual/range {v12 .. v23}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_add_muladj_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move-object v2, v0

    move-object/from16 v1, v19

    move-object/from16 v3, v21

    iget-object v0, v8, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, v2

    const/4 v2, 0x0

    move-object v5, v3

    move-object/from16 v3, v19

    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_invnorm2_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move-object/from16 v21, v5

    move v5, v7

    iget-object v0, v8, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object v3, v1

    move-object v1, v13

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_mul_autoadj_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    iget-object v0, v8, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    const/4 v2, 0x0

    invoke-virtual {v0, v13, v2, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->iFFT([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    const/4 v0, 0x0

    :goto_8
    if-ge v0, v9, :cond_b

    aget-object v1, v13, v0

    iget-object v2, v8, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v3, v2, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_ptwo63m1:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    invoke-virtual {v2, v1, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_lt(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, v8, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v3, v2, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mtwo63m1:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    invoke-virtual {v2, v3, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_lt(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_9

    :cond_9
    iget-object v2, v8, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v2, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_rint(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_of(J)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v1

    aput-object v1, v13, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_a
    :goto_9
    const/4 v2, 0x0

    return v2

    :cond_b
    const/4 v2, 0x0

    iget-object v0, v8, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    invoke-virtual {v0, v13, v2, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FFT([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    iget-object v0, v8, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v3, v13

    move-object/from16 v1, v19

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_mul_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    iget-object v0, v8, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object/from16 v1, v21

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_mul_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    iget-object v0, v8, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object v1, v15

    move-object/from16 v3, v19

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_sub([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    iget-object v0, v8, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object/from16 v1, v17

    move-object/from16 v3, v21

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_sub([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    iget-object v0, v8, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    const/4 v2, 0x0

    invoke-virtual {v0, v15, v2, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->iFFT([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    iget-object v0, v8, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    invoke-virtual {v0, v1, v2, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->iFFT([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    add-int v0, p7, v9

    const/4 v5, 0x0

    :goto_a
    if-ge v5, v9, :cond_c

    add-int v2, p7, v5

    iget-object v3, v8, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    aget-object v4, v15, v5

    invoke-virtual {v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_rint(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)J

    move-result-wide v3

    long-to-int v4, v3

    aput v4, p6, v2

    add-int v2, v0, v5

    iget-object v3, v8, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    aget-object v4, v1, v5

    invoke-virtual {v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_rint(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)J

    move-result-wide v3

    long-to-int v4, v3

    aput v4, p6, v2

    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    :cond_c
    return v24
.end method

.method solve_NTRU_deepest(I[BI[BI[II)I
    .locals 15

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->MAX_BL_SMALL:[I

    aget v10, v0, p1

    sget-object v11, Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrimeList;->PRIMES:[Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;

    add-int v12, p7, v10

    add-int v2, v12, v10

    add-int v13, v2, v10

    add-int v14, v13, v10

    const/4 v9, 0x0

    move/from16 v8, p1

    move-object v0, p0

    move/from16 v7, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v1, p6

    invoke-virtual/range {v0 .. v9}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->make_fg([II[BI[BIIII)V

    const/4 v5, 0x2

    const/4 v7, 0x0

    move v4, v10

    move-object/from16 v8, p6

    move v3, v10

    move-object v6, v11

    move v9, v14

    invoke-virtual/range {v0 .. v9}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->zint_rebuild_CRT([IIIII[Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;I[II)V

    move v11, v9

    move v9, v3

    move-object/from16 v3, p6

    move-object/from16 v5, p6

    move-object/from16 v7, p6

    move-object/from16 v10, p6

    move/from16 v4, p7

    move v6, v2

    move v2, v12

    move v8, v13

    invoke-virtual/range {v0 .. v11}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->zint_bezout([II[II[II[III[II)I

    move-result v3

    const/4 v5, 0x0

    if-nez v3, :cond_0

    return v5

    :cond_0
    const/16 v3, 0x3001

    invoke-virtual {p0, v1, v4, v9, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->zint_mul_small([IIII)I

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p0, v1, v2, v9, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->zint_mul_small([IIII)I

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    return v1

    :cond_2
    :goto_0
    return v5
.end method

.method solve_NTRU_intermediate(I[BI[BII[II)I
    .locals 33

    move-object/from16 v0, p0

    move/from16 v10, p8

    sub-int v13, p1, p6

    const/16 v16, 0x1

    shl-int v11, v16, v13

    shr-int/lit8 v12, v11, 0x1

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->MAX_BL_SMALL:[I

    aget v14, v1, p6

    add-int/lit8 v2, p6, 0x1

    aget v15, v1, v2

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->MAX_BL_LARGE:[I

    aget v3, v1, p6

    sget-object v17, Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrimeList;->PRIMES:[Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;

    mul-int v18, v15, v12

    add-int v1, v10, v18

    add-int v2, v1, v18

    const/4 v9, 0x1

    move/from16 v7, p1

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v8, p6

    move-object/from16 v1, p7

    move/from16 v19, v11

    move v11, v3

    move-object/from16 v3, p2

    invoke-virtual/range {v0 .. v9}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->make_fg([II[BI[BIIII)V

    mul-int v3, v19, v11

    add-int v20, v10, v3

    add-int v8, v20, v3

    mul-int/lit8 v3, v19, 0x2

    mul-int v3, v3, v14

    invoke-static {v1, v2, v1, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    mul-int v2, v14, v19

    add-int v21, v8, v2

    add-int v9, v21, v2

    mul-int/lit8 v2, v12, 0x2

    mul-int v2, v2, v15

    invoke-static {v1, v10, v1, v9, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v18, v9, v18

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v11, :cond_1

    aget-object v4, v17, v3

    iget v4, v4, Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;->p:I

    invoke-virtual {v0, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_ninv31(I)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_R2(II)I

    move-result v6

    invoke-virtual {v0, v15, v4, v5, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_Rx(IIII)I

    move-result v7

    add-int v22, v10, v3

    add-int v23, v20, v3

    move/from16 p1, v8

    move v2, v9

    move/from16 v24, v18

    const/4 v8, 0x0

    :goto_1
    const/16 v25, 0x0

    move/from16 v25, v3

    move v3, v15

    const/4 v15, 0x0

    if-ge v8, v12, :cond_0

    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->zint_mod_small_signed([IIIIIII)I

    move-result v26

    move/from16 v27, v2

    aput v26, p7, v22

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    move/from16 v2, v24

    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->zint_mod_small_signed([IIIIIII)I

    move-result v24

    aput v24, p7, v23

    add-int/lit8 v8, v8, 0x1

    add-int v1, v27, v3

    add-int v24, v2, v3

    add-int v22, v22, v11

    add-int v23, v23, v11

    move v2, v1

    move v15, v3

    move/from16 v3, v25

    move-object/from16 v1, p7

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v25, 0x1

    move/from16 v8, p1

    move v15, v3

    const/4 v2, 0x0

    move v3, v1

    move-object/from16 v1, p7

    goto :goto_0

    :cond_1
    move/from16 p1, v8

    const/4 v1, 0x0

    :goto_2
    const/4 v15, 0x0

    if-ge v1, v11, :cond_8

    aget-object v2, v17, v1

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;->p:I

    invoke-virtual {v0, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_ninv31(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_R2(II)I

    move-result v6

    if-ne v1, v14, :cond_2

    const/4 v7, 0x1

    move v4, v14

    move-object/from16 v8, p7

    move v15, v1

    move/from16 v18, v3

    move v10, v6

    move v3, v14

    move-object/from16 v6, v17

    move/from16 v5, v19

    move/from16 v14, p6

    move-object/from16 v1, p7

    move/from16 v17, v2

    move/from16 v2, p1

    invoke-virtual/range {v0 .. v9}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->zint_rebuild_CRT([IIIII[Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;I[II)V

    move/from16 v19, v2

    move v4, v3

    move-object/from16 v0, p0

    move/from16 v2, v21

    invoke-virtual/range {v0 .. v9}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->zint_rebuild_CRT([IIIII[Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;I[II)V

    move-object/from16 v22, v6

    move v4, v9

    move v9, v5

    goto :goto_3

    :cond_2
    move v15, v1

    move/from16 v18, v3

    move v10, v6

    move v4, v9

    move v3, v14

    move-object/from16 v22, v17

    move/from16 v9, v19

    move/from16 v19, p1

    move/from16 v14, p6

    move/from16 v17, v2

    :goto_3
    add-int v5, v4, v9

    add-int v23, v5, v9

    add-int v24, v23, v9

    aget-object v0, v22, v15

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;->g:I

    move v7, v3

    move-object/from16 v3, p7

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    move v2, v4

    move v4, v5

    move v5, v13

    move/from16 v8, v18

    move v13, v7

    move/from16 v7, v17

    invoke-virtual/range {v0 .. v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_mkgm2([II[IIIIII)V

    move/from16 v17, v2

    if-ge v15, v13, :cond_4

    add-int v2, v19, v15

    add-int v18, v21, v15

    move v1, v2

    move/from16 v3, v18

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v9, :cond_3

    add-int v6, v23, v0

    aget v26, p7, v1

    aput v26, p7, v6

    add-int v6, v24, v0

    aget v26, p7, v3

    aput v26, p7, v6

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v1, v13

    add-int/2addr v3, v13

    goto :goto_4

    :cond_3
    move v6, v5

    move v5, v4

    move-object/from16 v4, p7

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    move v3, v13

    invoke-virtual/range {v0 .. v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_iNTT2_ext([III[IIIII)V

    move v4, v5

    move v5, v6

    move-object/from16 v0, p7

    move/from16 v2, v18

    move v5, v4

    move-object v4, v0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_iNTT2_ext([III[IIIII)V

    move/from16 v18, v5

    move v5, v8

    move/from16 v4, v17

    move/from16 v17, v23

    move/from16 v23, v24

    move v8, v6

    goto/16 :goto_6

    :cond_4
    move-object/from16 v0, p0

    move/from16 v18, v4

    move v6, v7

    move v3, v13

    move v13, v5

    invoke-virtual {v0, v3, v6, v8, v10}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_Rx(IIII)I

    move-result v7

    move/from16 v2, v19

    move/from16 v26, v21

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v9, :cond_5

    add-int v27, v23, v1

    move v4, v6

    move v5, v8

    move v6, v10

    move v8, v1

    move-object/from16 v1, p7

    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->zint_mod_small_signed([IIIIIII)I

    move-result v10

    move/from16 v28, v2

    move v0, v7

    move v7, v4

    aput v10, p7, v27

    add-int v10, v24, v8

    move/from16 v2, v26

    move v7, v0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->zint_mod_small_signed([IIIIIII)I

    move-result v26

    move v0, v7

    move v7, v4

    aput v26, p7, v10

    add-int/lit8 v1, v8, 0x1

    add-int v4, v28, v3

    add-int v26, v2, v3

    move v2, v4

    move v8, v5

    move v10, v6

    move v6, v7

    move v7, v0

    move-object/from16 v0, p0

    goto :goto_5

    :cond_5
    move v7, v6

    move v5, v8

    move v6, v10

    move-object/from16 v0, p7

    move-object/from16 v1, p7

    move v6, v7

    move/from16 v4, v17

    move/from16 v2, v23

    move v7, v5

    move v5, v13

    move v13, v3

    move-object v3, v0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_NTT2([II[IIIII)V

    move/from16 v17, v2

    move v8, v7

    move v7, v6

    move-object/from16 v3, p7

    move v7, v8

    move/from16 v2, v24

    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_NTT2([II[IIIII)V

    move/from16 v23, v2

    move v8, v5

    move v5, v7

    move v7, v6

    :goto_6
    add-int v2, v23, v9

    add-int v24, v2, v12

    add-int v26, p8, v15

    add-int v27, v20, v15

    move/from16 v1, v26

    move/from16 v3, v27

    const/4 v0, 0x0

    :goto_7
    if-ge v0, v12, :cond_6

    add-int v6, v2, v0

    aget v28, p7, v1

    aput v28, p7, v6

    add-int v6, v24, v0

    aget v28, p7, v3

    aput v28, p7, v6

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v1, v11

    add-int/2addr v3, v11

    goto :goto_7

    :cond_6
    move v6, v7

    move v7, v5

    add-int/lit8 v5, v8, -0x1

    move-object/from16 v3, p7

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_NTT2([II[IIIII)V

    move/from16 v28, v2

    move v0, v5

    move v5, v7

    move v7, v6

    move/from16 v2, v24

    move v7, v5

    move v5, v0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_NTT2([II[IIIII)V

    move v5, v7

    move/from16 v24, v9

    move v9, v4

    move v7, v6

    move/from16 v3, v26

    move/from16 v4, v27

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v12, :cond_7

    shl-int/lit8 v6, v1, 0x1

    add-int v29, v17, v6

    move/from16 p1, v1

    aget v1, p7, v29

    add-int/lit8 v29, v29, 0x1

    move/from16 p2, v2

    aget v2, p7, v29

    add-int v6, v23, v6

    move/from16 p3, v3

    aget v3, p7, v6

    add-int/lit8 v6, v6, 0x1

    aget v6, p7, v6

    add-int v29, v28, p1

    move/from16 p4, v4

    aget v4, p7, v29

    invoke-virtual {v0, v4, v10, v7, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v4

    add-int v29, p2, p1

    move/from16 p5, v8

    aget v8, p7, v29

    invoke-virtual {v0, v8, v10, v7, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v8

    invoke-virtual {v0, v6, v4, v7, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v6

    aput v6, p7, p3

    add-int v6, p3, v11

    invoke-virtual {v0, v3, v4, v7, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v3

    aput v3, p7, v6

    invoke-virtual {v0, v2, v8, v7, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v2

    aput v2, p7, p4

    add-int v4, p4, v11

    invoke-virtual {v0, v1, v8, v7, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v1

    aput v1, p7, v4

    add-int/lit8 v1, p1, 0x1

    shl-int/lit8 v2, v11, 0x1

    add-int v3, p3, v2

    add-int v4, p4, v2

    move/from16 v2, p2

    move/from16 v8, p5

    goto :goto_8

    :cond_7
    move/from16 p5, v8

    move-object/from16 v4, p7

    move/from16 v6, p5

    move-object/from16 v1, p7

    move v8, v5

    move v3, v11

    move/from16 v5, v18

    move/from16 v2, v26

    invoke-virtual/range {v0 .. v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_iNTT2_ext([III[IIIII)V

    move v4, v5

    move v5, v6

    move-object/from16 v0, p7

    move/from16 v2, v27

    move v5, v4

    move-object v4, v0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_iNTT2_ext([III[IIIII)V

    move v10, v6

    add-int/lit8 v1, v15, 0x1

    move v14, v13

    move/from16 p1, v19

    move-object/from16 v17, v22

    move/from16 v19, v24

    move v13, v10

    move/from16 v10, p8

    goto/16 :goto_2

    :cond_8
    move v3, v11

    move v10, v13

    move v13, v14

    move-object/from16 v22, v17

    move/from16 v24, v19

    move/from16 v19, p1

    move/from16 v14, p6

    const/4 v7, 0x1

    move v4, v3

    move-object/from16 v8, p7

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    move/from16 v2, p8

    move-object/from16 v6, v22

    move/from16 v5, v24

    invoke-virtual/range {v0 .. v9}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->zint_rebuild_CRT([IIIII[Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;I[II)V

    move v4, v9

    move v4, v3

    move/from16 v2, v20

    invoke-virtual/range {v0 .. v9}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->zint_rebuild_CRT([IIIII[Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;I[II)V

    move/from16 v17, v2

    move v8, v5

    new-array v15, v8, [Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    new-array v0, v8, [Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    new-array v3, v8, [Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    new-array v1, v8, [Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    new-array v12, v12, [Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-object/from16 v18, v15

    move v15, v9

    new-array v9, v8, [I

    const/16 v2, 0xa

    if-le v13, v2, :cond_9

    const/16 v5, 0xa

    goto :goto_9

    :cond_9
    move v5, v13

    :goto_9
    add-int v4, v19, v13

    sub-int/2addr v4, v5

    const/16 v6, 0xa

    const/4 v2, 0x0

    move-object/from16 v20, v1

    move-object v1, v3

    move v7, v10

    move v6, v13

    const/16 v10, 0xa

    move-object/from16 v3, p7

    move-object v13, v0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->poly_big_to_fp([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[IIIII)V

    move v2, v5

    move v3, v6

    move v5, v7

    add-int v0, v21, v3

    sub-int v4, v0, v2

    move v5, v2

    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object v10, v1

    move-object/from16 v1, v20

    move-object/from16 v3, p7

    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->poly_big_to_fp([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[IIIII)V

    move v2, v5

    move/from16 v20, v6

    move v5, v7

    sub-int v2, v20, v2

    mul-int/lit8 v23, v2, 0x1f

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->bitlength_avg:[I

    aget v2, v2, v14

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->bitlength_std:[I

    aget v3, v3, v14

    mul-int/lit8 v4, v3, 0x6

    sub-int v24, v2, v4

    mul-int/lit8 v3, v3, 0x6

    add-int v26, v2, v3

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    const/4 v3, 0x0

    invoke-virtual {v2, v10, v3, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FFT([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    invoke-virtual {v2, v1, v3, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FFT([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move-object v2, v0

    iget-object v0, v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    move-object v3, v10

    move-object/from16 v10, p0

    move-object v5, v1

    move-object v1, v12

    const/4 v12, 0x0

    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_invnorm2_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move-object/from16 v27, v1

    move-object v0, v3

    move-object v1, v5

    move v5, v7

    iget-object v2, v10, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    invoke-virtual {v2, v0, v12, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_adj_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    iget-object v2, v10, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    invoke-virtual {v2, v1, v12, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_adj_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    mul-int/lit8 v3, v11, 0x1f

    sub-int v2, v3, v24

    move/from16 v22, v2

    move v12, v11

    :goto_a
    const/16 v2, 0xa

    move v7, v5

    if-le v12, v2, :cond_a

    const/16 v5, 0xa

    goto :goto_b

    :cond_a
    move v5, v12

    :goto_b
    sub-int v4, v12, v5

    mul-int/lit8 v24, v4, 0x1f

    add-int v4, p8, v12

    sub-int/2addr v4, v5

    const/16 v6, 0xa

    const/4 v2, 0x0

    move-object v6, v10

    move-object v10, v0

    move-object v0, v6

    move/from16 v30, v3

    move v6, v11

    move-object/from16 v3, p7

    move-object v11, v1

    move-object/from16 v1, v18

    const/16 v18, 0xa

    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->poly_big_to_fp([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[IIIII)V

    move v2, v5

    move v3, v6

    move v5, v7

    add-int v0, v17, v12

    sub-int v4, v0, v2

    move v5, v2

    const/4 v2, 0x0

    move-object v0, v13

    move-object v13, v1

    move-object v1, v0

    move-object/from16 v0, p0

    move-object/from16 v3, p7

    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->poly_big_to_fp([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[IIIII)V

    move v5, v7

    move v7, v6

    move-object v6, v0

    move-object v0, v1

    iget-object v1, v6, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    const/4 v3, 0x0

    invoke-virtual {v1, v13, v3, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FFT([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    iget-object v1, v6, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    invoke-virtual {v1, v0, v3, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FFT([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move-object v1, v0

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    const/4 v4, 0x0

    move-object v3, v13

    move-object v13, v1

    move-object v1, v3

    move-object v3, v10

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_mul_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move-object v10, v1

    move-object/from16 v28, v3

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object v3, v11

    move-object v1, v13

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_mul_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move-object/from16 v29, v3

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object v3, v10

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_add([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move-object/from16 v31, v3

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object/from16 v3, v27

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_mul_autoadj_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move-object v0, v1

    iget-object v1, v6, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->iFFT([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    sub-int v1, v22, v24

    add-int v1, v1, v23

    if-gez v1, :cond_b

    neg-int v1, v1

    iget-object v2, v6, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_two:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    goto :goto_c

    :cond_b
    iget-object v2, v6, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_onehalf:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    :goto_c
    iget-object v3, v6, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_one:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    :goto_d
    if-eqz v1, :cond_d

    and-int/lit8 v4, v1, 0x1

    if-eqz v4, :cond_c

    iget-object v4, v6, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v4, v3, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v3

    :cond_c
    shr-int/lit8 v1, v1, 0x1

    iget-object v4, v6, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v4, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sqr(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v2

    goto :goto_d

    :cond_d
    const/4 v2, 0x0

    :goto_e
    if-ge v2, v8, :cond_10

    iget-object v1, v6, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    aget-object v4, v0, v2

    invoke-virtual {v1, v4, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v1

    iget-object v4, v6, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v10, v4, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mtwo31m1:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    invoke-virtual {v4, v10, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_lt(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Z

    move-result v4

    if-eqz v4, :cond_f

    iget-object v4, v6, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v10, v4, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_ptwo31m1:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    invoke-virtual {v4, v1, v10}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_lt(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Z

    move-result v4

    if-nez v4, :cond_e

    goto :goto_f

    :cond_e
    iget-object v4, v6, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v4, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_rint(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)J

    move-result-wide v10

    long-to-int v1, v10

    aput v1, v9, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_f
    :goto_f
    const/16 v25, 0x0

    return v25

    :cond_10
    const/16 v25, 0x0

    div-int/lit8 v11, v22, 0x1f

    move v3, v12

    rem-int/lit8 v12, v22, 0x1f

    const/4 v1, 0x4

    if-gt v14, v1, :cond_11

    const/4 v10, 0x0

    move v13, v5

    move-object/from16 v5, p7

    move/from16 v24, v8

    move/from16 v8, v20

    move-object/from16 v14, p7

    move-object/from16 v1, p7

    move/from16 v2, p8

    move-object/from16 v18, v0

    move-object v0, v6

    move v4, v7

    move/from16 v6, v19

    move/from16 v7, v20

    move/from16 v32, v24

    const/16 v19, 0xa

    invoke-virtual/range {v0 .. v15}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->poly_sub_scaled_ntt([IIII[IIII[IIIII[II)V

    move/from16 v20, v6

    move-object v0, v9

    move v1, v11

    move v5, v13

    move v9, v15

    move v11, v3

    move v3, v7

    move v7, v5

    move-object/from16 v5, p7

    move v8, v3

    move v13, v7

    move/from16 v2, v17

    move/from16 v6, v21

    move-object v9, v0

    move v7, v3

    move v3, v11

    move-object/from16 v0, p0

    move v11, v1

    move-object/from16 v1, p7

    invoke-virtual/range {v0 .. v15}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->poly_sub_scaled_ntt([IIII[IIII[IIIII[II)V

    goto :goto_10

    :cond_11
    move-object/from16 v18, v0

    move v4, v7

    move/from16 v32, v8

    move v1, v11

    move v11, v3

    move/from16 v3, v20

    move/from16 v20, v19

    const/16 v19, 0xa

    const/4 v10, 0x0

    move v7, v5

    move-object/from16 v5, p7

    move v8, v3

    move-object/from16 v0, p0

    move/from16 v2, p8

    move v13, v7

    move/from16 v6, v20

    move v7, v3

    move v3, v11

    move v11, v1

    move-object/from16 v1, p7

    invoke-virtual/range {v0 .. v13}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->poly_sub_scaled([IIII[IIII[IIIII)V

    move v1, v11

    move v5, v13

    move v11, v3

    move v3, v7

    move v7, v5

    move-object/from16 v5, p7

    move v8, v3

    move v13, v7

    move/from16 v2, v17

    move/from16 v6, v21

    move v7, v3

    move v3, v11

    move v11, v1

    move-object/from16 v1, p7

    invoke-virtual/range {v0 .. v13}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->poly_sub_scaled([IIII[IIII[IIIII)V

    :goto_10
    move v11, v3

    move v3, v7

    move v5, v13

    add-int v0, v22, v26

    add-int/lit8 v6, v0, 0xa

    move/from16 v7, v30

    if-ge v6, v7, :cond_12

    mul-int/lit8 v12, v11, 0x1f

    add-int/lit8 v0, v0, 0x29

    if-lt v12, v0, :cond_13

    add-int/lit8 v12, v11, -0x1

    goto :goto_11

    :cond_12
    move v6, v7

    :cond_13
    move v12, v11

    :goto_11
    if-gtz v22, :cond_19

    if-ge v12, v3, :cond_16

    move/from16 v10, p8

    move/from16 v20, v2

    move/from16 v8, v32

    const/4 v2, 0x0

    :goto_12
    if-ge v2, v8, :cond_17

    add-int v0, v10, v12

    add-int/lit8 v0, v0, -0x1

    aget v0, v1, v0

    ushr-int/lit8 v0, v0, 0x1e

    neg-int v0, v0

    ushr-int/lit8 v0, v0, 0x1

    move v5, v12

    :goto_13
    if-ge v5, v3, :cond_14

    add-int v6, v10, v5

    aput v0, v1, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_13

    :cond_14
    add-int v0, v20, v12

    add-int/lit8 v0, v0, -0x1

    aget v0, v1, v0

    ushr-int/lit8 v0, v0, 0x1e

    neg-int v0, v0

    ushr-int/lit8 v0, v0, 0x1

    move v5, v12

    :goto_14
    if-ge v5, v3, :cond_15

    add-int v6, v20, v5

    aput v0, v1, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_14

    :cond_15
    add-int/lit8 v2, v2, 0x1

    add-int/2addr v10, v4

    add-int v20, v20, v4

    goto :goto_12

    :cond_16
    move/from16 v8, v32

    :cond_17
    move/from16 v0, p8

    move v2, v0

    const/4 v5, 0x0

    :goto_15
    shl-int/lit8 v6, v8, 0x1

    if-ge v5, v6, :cond_18

    invoke-static {v1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v2, v3

    add-int/2addr v0, v4

    goto :goto_15

    :cond_18
    return v16

    :cond_19
    move/from16 v8, v32

    add-int/lit8 v0, v22, -0x19

    if-gez v0, :cond_1a

    const/16 v22, 0x0

    goto :goto_16

    :cond_1a
    move/from16 v22, v0

    :goto_16
    move-object/from16 v10, p0

    move/from16 v14, p6

    move/from16 v17, v2

    move v11, v4

    move-object/from16 v13, v18

    move/from16 v19, v20

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v18, v31

    move/from16 v20, v3

    move v3, v6

    goto/16 :goto_a
.end method

.method zint_add_mul_small([II[IIII)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v0, p5, :cond_0

    add-int v2, p2, v0

    aget v3, p1, v2

    add-int v4, p4, v0

    aget v4, p3, v4

    invoke-direct {p0, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->toUnsignedLong(I)J

    move-result-wide v4

    invoke-direct {p0, p6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->toUnsignedLong(I)J

    move-result-wide v6

    mul-long v4, v4, v6

    invoke-direct {p0, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->toUnsignedLong(I)J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-direct {p0, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->toUnsignedLong(I)J

    move-result-wide v6

    add-long/2addr v4, v6

    long-to-int v1, v4

    const v3, 0x7fffffff

    and-int/2addr v1, v3

    aput v1, p1, v2

    const/16 v1, 0x1f

    ushr-long v1, v4, v1

    long-to-int v1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int/2addr p2, p5

    aput v1, p1, p2

    return-void
.end method

.method zint_add_scaled_mul_small([III[IIIIII)V
    .locals 14

    move/from16 v0, p6

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    add-int v1, p5, v0

    add-int/lit8 v1, v1, -0x1

    aget v1, p4, v1

    ushr-int/lit8 v1, v1, 0x1e

    neg-int v1, v1

    ushr-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    move/from16 v4, p3

    move/from16 v5, p8

    const/4 v3, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    sub-int v6, v5, p8

    if-ge v6, v0, :cond_1

    add-int v6, p5, v6

    aget v6, p4, v6

    goto :goto_1

    :cond_1
    move v6, v1

    :goto_1
    shl-int v7, v6, p9

    const v8, 0x7fffffff

    and-int/2addr v7, v8

    or-int/2addr v2, v7

    const/16 v7, 0x1f

    rsub-int/lit8 v9, p9, 0x1f

    ushr-int/2addr v6, v9

    invoke-direct {p0, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->toUnsignedLong(I)J

    move-result-wide v9

    move/from16 v2, p7

    int-to-long v11, v2

    mul-long v9, v9, v11

    add-int v11, p2, v5

    aget v12, p1, v11

    invoke-direct {p0, v12}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->toUnsignedLong(I)J

    move-result-wide v12

    add-long/2addr v9, v12

    int-to-long v12, v3

    add-long/2addr v9, v12

    long-to-int v3, v9

    and-int/2addr v3, v8

    aput v3, p1, v11

    ushr-long v7, v9, v7

    long-to-int v3, v7

    add-int/lit8 v5, v5, 0x1

    move v2, v6

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method zint_bezout([II[II[II[III[II)I
    .locals 40

    move-object/from16 v0, p0

    move-object/from16 v14, p5

    move/from16 v15, p6

    move-object/from16 v1, p7

    move/from16 v2, p8

    move/from16 v7, p9

    move-object/from16 v3, p10

    move/from16 v4, p11

    const/16 v17, 0x0

    if-nez v7, :cond_0

    return v17

    :cond_0
    add-int v5, v4, v7

    add-int v6, v5, v7

    add-int v8, v6, v7

    aget v9, v14, v15

    invoke-virtual {v0, v9}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_ninv31(I)I

    move-result v18

    aget v9, v1, v2

    invoke-virtual {v0, v9}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_ninv31(I)I

    move-result v16

    invoke-static {v14, v15, v3, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v1, v2, v3, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v19, 0x1

    aput v19, p1, p2

    aput v17, p3, p4

    const/4 v9, 0x1

    :goto_0
    if-ge v9, v7, :cond_1

    add-int v10, p2, v9

    aput v17, p1, v10

    add-int v10, p4, v9

    aput v17, p3, v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v1, v2, v3, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v14, v15, v3, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget v9, v3, v5

    add-int/lit8 v9, v9, -0x1

    aput v9, v3, v5

    mul-int/lit8 v9, v7, 0x3e

    const/16 v10, 0x1e

    add-int/2addr v9, v10

    :goto_1
    const/16 v11, 0x1f

    if-lt v9, v10, :cond_4

    move v13, v7

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, -0x1

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, -0x1

    :goto_2
    add-int/lit8 v26, v13, -0x1

    if-lez v13, :cond_2

    add-int v13, v6, v26

    aget v13, v3, v13

    add-int v27, v8, v26

    aget v27, v3, v27

    xor-int v28, v21, v13

    and-int v28, v28, v25

    xor-int v21, v21, v28

    xor-int v28, v20, v13

    and-int v28, v28, v22

    xor-int v20, v20, v28

    xor-int v28, v24, v27

    and-int v28, v28, v25

    xor-int v24, v24, v28

    xor-int v28, v23, v27

    and-int v22, v28, v22

    xor-int v23, v23, v22

    or-int v13, v13, v27

    const v22, 0x7fffffff

    add-int v13, v13, v22

    ushr-int/2addr v13, v11

    add-int/lit8 v13, v13, -0x1

    and-int v13, v25, v13

    move/from16 v22, v25

    move/from16 v25, v13

    move/from16 v13, v26

    goto :goto_2

    :cond_2
    and-int v13, v21, v22

    or-int v13, v20, v13

    xor-int/lit8 v20, v22, -0x1

    and-int v10, v21, v20

    and-int v21, v24, v22

    const/16 v22, -0x1

    or-int v12, v23, v21

    const/16 v21, 0x1f

    and-int v11, v24, v20

    invoke-direct {v0, v10}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->toUnsignedLong(I)J

    move-result-wide v23

    shl-long v23, v23, v21

    invoke-direct {v0, v13}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->toUnsignedLong(I)J

    move-result-wide v26

    add-long v23, v23, v26

    invoke-direct {v0, v11}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->toUnsignedLong(I)J

    move-result-wide v10

    shl-long v10, v10, v21

    invoke-direct {v0, v12}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->toUnsignedLong(I)J

    move-result-wide v12

    add-long/2addr v10, v12

    aget v12, v3, v6

    aget v13, v3, v8

    const-wide/16 v26, 0x0

    const-wide/16 v28, 0x1

    move/from16 v20, v6

    move-wide/from16 v30, v26

    move-wide/from16 v6, v28

    move-wide/from16 v32, v6

    const/4 v1, 0x0

    :goto_3
    const/16 v2, 0x1f

    if-ge v1, v2, :cond_3

    sub-long v34, v10, v23

    xor-long v36, v23, v10

    xor-long v38, v23, v34

    and-long v36, v36, v38

    xor-long v34, v34, v36

    const/16 v2, 0x3f

    move/from16 v36, v1

    ushr-long v1, v34, v2

    long-to-int v2, v1

    shr-int v1, v12, v36

    and-int/lit8 v1, v1, 0x1

    shr-int v34, v13, v36

    and-int/lit8 v34, v34, 0x1

    and-int v34, v1, v34

    move/from16 v35, v1

    and-int v1, v34, v2

    xor-int/lit8 v2, v2, -0x1

    and-int v2, v34, v2

    xor-int/lit8 v34, v35, 0x1

    or-int v3, v1, v34

    neg-int v4, v1

    and-int/2addr v4, v13

    sub-int/2addr v12, v4

    move/from16 v34, v5

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->toUnsignedLong(I)J

    move-result-wide v4

    neg-long v4, v4

    and-long/2addr v4, v10

    sub-long v23, v23, v4

    int-to-long v4, v1

    neg-long v4, v4

    and-long v37, v30, v4

    sub-long v6, v6, v37

    and-long v4, v32, v4

    sub-long v26, v26, v4

    neg-int v1, v2

    and-int/2addr v1, v12

    sub-int/2addr v13, v1

    invoke-direct {v0, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->toUnsignedLong(I)J

    move-result-wide v4

    neg-long v4, v4

    and-long v4, v23, v4

    sub-long/2addr v10, v4

    int-to-long v1, v2

    neg-long v1, v1

    and-long v4, v6, v1

    sub-long v30, v30, v4

    and-long v1, v26, v1

    sub-long v32, v32, v1

    add-int/lit8 v1, v3, -0x1

    and-int/2addr v1, v12

    add-int/2addr v12, v1

    int-to-long v1, v3

    sub-long v4, v1, v28

    and-long v37, v6, v4

    add-long v6, v6, v37

    and-long v4, v26, v4

    add-long v26, v26, v4

    shr-long v4, v23, v19

    xor-long v4, v23, v4

    move-wide/from16 v37, v4

    invoke-direct {v0, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->toUnsignedLong(I)J

    move-result-wide v4

    neg-long v4, v4

    and-long v4, v37, v4

    xor-long v23, v23, v4

    neg-int v4, v3

    and-int/2addr v4, v13

    add-int/2addr v13, v4

    neg-long v1, v1

    and-long v4, v30, v1

    add-long v30, v30, v4

    and-long v1, v32, v1

    add-long v32, v32, v1

    shr-long v1, v10, v19

    xor-long/2addr v1, v10

    invoke-direct {v0, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->toUnsignedLong(I)J

    move-result-wide v3

    sub-long v3, v3, v28

    and-long/2addr v1, v3

    xor-long/2addr v10, v1

    add-int/lit8 v1, v36, 0x1

    move-object/from16 v3, p10

    move/from16 v4, p11

    move/from16 v5, v34

    goto/16 :goto_3

    :cond_3
    move/from16 v34, v5

    move-object/from16 v3, p10

    move/from16 v5, p9

    move-object/from16 v1, p10

    move v4, v8

    move/from16 v2, v20

    move-wide/from16 v10, v30

    move-wide/from16 v12, v32

    const/16 v25, 0x1e

    move/from16 v20, v9

    move-wide/from16 v8, v26

    invoke-virtual/range {v0 .. v13}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->zint_co_reduce([II[IIIJJJJ)I

    move-result v3

    move/from16 v22, v2

    move/from16 v23, v4

    add-long v0, v6, v6

    and-int/lit8 v2, v3, 0x1

    int-to-long v4, v2

    neg-long v4, v4

    and-long/2addr v0, v4

    sub-long/2addr v6, v0

    add-long v26, v8, v8

    and-long v0, v26, v4

    sub-long v26, v8, v0

    add-long v30, v10, v10

    ushr-int/lit8 v0, v3, 0x1

    int-to-long v0, v0

    neg-long v0, v0

    and-long v2, v30, v0

    sub-long v30, v10, v2

    add-long v32, v12, v12

    and-long v0, v32, v0

    sub-long v32, v12, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v5, p7

    move-object/from16 v3, p10

    move/from16 v4, p11

    move-wide v9, v6

    move/from16 v8, v16

    move-wide/from16 v11, v26

    move-wide/from16 v13, v30

    move-wide/from16 v15, v32

    move/from16 v6, p8

    move/from16 v7, p9

    invoke-virtual/range {v0 .. v16}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->zint_co_reduce_mod([II[II[IIIIJJJJ)V

    move/from16 v1, v18

    move/from16 v18, v8

    move v8, v1

    move-object/from16 v1, p3

    move/from16 v2, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v4, v34

    invoke-virtual/range {v0 .. v16}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->zint_co_reduce_mod([II[II[IIIIJJJJ)V

    add-int/lit8 v9, v20, -0x1e

    move-object/from16 v14, p5

    move/from16 v15, p6

    move-object/from16 v1, p7

    move/from16 v2, p8

    move/from16 v4, p11

    move/from16 v16, v18

    move/from16 v6, v22

    move/from16 v5, v34

    const/16 v10, 0x1e

    move/from16 v18, v8

    move/from16 v8, v23

    goto/16 :goto_1

    :cond_4
    move/from16 v22, v6

    aget v0, p10, v22

    xor-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    :goto_4
    if-ge v1, v7, :cond_5

    add-int v6, v22, v1

    aget v2, p10, v6

    or-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_5
    neg-int v1, v0

    or-int/2addr v0, v1

    const/16 v21, 0x1f

    ushr-int/lit8 v0, v0, 0x1f

    rsub-int/lit8 v19, v0, 0x1

    aget v0, p5, p6

    and-int v0, v19, v0

    aget v1, p7, p8

    and-int/2addr v0, v1

    return v0
.end method

.method zint_co_reduce([II[IIIJJJJ)I
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move-wide v8, v6

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v5, :cond_1

    add-int v11, v2, v10

    aget v12, v1, v11

    add-int v13, v4, v10

    aget v14, v3, v13

    move v15, v10

    move/from16 v16, v11

    int-to-long v10, v12

    mul-long v17, v10, p6

    move-wide/from16 v19, v10

    int-to-long v10, v14

    mul-long v21, v10, p8

    add-long v17, v17, v21

    add-long v6, v17, v6

    mul-long v17, v19, p10

    mul-long v10, v10, p12

    add-long v17, v17, v10

    add-long v8, v17, v8

    if-lez v15, :cond_0

    add-int/lit8 v11, v16, -0x1

    long-to-int v10, v6

    const v12, 0x7fffffff

    and-int/2addr v10, v12

    aput v10, v1, v11

    add-int/lit8 v13, v13, -0x1

    long-to-int v10, v8

    and-int/2addr v10, v12

    aput v10, v3, v13

    :cond_0
    const/16 v10, 0x1f

    shr-long/2addr v6, v10

    shr-long/2addr v8, v10

    add-int/lit8 v10, v15, 0x1

    goto :goto_0

    :cond_1
    add-int v10, v2, v5

    add-int/lit8 v10, v10, -0x1

    long-to-int v11, v6

    aput v11, v1, v10

    add-int v10, v4, v5

    add-int/lit8 v10, v10, -0x1

    long-to-int v11, v8

    aput v11, v3, v10

    const/16 v10, 0x3f

    ushr-long/2addr v6, v10

    long-to-int v7, v6

    ushr-long/2addr v8, v10

    long-to-int v6, v8

    invoke-virtual {v0, v1, v2, v5, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->zint_negate([IIII)V

    invoke-virtual {v0, v3, v4, v5, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->zint_negate([IIII)V

    shl-int/lit8 v1, v6, 0x1

    or-int/2addr v1, v7

    return v1
.end method

.method zint_co_reduce_mod([II[II[IIIIJJJJ)V
    .locals 26

    move-object/from16 v0, p0

    move/from16 v1, p7

    move-wide/from16 v2, p9

    move-wide/from16 v4, p11

    move-wide/from16 v6, p13

    move-wide/from16 v8, p15

    aget v10, p1, p2

    long-to-int v11, v2

    mul-int v11, v11, v10

    aget v12, p3, p4

    long-to-int v13, v4

    mul-int v13, v13, v12

    add-int/2addr v11, v13

    mul-int v11, v11, p8

    const v13, 0x7fffffff

    and-int/2addr v11, v13

    long-to-int v14, v6

    mul-int v10, v10, v14

    long-to-int v14, v8

    mul-int v12, v12, v14

    add-int/2addr v10, v12

    mul-int v10, v10, p8

    and-int/2addr v10, v13

    const-wide/16 v14, 0x0

    const/4 v12, 0x0

    move-wide/from16 v17, v14

    const v16, 0x7fffffff

    move-wide/from16 v13, v17

    :goto_0
    if-ge v12, v1, :cond_1

    add-int v15, p2, v12

    aget v1, p1, v15

    add-int v19, p4, v12

    aget v2, p3, v19

    int-to-long v3, v1

    mul-long v20, v3, p9

    int-to-long v1, v2

    mul-long v22, v1, p11

    add-long v20, v20, v22

    add-int v5, p6, v12

    move-wide/from16 v22, v1

    aget v1, p5, v5

    int-to-long v1, v1

    invoke-direct {v0, v11}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->toUnsignedLong(I)J

    move-result-wide v24

    mul-long v1, v1, v24

    add-long v20, v20, v1

    add-long v1, v20, v17

    mul-long v3, v3, v6

    mul-long v17, v22, v8

    add-long v3, v3, v17

    aget v5, p5, v5

    move-wide/from16 v17, v3

    int-to-long v3, v5

    invoke-direct {v0, v10}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->toUnsignedLong(I)J

    move-result-wide v20

    mul-long v3, v3, v20

    add-long v3, v17, v3

    add-long/2addr v3, v13

    if-lez v12, :cond_0

    add-int/lit8 v15, v15, -0x1

    long-to-int v5, v1

    and-int v5, v5, v16

    aput v5, p1, v15

    add-int/lit8 v19, v19, -0x1

    long-to-int v5, v3

    and-int v5, v5, v16

    aput v5, p3, v19

    :cond_0
    const/16 v5, 0x1f

    shr-long v17, v1, v5

    shr-long v13, v3, v5

    add-int/lit8 v12, v12, 0x1

    move/from16 v1, p7

    move-wide/from16 v2, p9

    move-wide/from16 v4, p11

    goto :goto_0

    :cond_1
    add-int v1, p2, p7

    add-int/lit8 v1, v1, -0x1

    move-wide/from16 v2, v17

    long-to-int v4, v2

    aput v4, p1, v1

    add-int v1, p4, p7

    add-int/lit8 v1, v1, -0x1

    long-to-int v4, v13

    aput v4, p3, v1

    const/16 v1, 0x3f

    ushr-long/2addr v2, v1

    long-to-int v3, v2

    move-object/from16 p9, p1

    move/from16 p10, p2

    move-object/from16 p12, p5

    move/from16 p13, p6

    move/from16 p11, p7

    move-object/from16 p8, v0

    move/from16 p14, v3

    invoke-virtual/range {p8 .. p14}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->zint_finish_mod([III[III)V

    ushr-long v0, v13, v1

    long-to-int v1, v0

    move-object/from16 p8, p0

    move-object/from16 p9, p3

    move/from16 p10, p4

    move/from16 p14, v1

    invoke-virtual/range {p8 .. p14}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->zint_finish_mod([III[III)V

    return-void
.end method

.method zint_finish_mod([III[III)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, p3, :cond_0

    add-int v3, p2, v1

    aget v3, p1, v3

    add-int v4, p5, v1

    aget v4, p4, v4

    sub-int/2addr v3, v4

    sub-int/2addr v3, v2

    ushr-int/lit8 v2, v3, 0x1f

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    neg-int v1, p6

    ushr-int/lit8 v1, v1, 0x1

    rsub-int/lit8 v2, v2, 0x1

    or-int/2addr v2, p6

    neg-int v2, v2

    :goto_1
    if-ge v0, p3, :cond_1

    add-int v3, p2, v0

    aget v4, p1, v3

    add-int v5, p5, v0

    aget v5, p4, v5

    xor-int/2addr v5, v1

    and-int/2addr v5, v2

    sub-int/2addr v4, v5

    sub-int/2addr v4, p6

    const p6, 0x7fffffff

    and-int/2addr p6, v4

    aput p6, p1, v3

    ushr-int/lit8 p6, v4, 0x1f

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method zint_mod_small_signed([IIIIIII)I
    .locals 7

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->zint_mod_small_unsigned([IIIIII)I

    move-result p1

    add-int p2, v2, v3

    add-int/lit8 p2, p2, -0x1

    aget p2, v1, p2

    ushr-int/lit8 p2, p2, 0x1e

    neg-int p2, p2

    and-int/2addr p2, p7

    invoke-virtual {p0, p1, p2, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_sub(III)I

    move-result p1

    return p1
.end method

.method zint_mod_small_unsigned([IIIIII)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v1, p3, -0x1

    if-lez p3, :cond_0

    invoke-virtual {p0, v0, p6, p4, p5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result p3

    add-int v0, p2, v1

    aget v0, p1, v0

    sub-int/2addr v0, p4

    ushr-int/lit8 v2, v0, 0x1f

    neg-int v2, v2

    and-int/2addr v2, p4

    add-int/2addr v0, v2

    invoke-virtual {p0, p3, v0, p4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_add(III)I

    move-result v0

    move p3, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method zint_mul_small([IIII)I
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    add-int v2, p2, v0

    aget v3, p1, v2

    invoke-direct {p0, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->toUnsignedLong(I)J

    move-result-wide v3

    invoke-direct {p0, p4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->toUnsignedLong(I)J

    move-result-wide v5

    mul-long v3, v3, v5

    int-to-long v5, v1

    add-long/2addr v3, v5

    long-to-int v1, v3

    const v5, 0x7fffffff

    and-int/2addr v1, v5

    aput v1, p1, v2

    const/16 v1, 0x1f

    shr-long v1, v3, v1

    long-to-int v1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method zint_negate([IIII)V
    .locals 4

    neg-int v0, p4

    ushr-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_0

    add-int v2, p2, v1

    aget v3, p1, v2

    xor-int/2addr v3, v0

    add-int/2addr v3, p4

    const p4, 0x7fffffff

    and-int/2addr p4, v3

    aput p4, p1, v2

    ushr-int/lit8 p4, v3, 0x1f

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method zint_norm_zero([II[III)V
    .locals 12

    const/4 v0, 0x0

    move/from16 v2, p5

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_0

    add-int v2, p2, v3

    aget v2, p1, v2

    add-int v4, p4, v3

    aget v4, p3, v4

    ushr-int/lit8 v5, v4, 0x1

    shl-int/lit8 v1, v1, 0x1e

    or-int/2addr v1, v5

    and-int/lit8 v4, v4, 0x1

    sub-int/2addr v1, v2

    neg-int v2, v1

    ushr-int/lit8 v2, v2, 0x1f

    ushr-int/lit8 v1, v1, 0x1f

    neg-int v1, v1

    or-int/2addr v1, v2

    and-int/lit8 v2, v0, 0x1

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    move v2, v3

    move v1, v4

    goto :goto_0

    :cond_0
    ushr-int/lit8 v11, v0, 0x1f

    move-object v5, p0

    move-object v6, p1

    move v7, p2

    move-object v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    invoke-virtual/range {v5 .. v11}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->zint_sub([II[IIII)I

    return-void
.end method

.method zint_one_to_plain([II)I
    .locals 0

    aget p1, p1, p2

    const/high16 p2, 0x40000000    # 2.0f

    and-int/2addr p2, p1

    shl-int/lit8 p2, p2, 0x1

    or-int/2addr p1, p2

    return p1
.end method

.method zint_rebuild_CRT([IIIII[Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;I[II)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v7, p5

    const/4 v8, 0x0

    aget-object v1, p6, v8

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;->p:I

    aput v1, p8, p9

    const/4 v1, 0x1

    move/from16 v9, p3

    const/4 v3, 0x1

    :goto_0
    if-ge v3, v9, :cond_1

    aget-object v1, p6, v3

    iget v4, v1, Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;->p:I

    aget-object v1, p6, v3

    iget v10, v1, Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;->s:I

    invoke-virtual {v0, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_ninv31(I)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_R2(II)I

    move-result v6

    move/from16 v2, p2

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v7, :cond_0

    add-int v1, v2, v3

    aget v12, p1, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->zint_mod_small_unsigned([IIIIII)I

    move-result v13

    move v14, v4

    move v15, v5

    move/from16 v16, v6

    invoke-virtual {v0, v12, v13, v14}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_sub(III)I

    move-result v1

    invoke-virtual {v0, v10, v1, v14, v15}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v6

    move-object/from16 v1, p1

    move/from16 v4, p9

    move v5, v3

    move-object/from16 v3, p8

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->zint_add_mul_small([II[IIII)V

    add-int/lit8 v11, v11, 0x1

    add-int v2, v2, p4

    move v3, v5

    move v4, v14

    move v5, v15

    move/from16 v6, v16

    goto :goto_1

    :cond_0
    move v5, v3

    move v14, v4

    move-object/from16 v3, p8

    move/from16 v4, p9

    add-int v1, v4, v5

    invoke-virtual {v0, v3, v4, v5, v14}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->zint_mul_small([IIII)I

    move-result v2

    aput v2, v3, v1

    add-int/lit8 v1, v5, 0x1

    move v3, v1

    goto :goto_0

    :cond_1
    move-object/from16 v3, p8

    move/from16 v4, p9

    if-eqz p7, :cond_2

    move/from16 v2, p2

    :goto_2
    if-ge v8, v7, :cond_2

    move-object/from16 v1, p1

    move v5, v9

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->zint_norm_zero([II[III)V

    add-int/lit8 v8, v8, 0x1

    add-int v2, v2, p4

    move-object/from16 v0, p0

    move/from16 v9, p3

    move-object/from16 v3, p8

    move/from16 v4, p9

    goto :goto_2

    :cond_2
    return-void
.end method

.method zint_sub([II[IIII)I
    .locals 6

    neg-int p6, p6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v0, p5, :cond_0

    add-int v2, p2, v0

    aget v3, p1, v2

    add-int v4, p4, v0

    aget v4, p3, v4

    sub-int v4, v3, v4

    sub-int/2addr v4, v1

    ushr-int/lit8 v1, v4, 0x1f

    const v5, 0x7fffffff

    and-int/2addr v4, v5

    xor-int/2addr v4, v3

    and-int/2addr v4, p6

    xor-int/2addr v3, v4

    aput v3, p1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method zint_sub_scaled([III[IIIII)V
    .locals 8

    if-nez p6, :cond_0

    goto :goto_2

    :cond_0
    add-int v0, p5, p6

    add-int/lit8 v0, v0, -0x1

    aget v0, p4, v0

    ushr-int/lit8 v0, v0, 0x1e

    neg-int v0, v0

    ushr-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    move v3, p7

    const/4 v2, 0x0

    :goto_0
    if-ge v3, p3, :cond_2

    sub-int v4, v3, p7

    if-ge v4, p6, :cond_1

    add-int/2addr v4, p5

    aget v4, p4, v4

    goto :goto_1

    :cond_1
    move v4, v0

    :goto_1
    shl-int v5, v4, p8

    const v6, 0x7fffffff

    and-int/2addr v5, v6

    or-int/2addr v1, v5

    rsub-int/lit8 v5, p8, 0x1f

    ushr-int/2addr v4, v5

    add-int v5, p2, v3

    aget v7, p1, v5

    sub-int/2addr v7, v1

    sub-int/2addr v7, v2

    and-int v1, v7, v6

    aput v1, p1, v5

    ushr-int/lit8 v2, v7, 0x1f

    add-int/lit8 v3, v3, 0x1

    move v1, v4

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method
