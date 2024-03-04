.class Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatHCImpl;
.super Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatImpl;
.source "ViewGroupCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewGroupCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewGroupCompatHCImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public final setMotionEventSplittingEnabled$4d3af60(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "group"    # Landroid/view/ViewGroup;

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setMotionEventSplittingEnabled(Z)V

    .line 80
    return-void
.end method
