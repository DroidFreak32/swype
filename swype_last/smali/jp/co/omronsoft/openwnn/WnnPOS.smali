.class public Ljp/co/omronsoft/openwnn/WnnPOS;
.super Ljava/lang/Object;
.source "WnnPOS.java"


# instance fields
.field public left:I

.field public right:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput v0, p0, Ljp/co/omronsoft/openwnn/WnnPOS;->left:I

    .line 30
    iput v0, p0, Ljp/co/omronsoft/openwnn/WnnPOS;->right:I

    .line 36
    return-void
.end method

.method public constructor <init>(II)V
    .registers 4
    .param p1, "left"    # I
    .param p2, "right"    # I

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput v0, p0, Ljp/co/omronsoft/openwnn/WnnPOS;->left:I

    .line 30
    iput v0, p0, Ljp/co/omronsoft/openwnn/WnnPOS;->right:I

    .line 47
    iput p1, p0, Ljp/co/omronsoft/openwnn/WnnPOS;->left:I

    .line 48
    iput p2, p0, Ljp/co/omronsoft/openwnn/WnnPOS;->right:I

    .line 49
    return-void
.end method
