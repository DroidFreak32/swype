.class Landroid/support/v4/view/MotionEventCompat$GingerbreadMotionEventVersionImpl;
.super Landroid/support/v4/view/MotionEventCompat$EclairMotionEventVersionImpl;
.source "MotionEventCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/MotionEventCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GingerbreadMotionEventVersionImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 131
    invoke-direct {p0}, Landroid/support/v4/view/MotionEventCompat$EclairMotionEventVersionImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public final getSource(Landroid/view/MotionEvent;)I
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 134
    .line 1026
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    .line 134
    return v0
.end method
