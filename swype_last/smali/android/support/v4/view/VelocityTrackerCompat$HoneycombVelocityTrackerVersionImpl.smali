.class final Landroid/support/v4/view/VelocityTrackerCompat$HoneycombVelocityTrackerVersionImpl;
.super Ljava/lang/Object;
.source "VelocityTrackerCompat.java"

# interfaces
.implements Landroid/support/v4/view/VelocityTrackerCompat$VelocityTrackerVersionImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/VelocityTrackerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HoneycombVelocityTrackerVersionImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getXVelocity(Landroid/view/VelocityTracker;I)F
    .registers 4
    .param p1, "tracker"    # Landroid/view/VelocityTracker;
    .param p2, "pointerId"    # I

    .prologue
    .line 54
    .line 1026
    invoke-virtual {p1, p2}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    .line 54
    return v0
.end method

.method public final getYVelocity(Landroid/view/VelocityTracker;I)F
    .registers 4
    .param p1, "tracker"    # Landroid/view/VelocityTracker;
    .param p2, "pointerId"    # I

    .prologue
    .line 58
    .line 1029
    invoke-virtual {p1, p2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v0

    .line 58
    return v0
.end method
