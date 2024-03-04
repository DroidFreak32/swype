.class public Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchLeftResult;
.super Ljava/lang/Object;
.source "StandardTextRegionSegmenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SearchLeftResult"
.end annotation


# instance fields
.field beginPos:I

.field final foundTerm:Z

.field foundTermFrag:Z


# direct methods
.method constructor <init>(ZZI)V
    .locals 0
    .param p1, "foundTerm"    # Z
    .param p2, "foundTermFrag"    # Z
    .param p3, "beginPos"    # I

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-boolean p1, p0, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchLeftResult;->foundTerm:Z

    .line 91
    iput-boolean p2, p0, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchLeftResult;->foundTermFrag:Z

    .line 92
    iput p3, p0, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchLeftResult;->beginPos:I

    .line 93
    return-void
.end method
