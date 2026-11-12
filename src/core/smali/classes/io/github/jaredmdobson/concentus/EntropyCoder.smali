.class Lio/github/jaredmdobson/concentus/EntropyCoder;
.super Ljava/lang/Object;
.source "EntropyCoder.java"


# static fields
.field static final BITRES:I = 0x3

.field private static final correction:[I


# instance fields
.field private final EC_CODE_BITS:I

.field private final EC_CODE_BOT:J

.field private final EC_CODE_EXTRA:I

.field private final EC_CODE_SHIFT:I

.field private final EC_CODE_TOP:J

.field private final EC_SYM_BITS:I

.field private final EC_SYM_MAX:J

.field private final EC_UINT_BITS:I

.field private final EC_WINDOW_SIZE:I

.field private buf:[B

.field private buf_ptr:I

.field end_offs:I

.field end_window:J

.field error:I

.field ext:J

.field nbits_total:I

.field nend_bits:I

.field offs:I

.field rem:I

.field rng:J

.field storage:I

.field val:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    .line 636
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lio/github/jaredmdobson/concentus/EntropyCoder;->correction:[I

    return-void

    :array_0
    .array-data 4
        0x8b95
        0x9837
        0xa5ff
        0xb504
        0xc567
        0xd745
        0xeac1
        0xffff
    .end array-data
.end method

.method constructor <init>()V
    .locals 2

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    .line 88
    iput v0, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->EC_WINDOW_SIZE:I

    const/16 v1, 0x8

    .line 91
    iput v1, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->EC_UINT_BITS:I

    .line 98
    iput v1, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->EC_SYM_BITS:I

    .line 101
    iput v0, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->EC_CODE_BITS:I

    const-wide/16 v0, 0xff

    .line 104
    iput-wide v0, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->EC_SYM_MAX:J

    const/16 v0, 0x17

    .line 107
    iput v0, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->EC_CODE_SHIFT:I

    const-wide v0, 0x80000000L

    .line 110
    iput-wide v0, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->EC_CODE_TOP:J

    const-wide/32 v0, 0x800000

    .line 113
    iput-wide v0, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->EC_CODE_BOT:J

    const/4 v0, 0x7

    .line 116
    iput v0, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->EC_CODE_EXTRA:I

    .line 162
    invoke-virtual {p0}, Lio/github/jaredmdobson/concentus/EntropyCoder;->Reset()V

    return-void
.end method


# virtual methods
.method Assign(Lio/github/jaredmdobson/concentus/EntropyCoder;)V
    .locals 2

    .line 181
    iget-object v0, p1, Lio/github/jaredmdobson/concentus/EntropyCoder;->buf:[B

    iput-object v0, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->buf:[B

    .line 182
    iget v0, p1, Lio/github/jaredmdobson/concentus/EntropyCoder;->buf_ptr:I

    iput v0, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->buf_ptr:I

    .line 183
    iget v0, p1, Lio/github/jaredmdobson/concentus/EntropyCoder;->storage:I

    iput v0, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->storage:I

    .line 184
    iget v0, p1, Lio/github/jaredmdobson/concentus/EntropyCoder;->end_offs:I

    iput v0, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->end_offs:I

    .line 185
    iget-wide v0, p1, Lio/github/jaredmdobson/concentus/EntropyCoder;->end_window:J

    iput-wide v0, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->end_window:J

    .line 186
    iget v0, p1, Lio/github/jaredmdobson/concentus/EntropyCoder;->nend_bits:I

    iput v0, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->nend_bits:I

    .line 187
    iget v0, p1, Lio/github/jaredmdobson/concentus/EntropyCoder;->nbits_total:I

    iput v0, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->nbits_total:I

    .line 188
    iget v0, p1, Lio/github/jaredmdobson/concentus/EntropyCoder;->offs:I

    iput v0, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->offs:I

    .line 189
    iget-wide v0, p1, Lio/github/jaredmdobson/concentus/EntropyCoder;->rng:J

    iput-wide v0, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->rng:J

    .line 190
    iget-wide v0, p1, Lio/github/jaredmdobson/concentus/EntropyCoder;->val:J

    iput-wide v0, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->val:J

    .line 191
    iget-wide v0, p1, Lio/github/jaredmdobson/concentus/EntropyCoder;->ext:J

    iput-wide v0, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->ext:J

    .line 192
    iget v0, p1, Lio/github/jaredmdobson/concentus/EntropyCoder;->rem:I

    iput v0, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->rem:I

    .line 193
    iget p1, p1, Lio/github/jaredmdobson/concentus/EntropyCoder;->error:I

    iput p1, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->error:I

    return-void
.end method

.method Reset()V
    .locals 3

    const/4 v0, 0x0

    .line 166
    iput-object v0, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->buf:[B

    const/4 v0, 0x0

    .line 167
    iput v0, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->buf_ptr:I

    .line 168
    iput v0, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->storage:I

    .line 169
    iput v0, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->end_offs:I

    const-wide/16 v1, 0x0

    .line 170
    iput-wide v1, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->end_window:J

    .line 171
    iput v0, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->nend_bits:I

    .line 172
    iput v0, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->offs:I

    .line 173
    iput-wide v1, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->rng:J

    .line 174
    iput-wide v1, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->val:J

    .line 175
    iput-wide v1, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->ext:J

    .line 176
    iput v0, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->rem:I

    .line 177
    iput v0, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->error:I

    return-void
.end method

.method dec_bit_logp(J)I
    .locals 5

    .line 313
    iget-wide v0, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->rng:J

    .line 314
    iget-wide v2, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->val:J

    long-to-int p2, p1

    shr-long p1, v0, p2

    cmp-long v4, v2, p1

    if-gez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-nez v4, :cond_1

    sub-long/2addr v2, p1

    .line 318
    invoke-static {v2, v3}, Lio/github/jaredmdobson/concentus/Inlines;->CapToUInt32(J)J

    move-result-wide v2

    iput-wide v2, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->val:J

    :cond_1
    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    sub-long p1, v0, p1

    .line 320
    :goto_1
    iput-wide p1, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->rng:J

    .line 321
    invoke-virtual {p0}, Lio/github/jaredmdobson/concentus/EntropyCoder;->dec_normalize()V

    return v4
.end method

.method dec_bits(I)I
    .locals 5

    .line 390
    iget-wide v0, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->end_window:J

    .line 391
    iget v2, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->nend_bits:I

    if-ge v2, p1, :cond_1

    .line 394
    :cond_0
    invoke-virtual {p0}, Lio/github/jaredmdobson/concentus/EntropyCoder;->read_byte_from_end()I

    move-result v3

    shl-int/2addr v3, v2

    int-to-long v3, v3

    or-long/2addr v0, v3

    invoke-static {v0, v1}, Lio/github/jaredmdobson/concentus/Inlines;->CapToUInt32(J)J

    move-result-wide v0

    add-int/lit8 v2, v2, 0x8

    const/16 v3, 0x18

    if-le v2, v3, :cond_0

    :cond_1
    const/4 v3, 0x1

    shl-int v4, v3, p1

    sub-int/2addr v4, v3

    int-to-long v3, v4

    and-long/2addr v3, v0

    long-to-int v4, v3

    shr-long/2addr v0, p1

    sub-int/2addr v2, p1

    .line 401
    invoke-static {v0, v1}, Lio/github/jaredmdobson/concentus/Inlines;->CapToUInt32(J)J

    move-result-wide v0

    iput-wide v0, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->end_window:J

    .line 402
    iput v2, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->nend_bits:I

    .line 403
    iget v0, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->nbits_total:I

    add-int/2addr v0, p1

    iput v0, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->nbits_total:I

    return v4
.end method

.method dec_icdf([SI)I
    .locals 9

    .line 327
    iget-wide v0, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->rng:J

    .line 328
    iget-wide v2, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->val:J

    shr-long v4, v0, p2

    const/4 p2, -0x1

    :goto_0
    add-int/lit8 p2, p2, 0x1

    .line 333
    aget-short v6, p1, p2

    int-to-long v6, v6

    mul-long v6, v6, v4

    invoke-static {v6, v7}, Lio/github/jaredmdobson/concentus/Inlines;->CapToUInt32(J)J

    move-result-wide v6

    cmp-long v8, v2, v6

    if-ltz v8, :cond_0

    sub-long/2addr v2, v6

    .line 335
    invoke-static {v2, v3}, Lio/github/jaredmdobson/concentus/Inlines;->CapToUInt32(J)J

    move-result-wide v2

    iput-wide v2, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->val:J

    sub-long/2addr v0, v6

    .line 336
    invoke-static {v0, v1}, Lio/github/jaredmdobson/concentus/Inlines;->CapToUInt32(J)J

    move-result-wide v0

    iput-wide v0, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->rng:J

    .line 337
    invoke-virtual {p0}, Lio/github/jaredmdobson/concentus/EntropyCoder;->dec_normalize()V

    return p2

    :cond_0
    move-wide v0, v6

    goto :goto_0
.end method

.method dec_icdf([SII)I
    .locals 9

    .line 343
    iget-wide v0, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->rng:J

    .line 344
    iget-wide v2, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->val:J

    shr-long v4, v0, p3

    add-int/lit8 p3, p2, -0x1

    :goto_0
    add-int/lit8 p3, p3, 0x1

    .line 349
    aget-short v6, p1, p3

    int-to-long v6, v6

    mul-long v6, v6, v4

    invoke-static {v6, v7}, Lio/github/jaredmdobson/concentus/Inlines;->CapToUInt32(J)J

    move-result-wide v6

    cmp-long v8, v2, v6

    if-ltz v8, :cond_0

    sub-long/2addr v2, v6

    .line 351
    invoke-static {v2, v3}, Lio/github/jaredmdobson/concentus/Inlines;->CapToUInt32(J)J

    move-result-wide v2

    iput-wide v2, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->val:J

    sub-long/2addr v0, v6

    .line 352
    invoke-static {v0, v1}, Lio/github/jaredmdobson/concentus/Inlines;->CapToUInt32(J)J

    move-result-wide v0

    iput-wide v0, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->rng:J

    .line 353
    invoke-virtual {p0}, Lio/github/jaredmdobson/concentus/EntropyCoder;->dec_normalize()V

    sub-int/2addr p3, p2

    return p3

    :cond_0
    move-wide v0, v6

    goto :goto_0
.end method

.method dec_init([BII)V
    .locals 4

    .line 259
    iput-object p1, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->buf:[B

    .line 260
    iput p2, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->buf_ptr:I

    .line 261
    iput p3, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->storage:I

    const/4 p1, 0x0

    .line 262
    iput p1, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->end_offs:I

    const-wide/16 p2, 0x0

    .line 263
    iput-wide p2, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->end_window:J

    .line 264
    iput p1, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->nend_bits:I

    const/16 p2, 0x9

    .line 268
    iput p2, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->nbits_total:I

    .line 270
    iput p1, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->offs:I

    const-wide/16 p2, 0x80

    .line 271
    iput-wide p2, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->rng:J

    .line 272
    invoke-virtual {p0}, Lio/github/jaredmdobson/concentus/EntropyCoder;->read_byte()I

    move-result p2

    iput p2, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->rem:I

    .line 273
    iget-wide v0, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->rng:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    shr-int/lit8 p2, p2, 0x1

    int-to-long p2, p2

    sub-long/2addr v0, p2

    invoke-static {v0, v1}, Lio/github/jaredmdobson/concentus/Inlines;->CapToUInt32(J)J

    move-result-wide p2

    iput-wide p2, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->val:J

    .line 274
    iput p1, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->error:I

    .line 276
    invoke-virtual {p0}, Lio/github/jaredmdobson/concentus/EntropyCoder;->dec_normalize()V

    return-void
.end method

.method dec_normalize()V
    .locals 7

    .line 238
    :goto_0
    iget-wide v0, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->rng:J

    const-wide/32 v2, 0x800000

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 240
    iget v2, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->nbits_total:I

    const/16 v3, 0x8

    add-int/2addr v2, v3

    iput v2, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->nbits_total:I

    shl-long/2addr v0, v3

    .line 241
    invoke-static {v0, v1}, Lio/github/jaredmdobson/concentus/Inlines;->CapToUInt32(J)J

    move-result-wide v0

    iput-wide v0, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->rng:J

    .line 244
    iget v0, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->rem:I

    .line 247
    invoke-virtual {p0}, Lio/github/jaredmdobson/concentus/EntropyCoder;->read_byte()I

    move-result v1

    iput v1, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->rem:I

    shl-int/2addr v0, v3

    or-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x1

    .line 253
    iget-wide v1, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->val:J

    shl-long/2addr v1, v3

    xor-int/lit8 v0, v0, -0x1

    int-to-long v3, v0

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    add-long/2addr v1, v3

    const-wide/32 v3, 0x7fffffff

    and-long/2addr v1, v3

    invoke-static {v1, v2}, Lio/github/jaredmdobson/concentus/Inlines;->CapToUInt32(J)J

    move-result-wide v0

    iput-wide v0, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->val:J

    goto :goto_0

    :cond_0
    return-void
.end method

.method dec_uint(J)J
    .locals 13

    .line 358
    invoke-static {p1, p2}, Lio/github/jaredmdobson/concentus/Inlines;->CapToUInt32(J)J

    move-result-wide v5

    const/4 p1, 0x1

    const-wide/16 v0, 0x1

    cmp-long p2, v5, v0

    if-lez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 363
    :goto_0
    invoke-static {p2}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    sub-long v2, v5, v0

    .line 365
    invoke-static {v2, v3}, Lio/github/jaredmdobson/concentus/Inlines;->EC_ILOG(J)I

    move-result p2

    const/16 v4, 0x8

    if-le p2, v4, :cond_2

    add-int/lit8 p2, p2, -0x8

    shr-long v4, v2, p2

    add-long/2addr v4, v0

    .line 369
    invoke-static {v4, v5}, Lio/github/jaredmdobson/concentus/Inlines;->CapToUInt32(J)J

    move-result-wide v11

    .line 370
    invoke-virtual {p0, v11, v12}, Lio/github/jaredmdobson/concentus/EntropyCoder;->decode(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Lio/github/jaredmdobson/concentus/Inlines;->CapToUInt32(J)J

    move-result-wide v7

    add-long v9, v7, v0

    move-object v6, p0

    .line 371
    invoke-virtual/range {v6 .. v12}, Lio/github/jaredmdobson/concentus/EntropyCoder;->dec_update(JJJ)V

    shl-long v0, v7, p2

    .line 372
    invoke-virtual {p0, p2}, Lio/github/jaredmdobson/concentus/EntropyCoder;->dec_bits(I)I

    move-result p2

    int-to-long v5, p2

    or-long/2addr v0, v5

    invoke-static {v0, v1}, Lio/github/jaredmdobson/concentus/Inlines;->CapToUInt32(J)J

    move-result-wide v0

    cmp-long p2, v0, v2

    if-gtz p2, :cond_1

    return-wide v0

    .line 376
    :cond_1
    iput p1, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->error:I

    return-wide v2

    .line 380
    :cond_2
    invoke-virtual {p0, v5, v6}, Lio/github/jaredmdobson/concentus/EntropyCoder;->decode(J)J

    move-result-wide p1

    invoke-static {p1, p2}, Lio/github/jaredmdobson/concentus/Inlines;->CapToUInt32(J)J

    move-result-wide p1

    add-long/2addr v0, p1

    move-wide v3, v0

    move-object v0, p0

    move-wide v1, p1

    .line 381
    invoke-virtual/range {v0 .. v6}, Lio/github/jaredmdobson/concentus/EntropyCoder;->dec_update(JJJ)V

    return-wide v1
.end method

.method dec_update(JJJ)V
    .locals 3

    .line 293
    invoke-static {p1, p2}, Lio/github/jaredmdobson/concentus/Inlines;->CapToUInt32(J)J

    move-result-wide p1

    .line 294
    invoke-static {p3, p4}, Lio/github/jaredmdobson/concentus/Inlines;->CapToUInt32(J)J

    move-result-wide p3

    .line 295
    invoke-static {p5, p6}, Lio/github/jaredmdobson/concentus/Inlines;->CapToUInt32(J)J

    move-result-wide p5

    .line 296
    iget-wide v0, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->ext:J

    sub-long/2addr p5, p3

    mul-long v0, v0, p5

    invoke-static {v0, v1}, Lio/github/jaredmdobson/concentus/Inlines;->CapToUInt32(J)J

    move-result-wide p5

    .line 297
    iget-wide v0, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->val:J

    sub-long/2addr v0, p5

    iput-wide v0, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->val:J

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 298
    iget-wide p5, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->ext:J

    sub-long/2addr p3, p1

    mul-long p5, p5, p3

    invoke-static {p5, p6}, Lio/github/jaredmdobson/concentus/Inlines;->CapToUInt32(J)J

    move-result-wide p1

    goto :goto_0

    :cond_0
    iget-wide p1, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->rng:J

    sub-long/2addr p1, p5

    :goto_0
    iput-wide p1, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->rng:J

    .line 299
    invoke-virtual {p0}, Lio/github/jaredmdobson/concentus/EntropyCoder;->dec_normalize()V

    return-void
.end method

.method decode(J)J
    .locals 4

    .line 280
    invoke-static {p1, p2}, Lio/github/jaredmdobson/concentus/Inlines;->CapToUInt32(J)J

    move-result-wide p1

    .line 281
    iget-wide v0, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->rng:J

    div-long/2addr v0, p1

    invoke-static {v0, v1}, Lio/github/jaredmdobson/concentus/Inlines;->CapToUInt32(J)J

    move-result-wide v0

    iput-wide v0, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->ext:J

    .line 282
    iget-wide v2, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->val:J

    div-long/2addr v2, v0

    invoke-static {v2, v3}, Lio/github/jaredmdobson/concentus/Inlines;->CapToUInt32(J)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 283
    invoke-static {v0, v1}, Lio/github/jaredmdobson/concentus/Inlines;->CapToUInt32(J)J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lio/github/jaredmdobson/concentus/Inlines;->EC_MINI(JJ)J

    move-result-wide v0

    sub-long/2addr p1, v0

    invoke-static {p1, p2}, Lio/github/jaredmdobson/concentus/Inlines;->CapToUInt32(J)J

    move-result-wide p1

    return-wide p1
.end method

.method decode_bin(I)J
    .locals 8

    .line 287
    iget-wide v0, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->rng:J

    shr-long/2addr v0, p1

    iput-wide v0, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->ext:J

    .line 288
    iget-wide v2, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->val:J

    div-long/2addr v2, v0

    invoke-static {v2, v3}, Lio/github/jaredmdobson/concentus/Inlines;->CapToUInt32(J)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    shl-long v4, v2, p1

    .line 289
    invoke-static {v4, v5}, Lio/github/jaredmdobson/concentus/Inlines;->CapToUInt32(J)J

    move-result-wide v6

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Lio/github/jaredmdobson/concentus/Inlines;->CapToUInt32(J)J

    move-result-wide v0

    invoke-static {v0, v1, v4, v5}, Lio/github/jaredmdobson/concentus/Inlines;->EC_MINI(JJ)J

    move-result-wide v0

    sub-long/2addr v6, v0

    invoke-static {v6, v7}, Lio/github/jaredmdobson/concentus/Inlines;->CapToUInt32(J)J

    move-result-wide v0

    return-wide v0
.end method

.method enc_bit_logp(II)V
    .locals 6

    .line 506
    iget-wide v0, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->rng:J

    .line 507
    iget-wide v2, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->val:J

    shr-long v4, v0, p2

    sub-long/2addr v0, v4

    if-eqz p1, :cond_0

    add-long/2addr v2, v0

    .line 511
    invoke-static {v2, v3}, Lio/github/jaredmdobson/concentus/Inlines;->CapToUInt32(J)J

    move-result-wide v2

    iput-wide v2, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->val:J

    :cond_0
    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move-wide v4, v0

    .line 514
    :goto_0
    iput-wide v4, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->rng:J

    .line 515
    invoke-virtual {p0}, Lio/github/jaredmdobson/concentus/EntropyCoder;->enc_normalize()V

    return-void
.end method

.method enc_bits(JI)V
    .locals 6

    .line 563
    invoke-static {p1, p2}, Lio/github/jaredmdobson/concentus/Inlines;->CapToUInt32(J)J

    move-result-wide p1

    .line 566
    iget-wide v0, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->end_window:J

    .line 567
    iget v2, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->nend_bits:I

    if-lez p3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 568
    :goto_0
    invoke-static {v3}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    add-int v3, v2, p3

    const/16 v4, 0x20

    if-le v3, v4, :cond_2

    .line 572
    :cond_1
    iget v3, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->error:I

    const-wide/16 v4, 0xff

    and-long/2addr v4, v0

    invoke-virtual {p0, v4, v5}, Lio/github/jaredmdobson/concentus/EntropyCoder;->write_byte_at_end(J)I

    move-result v4

    or-int/2addr v3, v4

    iput v3, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->error:I

    const/16 v3, 0x8

    shr-long/2addr v0, v3

    add-int/lit8 v2, v2, -0x8

    if-ge v2, v3, :cond_1

    :cond_2
    shl-long/2addr p1, v2

    .line 578
    invoke-static {p1, p2}, Lio/github/jaredmdobson/concentus/Inlines;->CapToUInt32(J)J

    move-result-wide p1

    or-long/2addr p1, v0

    add-int/2addr v2, p3

    .line 580
    iput-wide p1, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->end_window:J

    .line 581
    iput v2, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->nend_bits:I

    .line 582
    iget p1, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->nbits_total:I

    add-int/2addr p1, p3

    iput p1, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->nbits_total:I

    return-void
.end method

.method enc_carry_out(I)V
    .locals 12

    int-to-long v0, p1

    const-wide/16 v2, 0x1

    const-wide/16 v4, 0xff

    cmp-long v6, v0, v4

    if-eqz v6, :cond_3

    shr-int/lit8 p1, p1, 0x8

    .line 429
    iget v6, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->rem:I

    if-ltz v6, :cond_0

    .line 430
    iget v7, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->error:I

    add-int/2addr v6, p1

    invoke-static {v6}, Lio/github/jaredmdobson/concentus/Inlines;->CapToUInt32(I)J

    move-result-wide v8

    invoke-virtual {p0, v8, v9}, Lio/github/jaredmdobson/concentus/EntropyCoder;->write_byte(J)I

    move-result v6

    or-int/2addr v6, v7

    iput v6, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->error:I

    .line 433
    :cond_0
    iget-wide v6, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->ext:J

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-lez v10, :cond_2

    int-to-long v6, p1

    add-long/2addr v6, v4

    and-long/2addr v6, v4

    .line 437
    :cond_1
    iget p1, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->error:I

    invoke-virtual {p0, v6, v7}, Lio/github/jaredmdobson/concentus/EntropyCoder;->write_byte(J)I

    move-result v10

    or-int/2addr p1, v10

    iput p1, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->error:I

    .line 438
    iget-wide v10, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->ext:J

    sub-long/2addr v10, v2

    iput-wide v10, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->ext:J

    cmp-long p1, v10, v8

    if-gtz p1, :cond_1

    :cond_2
    and-long/2addr v0, v4

    long-to-int p1, v0

    .line 441
    iput p1, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->rem:I

    return-void

    .line 443
    :cond_3
    iget-wide v0, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->ext:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->ext:J

    return-void
.end method

.method enc_done()V
    .locals 19

    move-object/from16 v0, p0

    .line 667
    iget-wide v1, v0, Lio/github/jaredmdobson/concentus/EntropyCoder;->rng:J

    invoke-static {v1, v2}, Lio/github/jaredmdobson/concentus/Inlines;->EC_ILOG(J)I

    move-result v1

    rsub-int/lit8 v2, v1, 0x20

    const-wide/32 v3, 0x7fffffff

    ushr-long v5, v3, v2

    .line 668
    invoke-static {v5, v6}, Lio/github/jaredmdobson/concentus/Inlines;->CapToUInt32(J)J

    move-result-wide v5

    .line 669
    iget-wide v7, v0, Lio/github/jaredmdobson/concentus/EntropyCoder;->val:J

    add-long/2addr v7, v5

    invoke-static {v7, v8}, Lio/github/jaredmdobson/concentus/Inlines;->CapToUInt32(J)J

    move-result-wide v7

    const-wide/16 v9, -0x1

    xor-long v11, v5, v9

    and-long/2addr v7, v11

    invoke-static {v7, v8}, Lio/github/jaredmdobson/concentus/Inlines;->CapToUInt32(J)J

    move-result-wide v7

    or-long v11, v7, v5

    .line 671
    iget-wide v13, v0, Lio/github/jaredmdobson/concentus/EntropyCoder;->val:J

    move-wide v15, v3

    iget-wide v3, v0, Lio/github/jaredmdobson/concentus/EntropyCoder;->rng:J

    add-long/2addr v3, v13

    const/16 v17, 0x1

    cmp-long v18, v11, v3

    if-ltz v18, :cond_0

    rsub-int/lit8 v2, v1, 0x21

    shr-long v3, v5, v17

    add-long/2addr v13, v3

    .line 674
    invoke-static {v13, v14}, Lio/github/jaredmdobson/concentus/Inlines;->CapToUInt32(J)J

    move-result-wide v5

    xor-long/2addr v3, v9

    and-long/2addr v3, v5

    invoke-static {v3, v4}, Lio/github/jaredmdobson/concentus/Inlines;->CapToUInt32(J)J

    move-result-wide v7

    :cond_0
    :goto_0
    const/16 v1, 0x8

    if-lez v2, :cond_1

    const/16 v3, 0x17

    shr-long v3, v7, v3

    long-to-int v4, v3

    .line 678
    invoke-virtual {v0, v4}, Lio/github/jaredmdobson/concentus/EntropyCoder;->enc_carry_out(I)V

    shl-long v3, v7, v1

    and-long/2addr v3, v15

    .line 679
    invoke-static {v3, v4}, Lio/github/jaredmdobson/concentus/Inlines;->CapToUInt32(J)J

    move-result-wide v7

    add-int/lit8 v2, v2, -0x8

    goto :goto_0

    .line 684
    :cond_1
    iget v3, v0, Lio/github/jaredmdobson/concentus/EntropyCoder;->rem:I

    const/4 v4, 0x0

    if-gez v3, :cond_2

    iget-wide v5, v0, Lio/github/jaredmdobson/concentus/EntropyCoder;->ext:J

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-lez v3, :cond_3

    .line 685
    :cond_2
    invoke-virtual {v0, v4}, Lio/github/jaredmdobson/concentus/EntropyCoder;->enc_carry_out(I)V

    .line 689
    :cond_3
    iget-wide v5, v0, Lio/github/jaredmdobson/concentus/EntropyCoder;->end_window:J

    .line 690
    iget v3, v0, Lio/github/jaredmdobson/concentus/EntropyCoder;->nend_bits:I

    :goto_1
    const-wide/16 v7, 0xff

    if-lt v3, v1, :cond_4

    .line 693
    iget v9, v0, Lio/github/jaredmdobson/concentus/EntropyCoder;->error:I

    and-long/2addr v7, v5

    invoke-virtual {v0, v7, v8}, Lio/github/jaredmdobson/concentus/EntropyCoder;->write_byte_at_end(J)I

    move-result v7

    or-int/2addr v7, v9

    iput v7, v0, Lio/github/jaredmdobson/concentus/EntropyCoder;->error:I

    shr-long/2addr v5, v1

    add-int/lit8 v3, v3, -0x8

    goto :goto_1

    .line 699
    :cond_4
    iget v1, v0, Lio/github/jaredmdobson/concentus/EntropyCoder;->error:I

    if-nez v1, :cond_7

    .line 700
    iget-object v1, v0, Lio/github/jaredmdobson/concentus/EntropyCoder;->buf:[B

    iget v9, v0, Lio/github/jaredmdobson/concentus/EntropyCoder;->buf_ptr:I

    iget v10, v0, Lio/github/jaredmdobson/concentus/EntropyCoder;->offs:I

    add-int/2addr v9, v10

    iget v11, v0, Lio/github/jaredmdobson/concentus/EntropyCoder;->storage:I

    sub-int/2addr v11, v10

    iget v10, v0, Lio/github/jaredmdobson/concentus/EntropyCoder;->end_offs:I

    sub-int/2addr v11, v10

    invoke-static {v1, v4, v9, v11}, Lio/github/jaredmdobson/concentus/Arrays;->MemSetWithOffset([BBII)V

    if-lez v3, :cond_7

    .line 703
    iget v1, v0, Lio/github/jaredmdobson/concentus/EntropyCoder;->end_offs:I

    iget v4, v0, Lio/github/jaredmdobson/concentus/EntropyCoder;->storage:I

    const/4 v9, -0x1

    if-lt v1, v4, :cond_5

    .line 704
    iput v9, v0, Lio/github/jaredmdobson/concentus/EntropyCoder;->error:I

    return-void

    :cond_5
    neg-int v2, v2

    .line 709
    iget v10, v0, Lio/github/jaredmdobson/concentus/EntropyCoder;->offs:I

    add-int/2addr v10, v1

    if-lt v10, v4, :cond_6

    if-ge v2, v3, :cond_6

    shl-int v1, v17, v2

    add-int/lit8 v1, v1, -0x1

    int-to-long v1, v1

    and-long/2addr v1, v5

    .line 710
    invoke-static {v1, v2}, Lio/github/jaredmdobson/concentus/Inlines;->CapToUInt32(J)J

    move-result-wide v5

    .line 711
    iput v9, v0, Lio/github/jaredmdobson/concentus/EntropyCoder;->error:I

    .line 714
    :cond_6
    iget v1, v0, Lio/github/jaredmdobson/concentus/EntropyCoder;->buf_ptr:I

    iget v2, v0, Lio/github/jaredmdobson/concentus/EntropyCoder;->storage:I

    add-int/2addr v1, v2

    iget v2, v0, Lio/github/jaredmdobson/concentus/EntropyCoder;->end_offs:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    .line 715
    iget-object v2, v0, Lio/github/jaredmdobson/concentus/EntropyCoder;->buf:[B

    aget-byte v3, v2, v1

    and-long/2addr v5, v7

    long-to-int v4, v5

    int-to-byte v4, v4

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    :cond_7
    return-void
.end method

.method enc_icdf(I[SI)V
    .locals 8

    .line 519
    iget-wide v0, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->rng:J

    shr-long/2addr v0, p3

    invoke-static {v0, v1}, Lio/github/jaredmdobson/concentus/Inlines;->CapToUInt32(J)J

    move-result-wide v0

    if-lez p1, :cond_0

    .line 521
    iget-wide v2, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->val:J

    iget-wide v4, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->rng:J

    add-int/lit8 p3, p1, -0x1

    aget-short v6, p2, p3

    int-to-long v6, v6

    mul-long v6, v6, v0

    invoke-static {v6, v7}, Lio/github/jaredmdobson/concentus/Inlines;->CapToUInt32(J)J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Lio/github/jaredmdobson/concentus/Inlines;->CapToUInt32(J)J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->val:J

    .line 522
    aget-short p3, p2, p3

    aget-short p1, p2, p1

    sub-int/2addr p3, p1

    invoke-static {p3}, Lio/github/jaredmdobson/concentus/Inlines;->CapToUInt32(I)J

    move-result-wide p1

    mul-long v0, v0, p1

    iput-wide v0, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->rng:J

    goto :goto_0

    .line 524
    :cond_0
    iget-wide v2, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->rng:J

    aget-short p1, p2, p1

    int-to-long p1, p1

    mul-long v0, v0, p1

    sub-long/2addr v2, v0

    invoke-static {v2, v3}, Lio/github/jaredmdobson/concentus/Inlines;->CapToUInt32(J)J

    move-result-wide p1

    iput-wide p1, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->rng:J

    .line 526
    :goto_0
    invoke-virtual {p0}, Lio/github/jaredmdobson/concentus/EntropyCoder;->enc_normalize()V

    return-void
.end method

.method enc_icdf(I[SII)V
    .locals 8

    .line 530
    iget-wide v0, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->rng:J

    shr-long/2addr v0, p4

    invoke-static {v0, v1}, Lio/github/jaredmdobson/concentus/Inlines;->CapToUInt32(J)J

    move-result-wide v0

    if-lez p1, :cond_0

    .line 532
    iget-wide v2, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->val:J

    iget-wide v4, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->rng:J

    add-int/2addr p3, p1

    add-int/lit8 p1, p3, -0x1

    aget-short p4, p2, p1

    int-to-long v6, p4

    mul-long v6, v6, v0

    invoke-static {v6, v7}, Lio/github/jaredmdobson/concentus/Inlines;->CapToUInt32(J)J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Lio/github/jaredmdobson/concentus/Inlines;->CapToUInt32(J)J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->val:J

    .line 533
    aget-short p1, p2, p1

    aget-short p2, p2, p3

    sub-int/2addr p1, p2

    invoke-static {p1}, Lio/github/jaredmdobson/concentus/Inlines;->CapToUInt32(I)J

    move-result-wide p1

    mul-long v0, v0, p1

    invoke-static {v0, v1}, Lio/github/jaredmdobson/concentus/Inlines;->CapToUInt32(J)J

    move-result-wide p1

    iput-wide p1, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->rng:J

    goto :goto_0

    .line 535
    :cond_0
    iget-wide v2, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->rng:J

    add-int/2addr p3, p1

    aget-short p1, p2, p3

    int-to-long p1, p1

    mul-long v0, v0, p1

    sub-long/2addr v2, v0

    invoke-static {v2, v3}, Lio/github/jaredmdobson/concentus/Inlines;->CapToUInt32(J)J

    move-result-wide p1

    iput-wide p1, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->rng:J

    .line 537
    :goto_0
    invoke-virtual {p0}, Lio/github/jaredmdobson/concentus/EntropyCoder;->enc_normalize()V

    return-void
.end method

.method enc_init([BII)V
    .locals 4

    .line 459
    iput-object p1, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->buf:[B

    .line 460
    iput p2, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->buf_ptr:I

    const/4 p1, 0x0

    .line 461
    iput p1, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->end_offs:I

    const-wide/16 v0, 0x0

    .line 462
    iput-wide v0, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->end_window:J

    .line 463
    iput p1, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->nend_bits:I

    const/16 p2, 0x21

    .line 465
    iput p2, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->nbits_total:I

    .line 466
    iput p1, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->offs:I

    const-wide v2, 0x80000000L

    .line 467
    invoke-static {v2, v3}, Lio/github/jaredmdobson/concentus/Inlines;->CapToUInt32(J)J

    move-result-wide v2

    iput-wide v2, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->rng:J

    const/4 p2, -0x1

    .line 468
    iput p2, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->rem:I

    .line 469
    iput-wide v0, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->val:J

    .line 470
    iput-wide v0, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->ext:J

    .line 471
    iput p3, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->storage:I

    .line 472
    iput p1, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->error:I

    return-void
.end method

.method enc_normalize()V
    .locals 5

    .line 449
    :goto_0
    iget-wide v0, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->rng:J

    const-wide/32 v2, 0x800000

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 450
    iget-wide v0, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->val:J

    const/16 v2, 0x17

    shr-long/2addr v0, v2

    long-to-int v1, v0

    invoke-virtual {p0, v1}, Lio/github/jaredmdobson/concentus/EntropyCoder;->enc_carry_out(I)V

    .line 452
    iget-wide v0, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->val:J

    const/16 v2, 0x8

    shl-long/2addr v0, v2

    const-wide/32 v3, 0x7fffffff

    and-long/2addr v0, v3

    invoke-static {v0, v1}, Lio/github/jaredmdobson/concentus/Inlines;->CapToUInt32(J)J

    move-result-wide v0

    iput-wide v0, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->val:J

    .line 453
    iget-wide v0, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->rng:J

    shl-long/2addr v0, v2

    invoke-static {v0, v1}, Lio/github/jaredmdobson/concentus/Inlines;->CapToUInt32(J)J

    move-result-wide v0

    iput-wide v0, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->rng:J

    .line 454
    iget v0, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->nbits_total:I

    add-int/2addr v0, v2

    iput v0, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->nbits_total:I

    goto :goto_0

    :cond_0
    return-void
.end method

.method enc_patch_initial_bits(JI)V
    .locals 10

    const/16 v0, 0x8

    const/4 v1, 0x1

    if-gt p3, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 588
    :goto_0
    invoke-static {v0}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    rsub-int/lit8 v0, p3, 0x8

    shl-int v2, v1, p3

    sub-int/2addr v2, v1

    shl-int v1, v2, v0

    int-to-long v1, v1

    .line 592
    iget v3, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->offs:I

    const-wide/16 v4, -0x1

    if-lez v3, :cond_1

    .line 594
    iget-object p3, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->buf:[B

    iget v3, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->buf_ptr:I

    aget-byte v6, p3, v3

    int-to-long v6, v6

    xor-long/2addr v1, v4

    and-long/2addr v1, v6

    shl-long/2addr p1, v0

    invoke-static {p1, p2}, Lio/github/jaredmdobson/concentus/Inlines;->CapToUInt32(J)J

    move-result-wide p1

    or-long/2addr p1, v1

    long-to-int p2, p1

    int-to-byte p1, p2

    aput-byte p1, p3, v3

    return-void

    .line 595
    :cond_1
    iget v3, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->rem:I

    if-ltz v3, :cond_2

    int-to-long v6, v3

    xor-long/2addr v1, v4

    and-long/2addr v1, v6

    or-long/2addr p1, v1

    .line 597
    invoke-static {p1, p2}, Lio/github/jaredmdobson/concentus/Inlines;->CapToUInt32(J)J

    move-result-wide p1

    shl-long/2addr p1, v0

    invoke-static {p1, p2}, Lio/github/jaredmdobson/concentus/Inlines;->CapToUInt32(J)J

    move-result-wide p1

    long-to-int p2, p1

    iput p2, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->rem:I

    return-void

    .line 598
    :cond_2
    iget-wide v6, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->rng:J

    const-wide v8, 0x80000000L

    shr-long/2addr v8, p3

    cmp-long v0, v6, v8

    if-gtz v0, :cond_3

    .line 600
    iget-wide v6, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->val:J

    const/16 v0, 0x17

    shl-long v0, v1, v0

    xor-long/2addr v0, v4

    and-long/2addr v0, v6

    .line 601
    invoke-static {p1, p2}, Lio/github/jaredmdobson/concentus/Inlines;->CapToUInt32(J)J

    move-result-wide p1

    rsub-int/lit8 p3, p3, 0x1f

    shl-long/2addr p1, p3

    invoke-static {p1, p2}, Lio/github/jaredmdobson/concentus/Inlines;->CapToUInt32(J)J

    move-result-wide p1

    or-long/2addr p1, v0

    .line 600
    invoke-static {p1, p2}, Lio/github/jaredmdobson/concentus/Inlines;->CapToUInt32(J)J

    move-result-wide p1

    iput-wide p1, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->val:J

    return-void

    :cond_3
    const/4 p1, -0x1

    .line 604
    iput p1, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->error:I

    return-void
.end method

.method enc_shrink(I)V
    .locals 5

    .line 609
    iget v0, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->offs:I

    iget v1, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->end_offs:I

    add-int/2addr v0, v1

    if-gt v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 610
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->buf:[B

    iget v1, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->buf_ptr:I

    add-int v2, v1, p1

    iget v3, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->end_offs:I

    sub-int/2addr v2, v3

    iget v4, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->storage:I

    add-int/2addr v1, v4

    sub-int/2addr v1, v3

    invoke-static {v0, v2, v1, v3}, Lio/github/jaredmdobson/concentus/Arrays;->MemMove([BIII)V

    .line 611
    iput p1, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->storage:I

    return-void
.end method

.method enc_uint(JJ)V
    .locals 17

    .line 541
    invoke-static/range {p1 .. p2}, Lio/github/jaredmdobson/concentus/Inlines;->CapToUInt32(J)J

    move-result-wide v1

    .line 542
    invoke-static/range {p3 .. p4}, Lio/github/jaredmdobson/concentus/Inlines;->CapToUInt32(J)J

    move-result-wide v5

    const/4 v0, 0x1

    const-wide/16 v3, 0x1

    cmp-long v7, v5, v3

    if-lez v7, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    .line 548
    :goto_0
    invoke-static {v7}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    sub-long v7, v5, v3

    .line 550
    invoke-static {v7, v8}, Lio/github/jaredmdobson/concentus/Inlines;->EC_ILOG(J)I

    move-result v9

    const/16 v10, 0x8

    if-le v9, v10, :cond_1

    add-int/lit8 v9, v9, -0x8

    shr-long v5, v7, v9

    add-long/2addr v5, v3

    .line 553
    invoke-static {v5, v6}, Lio/github/jaredmdobson/concentus/Inlines;->CapToUInt32(J)J

    move-result-wide v15

    shr-long v5, v1, v9

    .line 554
    invoke-static {v5, v6}, Lio/github/jaredmdobson/concentus/Inlines;->CapToUInt32(J)J

    move-result-wide v11

    add-long v13, v11, v3

    move-object/from16 v10, p0

    .line 555
    invoke-virtual/range {v10 .. v16}, Lio/github/jaredmdobson/concentus/EntropyCoder;->encode(JJJ)V

    shl-int v3, v0, v9

    sub-int/2addr v3, v0

    .line 556
    invoke-static {v3}, Lio/github/jaredmdobson/concentus/Inlines;->CapToUInt32(I)J

    move-result-wide v3

    and-long/2addr v1, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2, v9}, Lio/github/jaredmdobson/concentus/EntropyCoder;->enc_bits(JI)V

    return-void

    :cond_1
    move-object/from16 v0, p0

    add-long/2addr v3, v1

    .line 558
    invoke-virtual/range {v0 .. v6}, Lio/github/jaredmdobson/concentus/EntropyCoder;->encode(JJJ)V

    return-void
.end method

.method encode(JJJ)V
    .locals 6

    .line 476
    invoke-static {p1, p2}, Lio/github/jaredmdobson/concentus/Inlines;->CapToUInt32(J)J

    move-result-wide p1

    .line 477
    invoke-static {p3, p4}, Lio/github/jaredmdobson/concentus/Inlines;->CapToUInt32(J)J

    move-result-wide p3

    .line 478
    invoke-static {p5, p6}, Lio/github/jaredmdobson/concentus/Inlines;->CapToUInt32(J)J

    move-result-wide p5

    .line 479
    iget-wide v0, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->rng:J

    div-long/2addr v0, p5

    invoke-static {v0, v1}, Lio/github/jaredmdobson/concentus/Inlines;->CapToUInt32(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-lez v4, :cond_0

    .line 481
    iget-wide v2, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->val:J

    iget-wide v4, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->rng:J

    sub-long/2addr p5, p1

    mul-long p5, p5, v0

    sub-long/2addr v4, p5

    invoke-static {v4, v5}, Lio/github/jaredmdobson/concentus/Inlines;->CapToUInt32(J)J

    move-result-wide p5

    add-long/2addr v2, p5

    iput-wide v2, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->val:J

    sub-long/2addr p3, p1

    mul-long v0, v0, p3

    .line 482
    invoke-static {v0, v1}, Lio/github/jaredmdobson/concentus/Inlines;->CapToUInt32(J)J

    move-result-wide p1

    iput-wide p1, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->rng:J

    goto :goto_0

    .line 484
    :cond_0
    iget-wide p1, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->rng:J

    sub-long/2addr p5, p3

    mul-long v0, v0, p5

    sub-long/2addr p1, v0

    invoke-static {p1, p2}, Lio/github/jaredmdobson/concentus/Inlines;->CapToUInt32(J)J

    move-result-wide p1

    iput-wide p1, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->rng:J

    .line 487
    :goto_0
    invoke-virtual {p0}, Lio/github/jaredmdobson/concentus/EntropyCoder;->enc_normalize()V

    return-void
.end method

.method encode_bin(JJI)V
    .locals 9

    .line 491
    invoke-static {p1, p2}, Lio/github/jaredmdobson/concentus/Inlines;->CapToUInt32(J)J

    move-result-wide p1

    .line 492
    invoke-static {p3, p4}, Lio/github/jaredmdobson/concentus/Inlines;->CapToUInt32(J)J

    move-result-wide p3

    .line 493
    iget-wide v0, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->rng:J

    shr-long/2addr v0, p5

    invoke-static {v0, v1}, Lio/github/jaredmdobson/concentus/Inlines;->CapToUInt32(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    cmp-long v5, p1, v2

    if-lez v5, :cond_0

    .line 495
    iget-wide v2, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->val:J

    iget-wide v5, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->rng:J

    shl-int p5, v4, p5

    int-to-long v7, p5

    sub-long/2addr v7, p1

    mul-long v7, v7, v0

    sub-long/2addr v5, v7

    invoke-static {v5, v6}, Lio/github/jaredmdobson/concentus/Inlines;->CapToUInt32(J)J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Lio/github/jaredmdobson/concentus/Inlines;->CapToUInt32(J)J

    move-result-wide v2

    iput-wide v2, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->val:J

    sub-long/2addr p3, p1

    mul-long v0, v0, p3

    .line 496
    invoke-static {v0, v1}, Lio/github/jaredmdobson/concentus/Inlines;->CapToUInt32(J)J

    move-result-wide p1

    iput-wide p1, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->rng:J

    goto :goto_0

    .line 498
    :cond_0
    iget-wide p1, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->rng:J

    shl-int p5, v4, p5

    int-to-long v2, p5

    sub-long/2addr v2, p3

    mul-long v0, v0, v2

    sub-long/2addr p1, v0

    invoke-static {p1, p2}, Lio/github/jaredmdobson/concentus/Inlines;->CapToUInt32(J)J

    move-result-wide p1

    iput-wide p1, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->rng:J

    .line 501
    :goto_0
    invoke-virtual {p0}, Lio/github/jaredmdobson/concentus/EntropyCoder;->enc_normalize()V

    return-void
.end method

.method get_buffer()[B
    .locals 5

    .line 197
    iget v0, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->storage:I

    new-array v1, v0, [B

    .line 198
    iget-object v2, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->buf:[B

    iget v3, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->buf_ptr:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method get_error()I
    .locals 1

    .line 619
    iget v0, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->error:I

    return v0
.end method

.method range_bytes()I
    .locals 1

    .line 615
    iget v0, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->offs:I

    return v0
.end method

.method read_byte()I
    .locals 4

    .line 207
    iget v0, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->offs:I

    iget v1, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->storage:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->buf:[B

    iget v2, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->buf_ptr:I

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->offs:I

    add-int/2addr v2, v0

    aget-byte v0, v1, v2

    invoke-static {v0}, Lio/github/jaredmdobson/concentus/Inlines;->SignedByteToUnsignedInt(B)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method read_byte_from_end()I
    .locals 4

    .line 211
    iget v0, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->end_offs:I

    iget v1, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->storage:I

    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->buf:[B

    iget v3, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->buf_ptr:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->end_offs:I

    sub-int/2addr v1, v0

    add-int/2addr v3, v1

    aget-byte v0, v2, v3

    .line 212
    invoke-static {v0}, Lio/github/jaredmdobson/concentus/Inlines;->SignedByteToUnsignedInt(B)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method tell()I
    .locals 3

    .line 632
    iget v0, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->nbits_total:I

    iget-wide v1, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->rng:J

    invoke-static {v1, v2}, Lio/github/jaredmdobson/concentus/Inlines;->EC_ILOG(J)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method tell_frac()I
    .locals 7

    .line 650
    iget v0, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->nbits_total:I

    shl-int/lit8 v0, v0, 0x3

    .line 651
    iget-wide v1, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->rng:J

    invoke-static {v1, v2}, Lio/github/jaredmdobson/concentus/Inlines;->EC_ILOG(J)I

    move-result v1

    .line 652
    iget-wide v2, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->rng:J

    add-int/lit8 v4, v1, -0x10

    shr-long/2addr v2, v4

    long-to-int v3, v2

    shr-int/lit8 v2, v3, 0xc

    add-int/lit8 v2, v2, -0x8

    .line 653
    invoke-static {v2}, Lio/github/jaredmdobson/concentus/Inlines;->CapToUInt32(I)J

    move-result-wide v4

    .line 654
    sget-object v2, Lio/github/jaredmdobson/concentus/EntropyCoder;->correction:[I

    long-to-int v6, v4

    aget v2, v2, v6

    if-le v3, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    int-to-long v2, v2

    add-long/2addr v4, v2

    invoke-static {v4, v5}, Lio/github/jaredmdobson/concentus/Inlines;->CapToUInt32(J)J

    move-result-wide v2

    shl-int/lit8 v1, v1, 0x3

    int-to-long v4, v1

    add-long/2addr v4, v2

    long-to-int v1, v4

    sub-int/2addr v0, v1

    return v0
.end method

.method write_buffer([BIII)V
    .locals 2

    .line 203
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->buf:[B

    iget v1, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->buf_ptr:I

    add-int/2addr v1, p3

    invoke-static {p1, p2, v0, v1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method write_byte(J)I
    .locals 5

    .line 216
    iget v0, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->offs:I

    iget v1, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->end_offs:I

    add-int/2addr v1, v0

    iget v2, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->storage:I

    if-lt v1, v2, :cond_0

    const/4 p1, -0x1

    return p1

    .line 219
    :cond_0
    iget-object v1, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->buf:[B

    iget v2, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->buf_ptr:I

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->offs:I

    add-int/2addr v2, v0

    const-wide/16 v3, 0xff

    and-long/2addr p1, v3

    long-to-int p2, p1

    int-to-byte p1, p2

    aput-byte p1, v1, v2

    const/4 p1, 0x0

    return p1
.end method

.method write_byte_at_end(J)I
    .locals 4

    .line 224
    iget v0, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->offs:I

    iget v1, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->end_offs:I

    add-int/2addr v0, v1

    iget v2, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->storage:I

    if-lt v0, v2, :cond_0

    const/4 p1, -0x1

    return p1

    .line 228
    :cond_0
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->buf:[B

    iget v3, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->buf_ptr:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lio/github/jaredmdobson/concentus/EntropyCoder;->end_offs:I

    sub-int/2addr v2, v1

    add-int/2addr v3, v2

    const-wide/16 v1, 0xff

    and-long/2addr p1, v1

    long-to-int p2, p1

    int-to-byte p1, p2

    aput-byte p1, v0, v3

    const/4 p1, 0x0

    return p1
.end method
