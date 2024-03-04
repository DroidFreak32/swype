.class public Lcom/nuance/swype/input/CandidatesListView$RollAverage;
.super Ljava/lang/Object;
.source "CandidatesListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/CandidatesListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RollAverage"
.end annotation


# instance fields
.field private mFlushed:Z

.field private final mKeepRatio:F

.field private mVal:F


# direct methods
.method public constructor <init>(F)V
    .locals 0
    .param p1, "keepRatio"    # F

    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    iput p1, p0, Lcom/nuance/swype/input/CandidatesListView$RollAverage;->mKeepRatio:F

    .line 152
    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView$RollAverage;->flush()V

    .line 153
    return-void
.end method


# virtual methods
.method public add(F)V
    .locals 3
    .param p1, "val"    # F

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView$RollAverage;->isFlushed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    iput p1, p0, Lcom/nuance/swype/input/CandidatesListView$RollAverage;->mVal:F

    .line 159
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/CandidatesListView$RollAverage;->mFlushed:Z

    .line 164
    :goto_0
    return-void

    .line 161
    :cond_0
    iget v0, p0, Lcom/nuance/swype/input/CandidatesListView$RollAverage;->mKeepRatio:F

    iget v1, p0, Lcom/nuance/swype/input/CandidatesListView$RollAverage;->mVal:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/nuance/swype/input/CandidatesListView$RollAverage;->mKeepRatio:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/nuance/swype/input/CandidatesListView$RollAverage;->mVal:F

    goto :goto_0
.end method

.method public final flush()V
    .locals 1

    .prologue
    .line 174
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/input/CandidatesListView$RollAverage;->mFlushed:Z

    .line 175
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/swype/input/CandidatesListView$RollAverage;->mVal:F

    .line 176
    return-void
.end method

.method public get()F
    .locals 1

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView$RollAverage;->isFlushed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    iget v0, p0, Lcom/nuance/swype/input/CandidatesListView$RollAverage;->mVal:F

    .line 170
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFlushed()Z
    .locals 1

    .prologue
    .line 179
    iget-boolean v0, p0, Lcom/nuance/swype/input/CandidatesListView$RollAverage;->mFlushed:Z

    return v0
.end method
