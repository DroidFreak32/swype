.class public Ljp/co/omronsoft/openwnn/StrSegmentClause;
.super Ljp/co/omronsoft/openwnn/StrSegment;
.source "StrSegmentClause.java"


# instance fields
.field public clause:Ljp/co/omronsoft/openwnn/WnnClause;


# direct methods
.method public constructor <init>(Ljp/co/omronsoft/openwnn/WnnClause;II)V
    .registers 5
    .param p1, "clause"    # Ljp/co/omronsoft/openwnn/WnnClause;
    .param p2, "from"    # I
    .param p3, "to"    # I

    .prologue
    .line 40
    iget-object v0, p1, Ljp/co/omronsoft/openwnn/WnnClause;->candidate:Ljava/lang/String;

    invoke-direct {p0, v0, p2, p3}, Ljp/co/omronsoft/openwnn/StrSegment;-><init>(Ljava/lang/String;II)V

    .line 41
    iput-object p1, p0, Ljp/co/omronsoft/openwnn/StrSegmentClause;->clause:Ljp/co/omronsoft/openwnn/WnnClause;

    .line 42
    return-void
.end method
