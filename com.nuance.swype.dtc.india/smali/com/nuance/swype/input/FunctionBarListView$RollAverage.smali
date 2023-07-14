.class public Lcom/nuance/swype/input/FunctionBarListView$RollAverage;
.super Ljava/lang/Object;
.source "FunctionBarListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/FunctionBarListView;
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
    .locals 0
    .param p1, "keepRatio"    # F

    .prologue
    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    iput p1, p0, Lcom/nuance/swype/input/FunctionBarListView$RollAverage;->mKeepRatio:F

    .line 174
    invoke-virtual {p0}, Lcom/nuance/swype/input/FunctionBarListView$RollAverage;->flush()V

    .line 175
    return-void
.end method


# virtual methods
.method public add(F)V
    .locals 3
    .param p1, "val"    # F

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/nuance/swype/input/FunctionBarListView$RollAverage;->isFlushed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    iput p1, p0, Lcom/nuance/swype/input/FunctionBarListView$RollAverage;->mVal:F

    .line 181
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/FunctionBarListView$RollAverage;->mFlushed:Z

    .line 186
    :goto_0
    return-void

    .line 183
    :cond_0
    iget v0, p0, Lcom/nuance/swype/input/FunctionBarListView$RollAverage;->mKeepRatio:F

    iget v1, p0, Lcom/nuance/swype/input/FunctionBarListView$RollAverage;->mVal:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/nuance/swype/input/FunctionBarListView$RollAverage;->mKeepRatio:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/nuance/swype/input/FunctionBarListView$RollAverage;->mVal:F

    goto :goto_0
.end method

.method public final flush()V
    .locals 1

    .prologue
    .line 196
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/input/FunctionBarListView$RollAverage;->mFlushed:Z

    .line 197
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/swype/input/FunctionBarListView$RollAverage;->mVal:F

    .line 198
    return-void
.end method

.method public get()F
    .locals 1

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/nuance/swype/input/FunctionBarListView$RollAverage;->isFlushed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 190
    iget v0, p0, Lcom/nuance/swype/input/FunctionBarListView$RollAverage;->mVal:F

    .line 192
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFlushed()Z
    .locals 1

    .prologue
    .line 201
    iget-boolean v0, p0, Lcom/nuance/swype/input/FunctionBarListView$RollAverage;->mFlushed:Z

    return v0
.end method
