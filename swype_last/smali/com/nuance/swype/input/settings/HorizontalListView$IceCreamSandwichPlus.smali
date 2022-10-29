.class final Lcom/nuance/swype/input/settings/HorizontalListView$IceCreamSandwichPlus;
.super Ljava/lang/Object;
.source "HorizontalListView.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/settings/HorizontalListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "IceCreamSandwichPlus"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 1241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurrVelocity(Landroid/widget/Scroller;)F
    .registers 2
    .param p0, "scroller"    # Landroid/widget/Scroller;

    .prologue
    .line 1244
    invoke-virtual {p0}, Landroid/widget/Scroller;->getCurrVelocity()F

    move-result v0

    return v0
.end method
