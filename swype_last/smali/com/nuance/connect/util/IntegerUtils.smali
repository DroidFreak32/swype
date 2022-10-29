.class public Lcom/nuance/connect/util/IntegerUtils;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static arrayCompare([I[I)Z
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    if-eqz p0, :cond_9

    if-nez p1, :cond_b

    :cond_9
    move v0, v1

    goto :goto_4

    :cond_b
    array-length v3, p0

    array-length v2, p1

    if-eq v2, v3, :cond_11

    move v0, v1

    goto :goto_4

    :cond_11
    move v2, v1

    :goto_12
    if-ge v2, v3, :cond_4

    aget v4, p0, v2

    aget v5, p1, v2

    if-eq v4, v5, :cond_1c

    move v0, v1

    goto :goto_4

    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_12
.end method
