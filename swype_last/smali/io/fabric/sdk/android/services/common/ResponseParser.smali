.class public final Lio/fabric/sdk/android/services/common/ResponseParser;
.super Ljava/lang/Object;
.source "ResponseParser.java"


# direct methods
.method public static parse(I)I
    .registers 4
    .param p0, "statusCode"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 26
    const/16 v2, 0xc8

    if-lt p0, v2, :cond_b

    const/16 v2, 0x12b

    if-gt p0, v2, :cond_b

    .line 36
    :cond_a
    :goto_a
    return v0

    .line 28
    :cond_b
    const/16 v2, 0x12c

    if-lt p0, v2, :cond_15

    const/16 v2, 0x18f

    if-gt p0, v2, :cond_15

    move v0, v1

    .line 29
    goto :goto_a

    .line 30
    :cond_15
    const/16 v2, 0x190

    if-lt p0, v2, :cond_1d

    const/16 v2, 0x1f3

    if-le p0, v2, :cond_a

    .line 32
    :cond_1d
    const/16 v0, 0x1f4

    if-lt p0, v0, :cond_23

    move v0, v1

    .line 33
    goto :goto_a

    :cond_23
    move v0, v1

    .line 36
    goto :goto_a
.end method
