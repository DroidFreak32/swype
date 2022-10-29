.class Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImplGingerbread;
.super Ljava/lang/Object;
.source "ScrollerCompat.java"

# interfaces
.implements Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/ScrollerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ScrollerCompatImplGingerbread"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final abortAnimation(Ljava/lang/Object;)V
    .registers 2
    .param p1, "scroller"    # Ljava/lang/Object;

    .prologue
    .line 216
    .line 1067
    check-cast p1, Landroid/widget/OverScroller;

    .end local p1    # "scroller":Ljava/lang/Object;
    invoke-virtual {p1}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 217
    return-void
.end method

.method public final computeScrollOffset(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "scroller"    # Ljava/lang/Object;

    .prologue
    .line 186
    .line 1043
    check-cast p1, Landroid/widget/OverScroller;

    .end local p1    # "scroller":Ljava/lang/Object;
    invoke-virtual {p1}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    .line 186
    return v0
.end method

.method public final createScroller(Landroid/content/Context;Landroid/view/animation/Interpolator;)Ljava/lang/Object;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 161
    .line 1026
    if-eqz p2, :cond_8

    new-instance v0, Landroid/widget/OverScroller;

    invoke-direct {v0, p1, p2}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    :goto_7
    return-object v0

    :cond_8
    new-instance v0, Landroid/widget/OverScroller;

    invoke-direct {v0, p1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    goto :goto_7
.end method

.method public final fling$26e48b1(Ljava/lang/Object;IIIII)V
    .registers 18
    .param p1, "scroller"    # Ljava/lang/Object;
    .param p2, "startX"    # I
    .param p3, "startY"    # I
    .param p4, "velY"    # I
    .param p5, "maxY"    # I
    .param p6, "overY"    # I

    .prologue
    .line 210
    move-object v0, p1

    .line 1062
    check-cast v0, Landroid/widget/OverScroller;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move v1, p2

    move v2, p3

    move v4, p4

    move/from16 v8, p5

    move/from16 v10, p6

    invoke-virtual/range {v0 .. v10}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 212
    return-void
.end method

.method public final fling$f2fc891(Ljava/lang/Object;IIII)V
    .registers 15
    .param p1, "scroller"    # Ljava/lang/Object;
    .param p2, "velX"    # I
    .param p3, "velY"    # I
    .param p4, "minX"    # I
    .param p5, "maxX"    # I

    .prologue
    const/4 v1, 0x0

    .line 203
    move-object v0, p1

    .line 1057
    check-cast v0, Landroid/widget/OverScroller;

    const/high16 v7, -0x80000000

    const v8, 0x7fffffff

    move v2, v1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v8}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 205
    return-void
.end method

.method public getCurrVelocity(Ljava/lang/Object;)F
    .registers 3
    .param p1, "scroller"    # Ljava/lang/Object;

    .prologue
    .line 181
    const/4 v0, 0x0

    return v0
.end method

.method public final getCurrX(Ljava/lang/Object;)I
    .registers 3
    .param p1, "scroller"    # Ljava/lang/Object;

    .prologue
    .line 171
    .line 1035
    check-cast p1, Landroid/widget/OverScroller;

    .end local p1    # "scroller":Ljava/lang/Object;
    invoke-virtual {p1}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v0

    .line 171
    return v0
.end method

.method public final getCurrY(Ljava/lang/Object;)I
    .registers 3
    .param p1, "scroller"    # Ljava/lang/Object;

    .prologue
    .line 176
    .line 1039
    check-cast p1, Landroid/widget/OverScroller;

    .end local p1    # "scroller":Ljava/lang/Object;
    invoke-virtual {p1}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v0

    .line 176
    return v0
.end method

.method public final getFinalX(Ljava/lang/Object;)I
    .registers 3
    .param p1, "scroller"    # Ljava/lang/Object;

    .prologue
    .line 237
    .line 1084
    check-cast p1, Landroid/widget/OverScroller;

    .end local p1    # "scroller":Ljava/lang/Object;
    invoke-virtual {p1}, Landroid/widget/OverScroller;->getFinalX()I

    move-result v0

    .line 237
    return v0
.end method

.method public final getFinalY(Ljava/lang/Object;)I
    .registers 3
    .param p1, "scroller"    # Ljava/lang/Object;

    .prologue
    .line 242
    .line 1088
    check-cast p1, Landroid/widget/OverScroller;

    .end local p1    # "scroller":Ljava/lang/Object;
    invoke-virtual {p1}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v0

    .line 242
    return v0
.end method

.method public final isFinished(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "scroller"    # Ljava/lang/Object;

    .prologue
    .line 166
    .line 1031
    check-cast p1, Landroid/widget/OverScroller;

    .end local p1    # "scroller":Ljava/lang/Object;
    invoke-virtual {p1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    .line 166
    return v0
.end method

.method public final springBack$2bf03f8b(Ljava/lang/Object;III)Z
    .registers 12
    .param p1, "scroller"    # Ljava/lang/Object;
    .param p2, "startX"    # I
    .param p3, "startY"    # I
    .param p4, "maxY"    # I

    .prologue
    const/4 v3, 0x0

    .line 248
    move-object v0, p1

    .line 1093
    check-cast v0, Landroid/widget/OverScroller;

    move v1, p2

    move v2, p3

    move v4, v3

    move v5, v3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v0

    .line 248
    return v0
.end method

.method public final startScroll(Ljava/lang/Object;IIIII)V
    .registers 13
    .param p1, "scroller"    # Ljava/lang/Object;
    .param p2, "startX"    # I
    .param p3, "startY"    # I
    .param p4, "dx"    # I
    .param p5, "dy"    # I
    .param p6, "duration"    # I

    .prologue
    .line 197
    move-object v0, p1

    .line 1052
    check-cast v0, Landroid/widget/OverScroller;

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 198
    return-void
.end method

.method public final startScroll$364c3051(Ljava/lang/Object;III)V
    .registers 6
    .param p1, "scroller"    # Ljava/lang/Object;
    .param p2, "startX"    # I
    .param p3, "startY"    # I
    .param p4, "dy"    # I

    .prologue
    .line 191
    .line 1047
    check-cast p1, Landroid/widget/OverScroller;

    .end local p1    # "scroller":Ljava/lang/Object;
    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0, p4}, Landroid/widget/OverScroller;->startScroll(IIII)V

    .line 192
    return-void
.end method
