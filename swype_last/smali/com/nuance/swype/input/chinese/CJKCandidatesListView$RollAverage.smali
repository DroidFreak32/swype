.class public Lcom/nuance/swype/input/chinese/CJKCandidatesListView$RollAverage;
.super Ljava/lang/Object;
.source "CJKCandidatesListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/chinese/CJKCandidatesListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "RollAverage"
.end annotation


# instance fields
.field private mFlushed:Z

.field private final mKeepRatio:F

.field private mVal:F


# direct methods
.method public constructor <init>(F)V
    .registers 2
    .param p1, "keepRatio"    # F

    .prologue
    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    iput p1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$RollAverage;->mKeepRatio:F

    .line 227
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$RollAverage;->flush()V

    .line 228
    return-void
.end method


# virtual methods
.method public add(F)V
    .registers 5
    .param p1, "val"    # F

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$RollAverage;->isFlushed()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 233
    iput p1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$RollAverage;->mVal:F

    .line 234
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$RollAverage;->mFlushed:Z

    .line 239
    :goto_b
    return-void

    .line 236
    :cond_c
    iget v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$RollAverage;->mKeepRatio:F

    iget v1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$RollAverage;->mVal:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$RollAverage;->mKeepRatio:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$RollAverage;->mVal:F

    goto :goto_b
.end method

.method public final flush()V
    .registers 2

    .prologue
    .line 246
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$RollAverage;->mFlushed:Z

    .line 247
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$RollAverage;->mVal:F

    .line 248
    return-void
.end method

.method public get()F
    .registers 2

    .prologue
    .line 242
    iget v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$RollAverage;->mVal:F

    return v0
.end method

.method public isFlushed()Z
    .registers 2

    .prologue
    .line 251
    iget-boolean v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$RollAverage;->mFlushed:Z

    return v0
.end method
