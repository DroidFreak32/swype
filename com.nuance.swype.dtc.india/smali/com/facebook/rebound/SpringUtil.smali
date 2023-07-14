.class public Lcom/facebook/rebound/SpringUtil;
.super Ljava/lang/Object;
.source "SpringUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clamp(DDD)D
    .locals 2
    .param p0, "value"    # D
    .param p2, "low"    # D
    .param p4, "high"    # D

    .prologue
    .line 44
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    invoke-static {v0, v1, p4, p5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static mapValueFromRangeToRange(DDDDD)D
    .locals 8
    .param p0, "value"    # D
    .param p2, "fromLow"    # D
    .param p4, "fromHigh"    # D
    .param p6, "toLow"    # D
    .param p8, "toHigh"    # D

    .prologue
    .line 30
    sub-double v0, p4, p2

    .line 31
    .local v0, "fromRangeSize":D
    sub-double v2, p8, p6

    .line 32
    .local v2, "toRangeSize":D
    sub-double v6, p0, p2

    div-double v4, v6, v0

    .line 33
    .local v4, "valueScale":D
    mul-double v6, v4, v2

    add-double/2addr v6, p6

    return-wide v6
.end method
