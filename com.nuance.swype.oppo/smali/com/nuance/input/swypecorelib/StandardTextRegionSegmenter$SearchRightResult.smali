.class public Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchRightResult;
.super Ljava/lang/Object;
.source "StandardTextRegionSegmenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SearchRightResult"
.end annotation


# instance fields
.field public final isTerm:Z

.field public final pos:I


# direct methods
.method constructor <init>(IZ)V
    .locals 0
    .param p1, "pos"    # I
    .param p2, "isTerm"    # Z

    .prologue
    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    iput p1, p0, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchRightResult;->pos:I

    .line 178
    iput-boolean p2, p0, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchRightResult;->isTerm:Z

    .line 179
    return-void
.end method
