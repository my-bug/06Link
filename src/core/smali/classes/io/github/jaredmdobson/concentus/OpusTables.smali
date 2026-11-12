.class Lio/github/jaredmdobson/concentus/OpusTables;
.super Ljava/lang/Object;
.source "OpusTables.java"


# static fields
.field static final analysis_window:[F

.field static final dct_table:[F

.field static final extra_bands:[I

.field static final mode_thresholds:[[I

.field static final mono_music_bandwidth_thresholds:[I

.field static final mono_voice_bandwidth_thresholds:[I

.field static final net:Lio/github/jaredmdobson/concentus/MLPState;

.field static final stereo_music_bandwidth_thresholds:[I

.field public static final stereo_music_threshold:I = 0x7530

.field static final stereo_voice_bandwidth_thresholds:[I

.field public static final stereo_voice_threshold:I = 0x7530

.field static final tansig_table:[F

.field static final tbands:[I

.field static final topo:[I

.field static final weights:[F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x80

    .line 39
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lio/github/jaredmdobson/concentus/OpusTables;->dct_table:[F

    const/16 v0, 0xf0

    .line 57
    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Lio/github/jaredmdobson/concentus/OpusTables;->analysis_window:[F

    const/16 v0, 0x13

    .line 89
    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lio/github/jaredmdobson/concentus/OpusTables;->tbands:[I

    const/16 v0, 0x16

    .line 93
    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lio/github/jaredmdobson/concentus/OpusTables;->extra_bands:[I

    const/16 v0, 0x1a6

    .line 102
    new-array v0, v0, [F

    fill-array-data v0, :array_4

    sput-object v0, Lio/github/jaredmdobson/concentus/OpusTables;->weights:[F

    const/16 v1, 0xf

    const/4 v2, 0x2

    const/16 v3, 0x19

    .line 191
    filled-new-array {v3, v1, v2}, [I

    move-result-object v1

    sput-object v1, Lio/github/jaredmdobson/concentus/OpusTables;->topo:[I

    .line 194
    new-instance v2, Lio/github/jaredmdobson/concentus/MLPState;

    invoke-direct {v2}, Lio/github/jaredmdobson/concentus/MLPState;-><init>()V

    sput-object v2, Lio/github/jaredmdobson/concentus/OpusTables;->net:Lio/github/jaredmdobson/concentus/MLPState;

    const/4 v3, 0x3

    .line 197
    iput v3, v2, Lio/github/jaredmdobson/concentus/MLPState;->layers:I

    .line 198
    iput-object v1, v2, Lio/github/jaredmdobson/concentus/MLPState;->topo:[I

    .line 199
    iput-object v0, v2, Lio/github/jaredmdobson/concentus/MLPState;->weights:[F

    const/16 v0, 0xc9

    .line 203
    new-array v0, v0, [F

    fill-array-data v0, :array_5

    sput-object v0, Lio/github/jaredmdobson/concentus/OpusTables;->tansig_table:[F

    const/16 v0, 0x8

    .line 250
    new-array v1, v0, [I

    fill-array-data v1, :array_6

    sput-object v1, Lio/github/jaredmdobson/concentus/OpusTables;->mono_voice_bandwidth_thresholds:[I

    .line 255
    new-array v1, v0, [I

    fill-array-data v1, :array_7

    sput-object v1, Lio/github/jaredmdobson/concentus/OpusTables;->mono_music_bandwidth_thresholds:[I

    .line 260
    new-array v1, v0, [I

    fill-array-data v1, :array_8

    sput-object v1, Lio/github/jaredmdobson/concentus/OpusTables;->stereo_voice_bandwidth_thresholds:[I

    .line 265
    new-array v0, v0, [I

    fill-array-data v0, :array_9

    sput-object v0, Lio/github/jaredmdobson/concentus/OpusTables;->stereo_music_bandwidth_thresholds:[I

    const/4 v0, 0x2

    .line 278
    new-array v0, v0, [[I

    const v1, 0xfa00

    const/16 v2, 0x3e80

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x8ca0

    const/16 v2, 0x3e80

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lio/github/jaredmdobson/concentus/OpusTables;->mode_thresholds:[[I

    return-void

    nop

    :array_0
    .array-data 4
        0x3e800000    # 0.25f
        0x3e800000    # 0.25f
        0x3e800000    # 0.25f
        0x3e800000    # 0.25f
        0x3e800000    # 0.25f
        0x3e800000    # 0.25f
        0x3e800000    # 0.25f
        0x3e800000    # 0.25f
        0x3e800000    # 0.25f
        0x3e800000    # 0.25f
        0x3e800000    # 0.25f
        0x3e800000    # 0.25f
        0x3e800000    # 0.25f
        0x3e800000    # 0.25f
        0x3e800000    # 0.25f
        0x3e800000    # 0.25f
        0x3eb425d0
        0x3ead3997    # 0.33833f
        0x3e9fa509
        0x3e8bedfa    # 0.2733f
        0x3e65accd
        0x3e2aa9f8
        0x3dd23034
        0x3d0df15a
        -0x42f20ea6
        -0x422dcfcc
        -0x41d55608
        -0x419a5333
        -0x41741206    # -0.2733f
        -0x41605af7
        -0x4152c669    # -0.33833f
        -0x414bda30
        0x3eb18a87    # 0.34676f
        0x3e96831b
        0x3e492360
        0x3d8d42c4
        -0x4272bd3c
        -0x41b6dca0
        -0x41697ce5
        -0x414e7579    # -0.34676f
        -0x414e7579    # -0.34676f
        -0x41697ce5
        -0x41b6dca0
        -0x4272bd3c
        0x3d8d42c4
        0x3e492360
        0x3e96831b
        0x3eb18a87    # 0.34676f
        0x3ead3997    # 0.33833f
        0x3e65accd
        0x3d0df15a
        -0x41d55608
        -0x41605af7
        -0x414bda30
        -0x41741206    # -0.2733f
        -0x422dcfcc
        0x3dd23034
        0x3e8bedfa    # 0.2733f
        0x3eb425d0
        0x3e9fa509
        0x3e2aa9f8
        -0x42f20ea6
        -0x419a5333
        -0x4152c669    # -0.33833f
        0x3ea73d7d
        0x3e0a8bd2
        -0x41f5742e
        -0x4158c283
        -0x4158c283
        -0x41f5742e
        0x3e0a8bd2
        0x3ea73d7d
        0x3ea73d7d
        0x3e0a8bd2
        -0x41f5742e
        -0x4158c283
        -0x4158c283
        -0x41f5742e
        0x3e0a8bd2
        0x3ea73d7d
        0x3e9fa509
        0x3d0df15a
        -0x41741206    # -0.2733f
        -0x4152c669    # -0.33833f
        -0x422dcfcc
        0x3e65accd
        0x3eb425d0
        0x3e2aa9f8
        -0x41d55608
        -0x414bda30
        -0x419a5333
        0x3dd23034
        0x3ead3997    # 0.33833f
        0x3e8bedfa    # 0.2733f
        -0x42f20ea6
        -0x41605af7
        0x3e96831b
        -0x4272bd3c
        -0x414e7579    # -0.34676f
        -0x41b6dca0
        0x3e492360
        0x3eb18a87    # 0.34676f
        0x3d8d42c4
        -0x41697ce5
        -0x41697ce5
        0x3d8d42c4
        0x3eb18a87    # 0.34676f
        0x3e492360
        -0x41b6dca0
        -0x414e7579    # -0.34676f
        -0x4272bd3c
        0x3e96831b
        0x3e8bedfa    # 0.2733f
        -0x41d55608
        -0x4152c669    # -0.33833f
        0x3d0df15a
        0x3eb425d0
        0x3dd23034
        -0x41605af7
        -0x419a5333
        0x3e65accd
        0x3e9fa509
        -0x422dcfcc
        -0x414bda30
        -0x42f20ea6
        0x3ead3997    # 0.33833f
        0x3e2aa9f8
        -0x41741206    # -0.2733f
    .end array-data

    :array_1
    .array-data 4
        0x38345ae6    # 4.3E-5f
        0x39334e77    # 1.71E-4f
        0x39c9d9d3    # 3.85E-4f
        0x3a339192    # 6.85E-4f
        0x3a8c60cc    # 0.001071f
        0x3ac9fb61    # 0.001541f
        0x3b097e99    # 0.002098f
        0x3b3380cb    # 0.002739f
        0x3b6325d5    # 0.003466f
        0x3b8c2e77    # 0.004278f
        0x3ba98aa8    # 0.005174f
        0x3bc9b845    # 0.006156f
        0x3beca687    # 0.007222f
        0x3c092ee8    # 0.008373f
        0x3c1d66ae    # 0.009607f
        0x3c3302f7    # 0.010926f
        0x3c49ff93    # 0.012329f
        0x3c62584f    # 0.013815f
        0x3c7c115e    # 0.015385f
        0x3c8b912e    # 0.017037f
        0x3c99c7bd    # 0.018772f
        0x3ca8ac5c    # 0.02059f
        0x3cb83cf3    # 0.02249f
        0x3cc87981    # 0.024472f
        0x3cd95fee    # 0.026535f
        0x3ceaf039    # 0.028679f
        0x3cfd2a63    # 0.030904f
        0x3d080735    # 0.03321f
        0x3d11cc10    # 0.035595f
        0x3d1be4cd    # 0.03806f
        0x3d265061    # 0.040604f
        0x3d310ecb
        0x3d3c1f00
        0x3d4780fe    # 0.048707f
        0x3d5334c6    # 0.051564f
        0x3d5f383f
        0x3d6b8b69
        0x3d782e45
        0x3d829069
        0x3d89307b    # 0.066987f
        0x3d8ff7e0
        0x3d96e58a    # 0.07368f
        0x3d9df97b
        0x3da533b1    # 0.080665f
        0x3dac9321
        0x3db41850
        0x3dbbc233    # 0.091679f
        0x3dc3914f
        0x3dcb8412
        0x3dd39b02
        0x3ddbd61f
        0x3de433d7
        0x3decb4af
        0x3df55821
        0x3dfe1da8    # 0.12408f
        0x3e0382a1
        0x3e0806f2
        0x3e0c9bc7
        0x3e1140dd
        0x3e15f634
        0x3e1abb45
        0x3e1f9011
        0x3e247454    # 0.1606f
        0x3e2967cb
        0x3e2e6a33
        0x3e337b8d
        0x3e389b52    # 0.18028f
        0x3e3dc9c5    # 0.18534f
        0x3e43061c
        0x3e485059
        0x3e4da87a    # 0.200838f
        0x3e530db7
        0x3e588052
        0x3e5e0008
        0x3e638c54
        0x3e6924f2    # 0.22768f
        0x3e6eca25
        0x3e747b24
        0x3e7a37ac
        0x3e800000    # 0.25f
        0x3e82e9ab
        0x3e85d8f9
        0x3e88cd85
        0x3e8bc750
        0x3e8ec637
        0x3e91c9f7
        0x3e94d2b3    # 0.29067f
        0x3e97e026
        0x3e9af20f
        0x3e9e086c
        0x3ea1231c
        0x3ea441ff
        0x3ea764d0
        0x3eaa8bb1
        0x3eadb61c    # 0.33928f
        0x3eb0e454
        0x3eb415d3
        0x3eb74aba
        0x3eba82e8
        0x3ebdbdf9    # 0.37059f
        0x3ec0fc0d
        0x3ec43ce2
        0x3ec78056    # 0.389651f
        0x3ecac647
        0x3ece0e95
        0x3ed158fb
        0x3ed4a57a
        0x3ed7f3f1    # 0.421783f
        0x3edb441c
        0x3ede95d9
        0x3ee1e908
        0x3ee53da7
        0x3ee89353
        0x3eebea0c
        0x3eef41af
        0x3ef29a1c
        0x3ef5f30e
        0x3ef94c88
        0x3efca622
        0x3f000000    # 0.5f
        0x3f01acef
        0x3f0359bc
        0x3f050679
        0x3f06b2f2
        0x3f085f29
        0x3f0a0afa
        0x3f0bb656
        0x3f0d612c
        0x3f0f0b7c
        0x3f10b513
        0x3f125df2
        0x3f140608
        0x3f15ad43
        0x3f175382
        0x3f18f8b6
        0x3f1a9cdc
        0x3f1c3fd5    # 0.610349f
        0x3f1de18f
        0x3f1f81f9
        0x3f212104
        0x3f22be8c
        0x3f245aa3
        0x3f25f517
        0x3f278dd6
        0x3f2924f2    # 0.66072f
        0x3f2aba28
        0x3f2c4d98
        0x3f2ddf01
        0x3f2f6e72
        0x3f30fbca
        0x3f3286f9
        0x3f340fed
        0x3f3596a7
        0x3f371b04
        0x3f389ce5
        0x3f3a1c58
        0x3f3b993d
        0x3f3d1383
        0x3f3e8b2a
        0x3f400000    # 0.75f
        0x3f417215
        0x3f42e137
        0x3f444d77
        0x3f45b6c3
        0x3f471ceb
        0x3f487ffe
        0x3f49dfec
        0x3f4b3c92
        0x3f4c95e1
        0x3f4debea
        0x3f4f3e79
        0x3f508d8f
        0x3f51d92b
        0x3f53211d
        0x3f546573
        0x3f55a60d
        0x3f56e2eb    # 0.8394f
        0x3f581bfc
        0x3f59512f
        0x3f5a8273
        0x3f5bafc9
        0x3f5cd90e
        0x3f5dfe43
        0x3f5f1f58
        0x3f603c4b    # 0.87592f
        0x3f6154fc
        0x3f62696a
        0x3f637985
        0x3f64853c
        0x3f658ca0
        0x3f668f7e
        0x3f678dd6
        0x3f6887ba
        0x3f697cf6
        0x3f6a6d9c
        0x3f6b598a
        0x3f6c40d1
        0x3f6d234f
        0x3f6e0104
        0x3f6ed9f1
        0x3f6fadf3
        0x3f707d1c
        0x3f714749
        0x3f720c7c
        0x3f72ccb4
        0x3f7387f0
        0x3f743e10
        0x3f74ef13
        0x3f759afa
        0x3f7641b3    # 0.96194f
        0x3f76e33f    # 0.964405f
        0x3f777f8d
        0x3f7816ad
        0x3f78a87e
        0x3f793501
        0x3f79bc34
        0x3f7a3e18
        0x3f7aba9d    # 0.97941f
        0x3f7b31c2
        0x3f7ba377
        0x3f7c0fbb
        0x3f7c769f
        0x3f7cd802
        0x3f7d33f4
        0x3f7d8a65
        0x3f7ddb44
        0x3f7e26b3
        0x3f7e6c8f
        0x3f7eaceb
        0x3f7ee7a3
        0x3f7f1cda
        0x3f7f4c7f
        0x3f7f7681
        0x3f7f9b02
        0x3f7fb9d0
        0x3f7fd31c
        0x3f7fe6c5
        0x3f7ff4cb
        0x3f7ffd2f    # 0.999957f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x2
        0x4
        0x6
        0x8
        0xa
        0xc
        0xe
        0x10
        0x14
        0x18
        0x1c
        0x20
        0x28
        0x30
        0x38
        0x44
        0x50
        0x60
        0x78
    .end array-data

    :array_3
    .array-data 4
        0x1
        0x2
        0x4
        0x6
        0x8
        0xa
        0xc
        0xe
        0x10
        0x14
        0x18
        0x1c
        0x20
        0x28
        0x30
        0x38
        0x44
        0x50
        0x60
        0x78
        0xa0
        0xc8
    .end array-data

    :array_4
    .array-data 4
        -0x423f41f2
        -0x4164e054
        -0x40e57d6b
        -0x41b96a6a    # -0.19393f
        -0x41c18dac
        -0x40e5fc6e
        -0x42c167fa
        -0x42155ffe
        -0x422bd44a
        -0x40e18d47
        -0x415d4196
        -0x41d1f8e4
        -0x42700c95
        0x3e179e5a    # 0.148065f
        0x3ed1ad21
        0x3f0c660a
        0x3ebc3c7d
        -0x4102deec
        0x3f43a98f
        -0x401488f8
        0x3e2ef30a
        0x414c9375    # 12.786f
        -0x4074acb0    # -1.08848f
        -0x405d1394
        -0x3e7dea4b
        0x41c16b1c
        -0x3f4d9d5e
        -0x41cf1801    # -0.17276f
        -0x41d8b0d1
        -0x419a3162
        -0x423da801
        -0x426ac365
        -0x41780735
        -0x42329ed4
        -0x42acde35
        -0x41ea59c0
        -0x4208dc12    # -0.120674f
        -0x41c70260
        0x3e03a7db    # 0.12857f
        0x3ee25fe9
        -0x4103352b
        0x3e2bcb1d
        0x3e53a8e7
        -0x41b5b0ff    # -0.197567f
        0x3ed603f7    # 0.417999f
        0x3fc07747
        -0x40ba0653    # -0.773341f
        -0x3edf5bc0    # -10.0401f
        0x3ecdc22b
        0x403eb2c0
        0x417376c9
        -0x400e339c    # -1.88905f
        -0x40675ad9
        0x3ce9cc17
        -0x447b3e7a
        0x3d90e8c9
        0x3c074854
        -0x42421866
        -0x43d5b899    # -0.010393f
        -0x447376c5
        -0x445f8561
        -0x426ea5a8
        -0x44d83bab
        0x3d220ba9
        0x3e67dbb1
        0x3d0536f1
        0x3e261134    # 0.162175f
        -0x4232f556
        0x3ef8b956    # 0.485789f
        0x3e02046c    # 0.12697f
        0x3e926656
        0x3c7efee4
        0x3dd7fb6a    # 0.10546f
        0x40438e9f
        0x3f934688
        -0x407ed7c7    # -1.00904f
        -0x4015a5b9
        0x4054548b
        -0x3fa4ca2e
        -0x420c02f3    # -0.119135f
        -0x42d9d818
        0x3be21f19
        0x3c935af1
        -0x42e35555
        0x3bc3eeed
        -0x436995fb
        0x3af98df6    # 0.00190395f
        -0x41ec36db
        -0x42cd8c96
        0x3a81d6d2
        0x3e6264a1
        0x3e11d29e
        0x3ef7d780
        0x3ecf0cdd
        0x3f030f7c
        -0x418d0d06
        0x3e778b37    # 0.241742f
        0x3eb36e2f    # 0.35045f
        -0x40ccf249
        0x41266388
        0x4029a512    # 2.6507f
        -0x3fe42fad
        -0x3f79f8cb
        0x3f87967d
        0x3fdaf73c    # 1.71067f
        0x3bdad40c
        -0x426c4546
        -0x42dd3f41
        0x3d149045
        -0x42148fda    # -0.11496f
        -0x433eda30
        0x3c069cd2
        -0x4397c584    # -0.0141741f
        -0x42f8f48e
        -0x42eee5e1
        0x3b35ccab
        -0x416b2f66
        -0x406d1926
        -0x415c9774
        -0x40d03ea7
        0x3ebce9a3    # 0.36897f
        0x3ef53240
        0x3e3af5fd
        -0x412d885d
        0x3f619008
        -0x3f6c94d9
        0x3fbc1f21    # 1.4697f
        0x3eabf3e0
        -0x4017295f
        -0x3e0ea40b
        0x40b1ac08
        0x3affb1fc    # 0.0019508f
        -0x4202ea96    # -0.123576f
        -0x426b0adb
        -0x427c99d7
        -0x42a51604
        -0x422279dd
        -0x424006ec
        -0x427112d5
        -0x431e54b5
        -0x41bb1359
        -0x421e9186
        0x3e921cac    # 0.285375f
        -0x41305597
        0x3dbdcb07
        -0x416c9add
        -0x40a61837
        -0x42343d04
        -0x4190a02c
        -0x405b7e91    # -1.2852f
        0x3f916c0d
        0x4047c99b
        -0x4270d845    # -0.0699f
        -0x4011a4be
        0x4029c971    # 2.65292f
        -0x3f161188
        0x401ca81a
        -0x456d7579
        -0x427e67ca
        -0x42e5de81
        -0x41e68d76
        0x3e1264e5
        0x3e3ccaf7    # 0.184368f
        0x3dfcca71
        0x3d9adc75
        0x3df04146    # 0.117312f
        0x3dbf28c8
        0x3d8dc147
        0x3dac9016
        0x3d9051af
        0x3d71a61b
        0x3dc0f6ad
        -0x411a2ec3
        0x3cd72f5c
        0x3e8a6b94
        -0x4179b196
        0x3e30ba62
        0x40002531
        -0x41dcf67b
        0x3d1d6063    # 0.038422f
        0x4123511a
        0x4084f8b6
        -0x3fea31f9    # -2.3407f
        -0x429e9c88
        0x3c1e124f
        -0x41ef459e
        0x3ce0df08
        0x3d0cdebb
        -0x42b85978
        0x3dc29861
        -0x44020add
        -0x42e76d62    # -0.0372492f
        -0x444c6447
        -0x42781345
        0x3dc4b62d
        -0x41b3311a    # -0.200008f
        -0x42d6e7f4
        0x3f1657fb
        0x3d534430
        0x3eacac8e
        0x3f5ae2da
        0x3f2b1a5d
        -0x4214ad36
        -0x3f97b44e
        -0x4110a6db
        -0x41a35b4f
        0x40276239
        0x3ecfee91
        -0x4051714c
        0x3d2e3dcb
        0x3dfa0514    # 0.12208f
        0x3dbf62d2
        0x3dfc0443
        0x3d0ba5a0
        -0x41ee1d65
        0x3d0f82f5    # 0.035037f
        -0x42b705f1
        0x3d962937
        0x3d6c3471
        0x3dfdeb53
        -0x42ac2847
        -0x417e746d
        0x3f172f45
        0x3e155971
        0x3ea15fee
        0x3e62d9cf
        -0x41e7574f
        0x3e5d594f
        -0x414d0481
        0x41c487fd
        -0x40817c5f
        0x3f1d420b
        -0x3e69ad0e
        -0x3fcab3e5
        -0x40c87fbb
        -0x414e3bac
        0x3ef582fd
        -0x41841180
        0x3d9b60d7
        0x3e0c9689
        -0x41c9ec2d    # -0.17781f
        0x3df333b9
        -0x457202d2
        -0x418cf851
        0x3eb62281
        -0x41faf8df    # -0.12991f
        -0x429fb126
        -0x415ce39b
        -0x415954eb
        0x3e38d36b
        -0x427fe055
        0x3e109bb7
        0x3eb02928
        0x3ec0cf18    # 0.37658f
        -0x40e881a1
        0x40baf766    # 5.8427f
        -0x413d0e56    # -0.38075f
        0x3e63382e
        -0x404a5311
        -0x361a93d0    # -1879430.0f
        0x3fabaa7a
        0x3ce81fda
        -0x42c88ee5
        -0x4352c45e
        -0x432d8681
        0x3c64c009
        0x3caa56ec
        -0x43cf999b
        0x3c35cfc6
        0x3d700dca
        -0x43304bc2
        -0x42f9794e
        0x3df32379    # 0.11872f
        -0x41a1d9b2
        0x3e153ef7
        0x3df55de6
        -0x42449096
        -0x4208ea3a
        -0x425eacd7
        -0x41ece896
        -0x40e7a67a
        -0x406c8b44    # -1.152f
        -0x405f923a
        -0x406a1f4b
        0x408ae32a
        -0x3691e5c0    # -975268.0f
        -0x40509907
        -0x42dbb334
        0x3e57a80d    # 0.210602f
        -0x41f41073
        0x3e0b399f
        -0x42a9a8c0
        0x3d361c1c
        0x3c6bcfc7
        0x3b8738ef
        -0x4361e456
        0x3e5fb1e2
        -0x421e4d5e
        -0x3ffe5c14    # -2.02563f
        0x3f6b11a5
        -0x3fe2f7e4
        0x3f990386
        -0x4284a948
        -0x4009edd0
        0x3e9dc0ba
        0x3efecaac
        0x3f69902a
        0x3e564b66
        -0x3fe9e76d
        0x400c5e5f
        -0x3f30ebd9    # -6.47121f
        0x3fd94e90
        -0x40c65e57
        0x3c42da70
        0x3d1ace4d    # 0.0377944f
        0x3d62eb6d
        0x3cb9826d
        -0x426fbc0d
        -0x4309fca3
        0x3c497cb6
        -0x447716b8    # -0.0041782f
        -0x427361c2
        0x3d00407d
        0x3d2032db    # 0.039111f
        0x3eba6cc2
        -0x423e5a0e
        0x3cbc507e
        -0x41cdae3e    # -0.17414f
        0x3ea8dae4
        0x3deaef2c
        0x3e99b670
        0x3ddb213e
        0x3e078812
        0x40b99408
        0x3f68767d
        -0x40983cb0
        -0x3fa935a8    # -3.3561f
        0x3e4338f8
        0x3e3ca1cf    # 0.184211f
        -0x40d38bce    # -0.673648f
        0x3e6d5ed0
        -0x428fe22b    # -0.0586222f
        0x3e6c4a41
        -0x411f9a28
        0x3e7bc1f0    # 0.245857f
        -0x41cfb7e9    # -0.17215f
        0x3db37bb6
        -0x40c78c87
        0x3e266a55    # 0.162515f
        0x3c8bbb55
        0x3dd0728f
        0x3ec6e675
        0x3faa26d5
        0x3f8af102
        -0x40904e94
        -0x3fe858cd
        -0x3f28f6be
        -0x3fa39970
        0x4008d7f1
        0x4163b574    # 14.2318f
        0x409d4452
        -0x3fba34ec
        -0x3ee4edf0
        -0x40bb5504
        0x3fe5e4a4
        0x3d61234b
        0x3e275211
        0x3da33b10
        0x3d0cdffd
        -0x429c502d
        -0x445a4d13    # -0.00505673f
        0x3c9966d9
        0x3d05c96e
        0x3cbda222    # 0.0231486f
        0x3e1f77af    # 0.15573f
        0x3d430f9a
        -0x417d87b5
        0x3fccff97
        -0x40b2e32e
        0x40238477
        0x3f3cd541
        -0x405199ed
        -0x40cdf623
        -0x3fe3a5b9
        -0x402251c2
        0x407cfa83
        0x3ff201cd
        0x3ef8e065
        -0x3ecaa6b5    # -11.3343f
        0x4a709380    # 3941600.0f
        -0x413cb407    # -0.381439f
        0x3df81d7e    # 0.12115f
        -0x4097d3a2
        0x403c14f9
        0x3fd1c433    # 1.6388f
        0x3f61ffe7
        0x3f5fd502
        0x3f9bcf2d    # 1.21726f
        -0x40a01dd2
        0x3ea4b6a6
        0x3f48f95d
        0x3f7251a0
        -0x40ecc87a
        -0x3fa234c2
        0x3f628922
        0x3dbd3ead
        -0x3ee17c70
        0x3ec85d74
        0x3e23f20a
        -0x3ffcd456
        0x4084a7f0
        0x3d8c16d2
        -0x41ebc3c6
        -0x416def85
        0x3ec22c45    # 0.379244f
        -0x406bb98c    # -1.1584f
        -0x431ce259
        -0x3ee26666    # -9.85f
        -0x3f65a2f0
        0x406da733
        0x4077e08b
        0x4061a31a
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x3d23c105    # 0.039979f
        0x3da37de9    # 0.07983f
        0x3df49625
        0x3e2274e2
        0x3e4a1cac    # 0.197375f
        0x3e7125dd    # 0.235496f
        0x3e8bba34
        0x3e9e77b4
        0x3eb0bfe4
        0x3ec288ad
        0x3ed3c925
        0x3ee47a18
        0x3ef49518    # 0.4777f
        0x3f020ac8
        0x3f097c1c    # 0.53705f
        0x3f109d49    # 0.5649f
        0x3f176dca
        0x3f1dedc0
        0x3f241d9f
        0x3f29fe54
        0x3f2f912e
        0x3f34d7e0
        0x3f39d463
        0x3f3e88f0    # 0.744277f
        0x3f42f7d3
        0x3f4723ab    # 0.777888f
        0x3f4b0f17
        0x3f4ebcd8
        0x3f522fad
        0x3f556a6a    # 0.833655f
        0x3f586fce
        0x3f5b429a
        0x3f5de58e
        0x3f605b4b
        0x3f62a66e
        0x3f64c964
        0x3f66c69b
        0x3f68a06f
        0x3f6a58f7    # 0.91542f
        0x3f6bf280
        0x3f6d6edf
        0x3f6ed00b
        0x3f7017ca
        0x3f7147e0
        0x3f7261e1
        0x3f73674d
        0x3f745996
        0x3f753a0c
        0x3f7609ff
        0x3f76ca8a    # 0.964028f
        0x3f777cbb
        0x3f7821c0
        0x3f78ba62
        0x3f79479d
        0x3f79ca4b
        0x3f7a4324
        0x3f7ab2f2
        0x3f7b1a3b
        0x3f7b79c8
        0x3f7bd220
        0x3f7c23c8
        0x3f7c6f37
        0x3f7cb4f2
        0x3f7cf55e
        0x3f7d30e0
        0x3f7d67ec
        0x3f7d9ab7
        0x3f7dc9b4
        0x3f7df506
        0x3f7e1d11
        0x3f7e4218
        0x3f7e644e
        0x3f7e83d3
        0x3f7ea0fd
        0x3f7ebbed
        0x3f7ed4c3
        0x3f7eebb3
        0x3f7f00ef
        0x3f7f1487
        0x3f7f268d
        0x3f7f3743
        0x3f7f46aa
        0x3f7f54e3
        0x3f7f620f    # 0.99759f
        0x3f7f6e2f
        0x3f7f7964
        0x3f7f83be
        0x3f7f8d3f
        0x3f7f9618
        0x3f7f9e38
        0x3f7fa5c2
        0x3f7faca3
        0x3f7fb310
        0x3f7fb8f5
        0x3f7fbe77    # 0.999f
        0x3f7fc372
        0x3f7fc819
        0x3f7fcc6c
        0x3f7fd05b
        0x3f7fd406
        0x3f7fd76f
        0x3f7fda83
        0x3f7fdd66
        0x3f7fe015
        0x3f7fe282
        0x3f7fe4cd
        0x3f7fe6e6
        0x3f7fe8cd
        0x3f7fea92
        0x3f7fec46
        0x3f7fedc8
        0x3f7fef28
        0x3f7ff078
        0x3f7ff1a6
        0x3f7ff2c3    # 0.999798f
        0x3f7ff3bf
        0x3f7ff4ba
        0x3f7ff594
        0x3f7ff65e
        0x3f7ff727
        0x3f7ff7cf
        0x3f7ff877
        0x3f7ff8fd
        0x3f7ff994    # 0.999902f
        0x3f7ffa09    # 0.999909f
        0x3f7ffa7f    # 0.999916f
        0x3f7ffaf4    # 0.999923f
        0x3f7ffb59    # 0.999929f
        0x3f7ffbad    # 0.999934f
        0x3f7ffc01    # 0.999939f
        0x3f7ffc54    # 0.999944f
        0x3f7ffc98    # 0.999948f
        0x3f7ffcdb    # 0.999952f
        0x3f7ffd1e    # 0.999956f
        0x3f7ffd50    # 0.999959f
        0x3f7ffd82    # 0.999962f
        0x3f7ffdb5    # 0.999965f
        0x3f7ffde7    # 0.999968f
        0x3f7ffe09    # 0.99997f
        0x3f7ffe3b    # 0.999973f
        0x3f7ffe5d    # 0.999975f
        0x3f7ffe7e    # 0.999977f
        0x3f7ffe8f    # 0.999978f
        0x3f7ffeb0    # 0.99998f
        0x3f7ffed2    # 0.999982f
        0x3f7ffee3    # 0.999983f
        0x3f7ffef4    # 0.999984f
        0x3f7fff15    # 0.999986f
        0x3f7fff26    # 0.999987f
        0x3f7fff37    # 0.999988f
        0x3f7fff47    # 0.999989f
        0x3f7fff58    # 0.99999f
        0x3f7fff58    # 0.99999f
        0x3f7fff69    # 0.999991f
        0x3f7fff7a    # 0.999992f
        0x3f7fff7a    # 0.999992f
        0x3f7fff8b    # 0.999993f
        0x3f7fff9b    # 0.999994f
        0x3f7fff9b    # 0.999994f
        0x3f7fff9b    # 0.999994f
        0x3f7fffac    # 0.999995f
        0x3f7fffac    # 0.999995f
        0x3f7fffbd    # 0.999996f
        0x3f7fffbd    # 0.999996f
        0x3f7fffbd    # 0.999996f
        0x3f7fffce    # 0.999997f
        0x3f7fffce    # 0.999997f
        0x3f7fffce    # 0.999997f
        0x3f7fffce    # 0.999997f
        0x3f7fffce    # 0.999997f
        0x3f7fffde    # 0.999998f
        0x3f7fffde    # 0.999998f
        0x3f7fffde    # 0.999998f
        0x3f7fffde    # 0.999998f
        0x3f7fffde    # 0.999998f
        0x3f7fffde    # 0.999998f
        0x3f7fffef    # 0.999999f
        0x3f7fffef    # 0.999999f
        0x3f7fffef    # 0.999999f
        0x3f7fffef    # 0.999999f
        0x3f7fffef    # 0.999999f
        0x3f7fffef    # 0.999999f
        0x3f7fffef    # 0.999999f
        0x3f7fffef    # 0.999999f
        0x3f7fffef    # 0.999999f
        0x3f7fffef    # 0.999999f
        0x3f7fffef    # 0.999999f
        0x3f7fffef    # 0.999999f
        0x3f7fffef    # 0.999999f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_6
    .array-data 4
        0x2af8
        0x3e8
        0x36b0
        0x3e8
        0x4268
        0x3e8
        0x5208
        0x7d0
    .end array-data

    :array_7
    .array-data 4
        0x2ee0
        0x3e8
        0x3a98
        0x3e8
        0x4650
        0x7d0
        0x55f0
        0x7d0
    .end array-data

    :array_8
    .array-data 4
        0x2af8
        0x3e8
        0x36b0
        0x3e8
        0x5208
        0x7d0
        0x6d60
        0x7d0
    .end array-data

    :array_9
    .array-data 4
        0x2ee0
        0x3e8
        0x4650
        0x7d0
        0x5208
        0x7d0
        0x7530
        0x7d0
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
