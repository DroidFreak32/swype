.class final Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImplIcs;
.super Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImplGingerbread;
.source "ScrollerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/ScrollerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ScrollerCompatImplIcs"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 253
    invoke-direct {p0}, Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImplGingerbread;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCurrVelocity(Ljava/lang/Object;)F
    .registers 3
    .param p1, "scroller"    # Ljava/lang/Object;

    .prologue
    .line 256
    .line 1026
    check-cast p1, Landroid/widget/OverScroller;

    .end local p1    # "scroller":Ljava/lang/Object;
    invoke-virtual {p1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v0

    .line 256
    return v0
.end method
