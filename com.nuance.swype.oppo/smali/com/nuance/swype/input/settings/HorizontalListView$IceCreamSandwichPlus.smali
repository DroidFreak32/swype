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
    accessFlags = 0x18
    name = "IceCreamSandwichPlus"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1342
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    .line 1343
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Should not get to IceCreamSandwichPlus class unless sdk is >= 14!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1345
    :cond_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurrVelocity(Landroid/widget/Scroller;)F
    .locals 1
    .param p0, "scroller"    # Landroid/widget/Scroller;

    .prologue
    .line 1349
    invoke-virtual {p0}, Landroid/widget/Scroller;->getCurrVelocity()F

    move-result v0

    return v0
.end method
