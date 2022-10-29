.class public Lcom/nuance/swype/input/CandidatesListView$RollAverage;
.super Ljava/lang/Object;
.source "CandidatesListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/CandidatesListView;
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
    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    iput p1, p0, Lcom/nuance/swype/input/CandidatesListView$RollAverage;->mKeepRatio:F

    .line 175
    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView$RollAverage;->flush()V

    .line 176
    return-void
.end method


# virtual methods
.method public add(F)V
    .registers 5
    .param p1, "val"    # F

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView$RollAverage;->isFlushed()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 181
    iput p1, p0, Lcom/nuance/swype/input/CandidatesListView$RollAverage;->mVal:F

    .line 182
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/CandidatesListView$RollAverage;->mFlushed:Z

    .line 187
    :goto_b
    return-void

    .line 184
    :cond_c
    iget v0, p0, Lcom/nuance/swype/input/CandidatesListView$RollAverage;->mKeepRatio:F

    iget v1, p0, Lcom/nuance/swype/input/CandidatesListView$RollAverage;->mVal:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/nuance/swype/input/CandidatesListView$RollAverage;->mKeepRatio:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/nuance/swype/input/CandidatesListView$RollAverage;->mVal:F

    goto :goto_b
.end method

.method public final flush()V
    .registers 2

    .prologue
    .line 197
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/input/CandidatesListView$RollAverage;->mFlushed:Z

    .line 198
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/swype/input/CandidatesListView$RollAverage;->mVal:F

    .line 199
    return-void
.end method

.method public get()F
    .registers 2

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView$RollAverage;->isFlushed()Z

    move-result v0

    if-nez v0, :cond_9

    .line 191
    iget v0, p0, Lcom/nuance/swype/input/CandidatesListView$RollAverage;->mVal:F

    .line 193
    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isFlushed()Z
    .registers 2

    .prologue
    .line 202
    iget-boolean v0, p0, Lcom/nuance/swype/input/CandidatesListView$RollAverage;->mFlushed:Z

    return v0
.end method
