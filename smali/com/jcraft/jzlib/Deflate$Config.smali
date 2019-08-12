.class final Lcom/jcraft/jzlib/Deflate$Config;
.super Ljava/lang/Object;
.source "Deflate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jcraft/jzlib/Deflate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Config"
.end annotation


# instance fields
.field func:I

.field good_length:I

.field max_chain:I

.field max_lazy:I

.field nice_length:I


# direct methods
.method constructor <init>(IIIII)V
    .locals 0
    .param p1, "good_length"    # I
    .param p2, "max_lazy"    # I
    .param p3, "nice_length"    # I
    .param p4, "max_chain"    # I
    .param p5, "func"    # I

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput p1, p0, Lcom/jcraft/jzlib/Deflate$Config;->good_length:I

    .line 56
    iput p2, p0, Lcom/jcraft/jzlib/Deflate$Config;->max_lazy:I

    .line 57
    iput p3, p0, Lcom/jcraft/jzlib/Deflate$Config;->nice_length:I

    .line 58
    iput p4, p0, Lcom/jcraft/jzlib/Deflate$Config;->max_chain:I

    .line 59
    iput p5, p0, Lcom/jcraft/jzlib/Deflate$Config;->func:I

    .line 60
    return-void
.end method
