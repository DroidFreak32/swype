.class public Lcom/nuance/connect/util/IntegerUtils;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static arrayCompare([I[I)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    array-length v3, p0

    array-length v2, p1

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_0

    aget v4, p0, v2

    aget v5, p1, v2

    if-eq v4, v5, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method
