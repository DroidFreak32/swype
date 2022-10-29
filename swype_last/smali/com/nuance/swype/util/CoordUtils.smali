.class public final Lcom/nuance/swype/util/CoordUtils;
.super Ljava/lang/Object;
.source "CoordUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/util/CoordUtils$CoordMapper;
    }
.end annotation


# direct methods
.method public static getWindowPos(Landroid/view/View;)[I
    .registers 3
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 1079
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 36
    .local v0, "out":[I
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 37
    return-object v0
.end method

.method public static newInstance(II)[I
    .registers 4
    .param p0, "x"    # I
    .param p1, "y"    # I

    .prologue
    .line 83
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 84
    .local v0, "out":[I
    invoke-static {v0, p0, p1}, Lcom/nuance/swype/util/CoordUtils;->set([III)V

    .line 85
    return-object v0
.end method

.method private static set([III)V
    .registers 4
    .param p0, "coords"    # [I
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 97
    const/4 v0, 0x0

    aput p1, p0, v0

    .line 98
    const/4 v0, 0x1

    aput p2, p0, v0

    .line 99
    return-void
.end method

.method public static subtract([I[I[I)V
    .registers 6
    .param p0, "first"    # [I
    .param p1, "second"    # [I
    .param p2, "result"    # [I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 110
    .line 1089
    aget v0, p0, v1

    .line 2089
    aget v1, p1, v1

    .line 110
    sub-int/2addr v0, v1

    .line 2093
    aget v1, p0, v2

    .line 3093
    aget v2, p1, v2

    .line 110
    sub-int/2addr v1, v2

    invoke-static {p2, v0, v1}, Lcom/nuance/swype/util/CoordUtils;->set([III)V

    .line 111
    return-void
.end method
