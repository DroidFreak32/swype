.class public Lcom/facebook/rebound/OrigamiValueConverter;
.super Ljava/lang/Object;
.source "OrigamiValueConverter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static frictionFromOrigamiValue(D)D
    .locals 4
    .param p0, "oValue"    # D

    .prologue
    const-wide/16 v0, 0x0

    .line 18
    cmpl-double v2, p0, v0

    if-nez v2, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/high16 v0, 0x4020000000000000L    # 8.0

    sub-double v0, p0, v0

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4039000000000000L    # 25.0

    add-double/2addr v0, v2

    goto :goto_0
.end method

.method public static origamiValueFromFriction(D)D
    .locals 4
    .param p0, "friction"    # D

    .prologue
    const-wide/16 v0, 0x0

    .line 22
    cmpl-double v2, p0, v0

    if-nez v2, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/high16 v0, 0x4039000000000000L    # 25.0

    sub-double v0, p0, v0

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4020000000000000L    # 8.0

    add-double/2addr v0, v2

    goto :goto_0
.end method

.method public static origamiValueFromTension(D)D
    .locals 4
    .param p0, "tension"    # D

    .prologue
    const-wide/16 v0, 0x0

    .line 14
    cmpl-double v2, p0, v0

    if-nez v2, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    const-wide v0, 0x4068400000000000L    # 194.0

    sub-double v0, p0, v0

    const-wide v2, 0x400cf5c28f5c28f6L    # 3.62

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x403e000000000000L    # 30.0

    add-double/2addr v0, v2

    goto :goto_0
.end method

.method public static tensionFromOrigamiValue(D)D
    .locals 4
    .param p0, "oValue"    # D

    .prologue
    const-wide/16 v0, 0x0

    .line 10
    cmpl-double v2, p0, v0

    if-nez v2, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    sub-double v0, p0, v0

    const-wide v2, 0x400cf5c28f5c28f6L    # 3.62

    mul-double/2addr v0, v2

    const-wide v2, 0x4068400000000000L    # 194.0

    add-double/2addr v0, v2

    goto :goto_0
.end method
