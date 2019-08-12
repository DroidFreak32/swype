.class public Lcom/nuance/swype/input/chinese/CJKCandidatesListView$RollAverage;
.super Ljava/lang/Object;
.source "CJKCandidatesListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/chinese/CJKCandidatesListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RollAverage"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mFlushed:Z

.field private final mKeepRatio:F

.field private mVal:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 186
    const-class v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$RollAverage;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(F)V
    .locals 0
    .param p1, "keepRatio"    # F

    .prologue
    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    iput p1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$RollAverage;->mKeepRatio:F

    .line 193
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$RollAverage;->flush()V

    .line 194
    return-void
.end method


# virtual methods
.method public add(F)V
    .locals 3
    .param p1, "val"    # F

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$RollAverage;->isFlushed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    iput p1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$RollAverage;->mVal:F

    .line 200
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$RollAverage;->mFlushed:Z

    .line 205
    :goto_0
    return-void

    .line 202
    :cond_0
    iget v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$RollAverage;->mKeepRatio:F

    iget v1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$RollAverage;->mVal:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$RollAverage;->mKeepRatio:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$RollAverage;->mVal:F

    goto :goto_0
.end method

.method public final flush()V
    .locals 1

    .prologue
    .line 213
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$RollAverage;->mFlushed:Z

    .line 214
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$RollAverage;->mVal:F

    .line 215
    return-void
.end method

.method public get()F
    .locals 1

    .prologue
    .line 208
    sget-boolean v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$RollAverage;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$RollAverage;->isFlushed()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 209
    :cond_0
    iget v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$RollAverage;->mVal:F

    return v0
.end method

.method public isFlushed()Z
    .locals 1

    .prologue
    .line 218
    iget-boolean v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$RollAverage;->mFlushed:Z

    return v0
.end method
