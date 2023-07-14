.class public Ljp/co/omronsoft/openwnn/StrSegment;
.super Ljava/lang/Object;
.source "StrSegment.java"


# instance fields
.field public from:I

.field public string:Ljava/lang/String;

.field public to:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1, v1}, Ljp/co/omronsoft/openwnn/StrSegment;-><init>(Ljava/lang/String;II)V

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v0, -0x1

    .line 50
    invoke-direct {p0, p1, v0, v0}, Ljp/co/omronsoft/openwnn/StrSegment;-><init>(Ljava/lang/String;II)V

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "from"    # I
    .param p3, "to"    # I

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Ljp/co/omronsoft/openwnn/StrSegment;->string:Ljava/lang/String;

    .line 75
    iput p2, p0, Ljp/co/omronsoft/openwnn/StrSegment;->from:I

    .line 76
    iput p3, p0, Ljp/co/omronsoft/openwnn/StrSegment;->to:I

    .line 77
    return-void
.end method

.method public constructor <init>([C)V
    .locals 2
    .param p1, "chars"    # [C

    .prologue
    const/4 v1, -0x1

    .line 60
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    invoke-direct {p0, v0, v1, v1}, Ljp/co/omronsoft/openwnn/StrSegment;-><init>(Ljava/lang/String;II)V

    .line 61
    return-void
.end method
