.class Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatHCImpl;
.super Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatStubImpl;
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
    .registers 1

    .prologue
    .line 95
    invoke-direct {p0}, Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatStubImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public final setMotionEventSplittingEnabled$4d3af60(Landroid/view/ViewGroup;)V
    .registers 3
    .param p1, "group"    # Landroid/view/ViewGroup;

    .prologue
    .line 98
    .line 1027
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setMotionEventSplittingEnabled(Z)V

    .line 99
    return-void
.end method
