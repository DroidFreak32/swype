.class final Lcom/nuance/swype/input/settings/HorizontalListView$HoneycombPlus;
.super Ljava/lang/Object;
.source "HorizontalListView.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/settings/HorizontalListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "HoneycombPlus"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1325
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 1326
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Should not get to HoneycombPlus class unless sdk is >= 11!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1328
    :cond_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setFriction(Landroid/widget/Scroller;F)V
    .locals 0
    .param p0, "scroller"    # Landroid/widget/Scroller;
    .param p1, "friction"    # F

    .prologue
    .line 1332
    if-eqz p0, :cond_0

    .line 1333
    invoke-virtual {p0, p1}, Landroid/widget/Scroller;->setFriction(F)V

    .line 1335
    :cond_0
    return-void
.end method
