.class final Lcom/jcraft/jzlib/Adler32;
.super Ljava/lang/Object;
.source "Adler32.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static adler32(J[BII)J
    .locals 10
    .param p0, "adler"    # J
    .param p2, "buf"    # [B
    .param p3, "index"    # I
    .param p4, "len"    # I

    .prologue
    .line 45
    if-nez p2, :cond_0

    const-wide/16 v6, 0x1

    .line 82
    :goto_0
    return-wide v6

    .line 47
    :cond_0
    const-wide/32 v6, 0xffff

    and-long v2, p0, v6

    .line 48
    .local v2, "s1":J
    const/16 v6, 0x10

    shr-long v6, p0, v6

    const-wide/32 v8, 0xffff

    and-long v4, v6, v8

    .line 51
    .local v4, "s2":J
    :goto_1
    if-lez p4, :cond_5

    .line 52
    const/16 v6, 0x15b0

    if-ge p4, v6, :cond_1

    move v1, p4

    .line 53
    .local v1, "k":I
    :goto_2
    sub-int/2addr p4, v1

    move v0, p3

    .line 54
    .end local p3    # "index":I
    .local v0, "index":I
    :goto_3
    const/16 v6, 0x10

    if-lt v1, v6, :cond_2

    .line 55
    add-int/lit8 p3, v0, 0x1

    .end local v0    # "index":I
    .restart local p3    # "index":I
    aget-byte v6, p2, v0

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    add-long/2addr v2, v6

    add-long/2addr v4, v2

    .line 56
    add-int/lit8 v0, p3, 0x1

    .end local p3    # "index":I
    .restart local v0    # "index":I
    aget-byte v6, p2, p3

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    add-long/2addr v2, v6

    add-long/2addr v4, v2

    .line 57
    add-int/lit8 p3, v0, 0x1

    .end local v0    # "index":I
    .restart local p3    # "index":I
    aget-byte v6, p2, v0

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    add-long/2addr v2, v6

    add-long/2addr v4, v2

    .line 58
    add-int/lit8 v0, p3, 0x1

    .end local p3    # "index":I
    .restart local v0    # "index":I
    aget-byte v6, p2, p3

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    add-long/2addr v2, v6

    add-long/2addr v4, v2

    .line 59
    add-int/lit8 p3, v0, 0x1

    .end local v0    # "index":I
    .restart local p3    # "index":I
    aget-byte v6, p2, v0

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    add-long/2addr v2, v6

    add-long/2addr v4, v2

    .line 60
    add-int/lit8 v0, p3, 0x1

    .end local p3    # "index":I
    .restart local v0    # "index":I
    aget-byte v6, p2, p3

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    add-long/2addr v2, v6

    add-long/2addr v4, v2

    .line 61
    add-int/lit8 p3, v0, 0x1

    .end local v0    # "index":I
    .restart local p3    # "index":I
    aget-byte v6, p2, v0

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    add-long/2addr v2, v6

    add-long/2addr v4, v2

    .line 62
    add-int/lit8 v0, p3, 0x1

    .end local p3    # "index":I
    .restart local v0    # "index":I
    aget-byte v6, p2, p3

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    add-long/2addr v2, v6

    add-long/2addr v4, v2

    .line 63
    add-int/lit8 p3, v0, 0x1

    .end local v0    # "index":I
    .restart local p3    # "index":I
    aget-byte v6, p2, v0

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    add-long/2addr v2, v6

    add-long/2addr v4, v2

    .line 64
    add-int/lit8 v0, p3, 0x1

    .end local p3    # "index":I
    .restart local v0    # "index":I
    aget-byte v6, p2, p3

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    add-long/2addr v2, v6

    add-long/2addr v4, v2

    .line 65
    add-int/lit8 p3, v0, 0x1

    .end local v0    # "index":I
    .restart local p3    # "index":I
    aget-byte v6, p2, v0

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    add-long/2addr v2, v6

    add-long/2addr v4, v2

    .line 66
    add-int/lit8 v0, p3, 0x1

    .end local p3    # "index":I
    .restart local v0    # "index":I
    aget-byte v6, p2, p3

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    add-long/2addr v2, v6

    add-long/2addr v4, v2

    .line 67
    add-int/lit8 p3, v0, 0x1

    .end local v0    # "index":I
    .restart local p3    # "index":I
    aget-byte v6, p2, v0

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    add-long/2addr v2, v6

    add-long/2addr v4, v2

    .line 68
    add-int/lit8 v0, p3, 0x1

    .end local p3    # "index":I
    .restart local v0    # "index":I
    aget-byte v6, p2, p3

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    add-long/2addr v2, v6

    add-long/2addr v4, v2

    .line 69
    add-int/lit8 p3, v0, 0x1

    .end local v0    # "index":I
    .restart local p3    # "index":I
    aget-byte v6, p2, v0

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    add-long/2addr v2, v6

    add-long/2addr v4, v2

    .line 70
    add-int/lit8 v0, p3, 0x1

    .end local p3    # "index":I
    .restart local v0    # "index":I
    aget-byte v6, p2, p3

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    add-long/2addr v2, v6

    add-long/2addr v4, v2

    .line 71
    add-int/lit8 v1, v1, -0x10

    goto/16 :goto_3

    .line 52
    .end local v0    # "index":I
    .end local v1    # "k":I
    .restart local p3    # "index":I
    :cond_1
    const/16 v1, 0x15b0

    goto/16 :goto_2

    .line 73
    .end local p3    # "index":I
    .restart local v0    # "index":I
    .restart local v1    # "k":I
    :cond_2
    if-eqz v1, :cond_4

    :cond_3
    move p3, v0

    .line 75
    .end local v0    # "index":I
    .restart local p3    # "index":I
    add-int/lit8 v0, p3, 0x1

    .end local p3    # "index":I
    .restart local v0    # "index":I
    aget-byte v6, p2, p3

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    add-long/2addr v2, v6

    add-long/2addr v4, v2

    .line 77
    add-int/lit8 v1, v1, -0x1

    if-nez v1, :cond_3

    :cond_4
    move p3, v0

    .line 79
    .end local v0    # "index":I
    .restart local p3    # "index":I
    const-wide/32 v6, 0xfff1

    rem-long/2addr v2, v6

    .line 80
    const-wide/32 v6, 0xfff1

    rem-long/2addr v4, v6

    goto/16 :goto_1

    .line 82
    .end local v1    # "k":I
    :cond_5
    const/16 v6, 0x10

    shl-long v6, v4, v6

    or-long/2addr v6, v2

    goto/16 :goto_0
.end method
