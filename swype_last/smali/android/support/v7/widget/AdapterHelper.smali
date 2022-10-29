.class final Landroid/support/v7/widget/AdapterHelper;
.super Ljava/lang/Object;
.source "AdapterHelper.java"

# interfaces
.implements Landroid/support/v7/widget/OpReorderer$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/AdapterHelper$Callback;,
        Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    }
.end annotation


# instance fields
.field final mCallback:Landroid/support/v7/widget/AdapterHelper$Callback;

.field final mDisableRecycler:Z

.field mExistingUpdateTypes:I

.field mOnItemProcessedCallback:Ljava/lang/Runnable;

.field final mOpReorderer:Landroid/support/v7/widget/OpReorderer;

.field final mPendingUpdates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/AdapterHelper$UpdateOp;",
            ">;"
        }
    .end annotation
.end field

.field final mPostponedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/AdapterHelper$UpdateOp;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateOpPool:Landroid/support/v4/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/Pools$Pool",
            "<",
            "Landroid/support/v7/widget/AdapterHelper$UpdateOp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/support/v7/widget/AdapterHelper$Callback;)V
    .registers 3
    .param p1, "callback"    # Landroid/support/v7/widget/AdapterHelper$Callback;

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/AdapterHelper;-><init>(Landroid/support/v7/widget/AdapterHelper$Callback;B)V

    .line 74
    return-void
.end method

.method private constructor <init>(Landroid/support/v7/widget/AdapterHelper$Callback;B)V
    .registers 6
    .param p1, "callback"    # Landroid/support/v7/widget/AdapterHelper$Callback;

    .prologue
    const/4 v2, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Landroid/support/v4/util/Pools$SimplePool;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Landroid/support/v4/util/Pools$SimplePool;-><init>(I)V

    iput-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->mUpdateOpPool:Landroid/support/v4/util/Pools$Pool;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    .line 70
    iput v2, p0, Landroid/support/v7/widget/AdapterHelper;->mExistingUpdateTypes:I

    .line 77
    iput-object p1, p0, Landroid/support/v7/widget/AdapterHelper;->mCallback:Landroid/support/v7/widget/AdapterHelper$Callback;

    .line 78
    iput-boolean v2, p0, Landroid/support/v7/widget/AdapterHelper;->mDisableRecycler:Z

    .line 79
    new-instance v0, Landroid/support/v7/widget/OpReorderer;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/OpReorderer;-><init>(Landroid/support/v7/widget/OpReorderer$Callback;)V

    iput-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->mOpReorderer:Landroid/support/v7/widget/OpReorderer;

    .line 80
    return-void
.end method

.method private canFindInPreLayout(I)Z
    .registers 10
    .param p1, "position"    # I

    .prologue
    const/4 v5, 0x1

    .line 412
    iget-object v6, p0, Landroid/support/v7/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 413
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v0, :cond_3f

    .line 414
    iget-object v6, p0, Landroid/support/v7/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    .line 415
    .local v3, "op":Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    iget v6, v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    const/16 v7, 0x8

    if-ne v6, v7, :cond_23

    .line 416
    iget v6, v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {p0, v6, v7}, Landroid/support/v7/widget/AdapterHelper;->findPositionOffset(II)I

    move-result v6

    if-ne v6, p1, :cond_3c

    .line 429
    .end local v3    # "op":Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    :cond_22
    :goto_22
    return v5

    .line 419
    .restart local v3    # "op":Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    :cond_23
    iget v6, v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    if-ne v6, v5, :cond_3c

    .line 421
    iget v6, v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v7, v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int v1, v6, v7

    .line 422
    .local v1, "end":I
    iget v4, v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    .local v4, "pos":I
    :goto_2f
    if-ge v4, v1, :cond_3c

    .line 423
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p0, v4, v6}, Landroid/support/v7/widget/AdapterHelper;->findPositionOffset(II)I

    move-result v6

    if-eq v6, p1, :cond_22

    .line 422
    add-int/lit8 v4, v4, 0x1

    goto :goto_2f

    .line 413
    .end local v1    # "end":I
    .end local v4    # "pos":I
    :cond_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 429
    .end local v3    # "op":Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    :cond_3f
    const/4 v5, 0x0

    goto :goto_22
.end method

.method private dispatchAndUpdateViewHolders(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V
    .registers 16
    .param p1, "op"    # Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 232
    iget v12, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    if-eq v12, v10, :cond_c

    iget v12, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    const/16 v13, 0x8

    if-ne v12, v13, :cond_15

    .line 233
    :cond_c
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v11, "should not dispatch add or move for pre layout"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 246
    :cond_15
    iget v12, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v13, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    invoke-direct {p0, v12, v13}, Landroid/support/v7/widget/AdapterHelper;->updatePositionWithPostponed(II)I

    move-result v8

    .line 250
    .local v8, "tmpStart":I
    const/4 v7, 0x1

    .line 251
    .local v7, "tmpCnt":I
    iget v1, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 253
    .local v1, "offsetPositionForPartial":I
    iget v12, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    packed-switch v12, :pswitch_data_96

    .line 261
    :pswitch_25
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "op should be remove or update."

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 255
    :pswitch_3b
    const/4 v5, 0x1

    .line 263
    .local v5, "positionMultiplier":I
    :goto_3c
    const/4 v2, 0x1

    .local v2, "p":I
    :goto_3d
    iget v12, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-ge v2, v12, :cond_81

    .line 264
    iget v12, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    mul-int v13, v5, v2

    add-int v4, v12, v13

    .line 265
    .local v4, "pos":I
    iget v12, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    invoke-direct {p0, v4, v12}, Landroid/support/v7/widget/AdapterHelper;->updatePositionWithPostponed(II)I

    move-result v9

    .line 269
    .local v9, "updatedPos":I
    const/4 v0, 0x0

    .line 270
    .local v0, "continuous":Z
    iget v12, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    packed-switch v12, :pswitch_data_a0

    .line 278
    :goto_53
    :pswitch_53
    if-eqz v0, :cond_6a

    .line 279
    add-int/lit8 v7, v7, 0x1

    .line 263
    :goto_57
    add-int/lit8 v2, v2, 0x1

    goto :goto_3d

    .line 258
    .end local v0    # "continuous":Z
    .end local v2    # "p":I
    .end local v4    # "pos":I
    .end local v5    # "positionMultiplier":I
    .end local v9    # "updatedPos":I
    :pswitch_5a
    const/4 v5, 0x0

    .line 259
    .restart local v5    # "positionMultiplier":I
    goto :goto_3c

    .line 272
    .restart local v0    # "continuous":Z
    .restart local v2    # "p":I
    .restart local v4    # "pos":I
    .restart local v9    # "updatedPos":I
    :pswitch_5c
    add-int/lit8 v12, v8, 0x1

    if-ne v9, v12, :cond_62

    move v0, v10

    .line 273
    :goto_61
    goto :goto_53

    :cond_62
    move v0, v11

    .line 272
    goto :goto_61

    .line 275
    :pswitch_64
    if-ne v9, v8, :cond_68

    move v0, v10

    :goto_67
    goto :goto_53

    :cond_68
    move v0, v11

    goto :goto_67

    .line 282
    :cond_6a
    iget v12, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    iget-object v13, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-virtual {p0, v12, v8, v7, v13}, Landroid/support/v7/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    move-result-object v6

    .line 286
    .local v6, "tmp":Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    invoke-direct {p0, v6, v1}, Landroid/support/v7/widget/AdapterHelper;->dispatchFirstPassAndUpdateViewHolders(Landroid/support/v7/widget/AdapterHelper$UpdateOp;I)V

    .line 287
    invoke-virtual {p0, v6}, Landroid/support/v7/widget/AdapterHelper;->recycleUpdateOp(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 288
    iget v12, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    const/4 v13, 0x4

    if-ne v12, v13, :cond_7e

    .line 289
    add-int/2addr v1, v7

    .line 291
    :cond_7e
    move v8, v9

    .line 292
    const/4 v7, 0x1

    goto :goto_57

    .line 295
    .end local v0    # "continuous":Z
    .end local v4    # "pos":I
    .end local v6    # "tmp":Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    .end local v9    # "updatedPos":I
    :cond_81
    iget-object v3, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    .line 296
    .local v3, "payload":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/AdapterHelper;->recycleUpdateOp(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 297
    if-lez v7, :cond_94

    .line 298
    iget v10, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    invoke-virtual {p0, v10, v8, v7, v3}, Landroid/support/v7/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    move-result-object v6

    .line 302
    .restart local v6    # "tmp":Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    invoke-direct {p0, v6, v1}, Landroid/support/v7/widget/AdapterHelper;->dispatchFirstPassAndUpdateViewHolders(Landroid/support/v7/widget/AdapterHelper$UpdateOp;I)V

    .line 303
    invoke-virtual {p0, v6}, Landroid/support/v7/widget/AdapterHelper;->recycleUpdateOp(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 313
    .end local v6    # "tmp":Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    :cond_94
    return-void

    .line 253
    nop

    :pswitch_data_96
    .packed-switch 0x2
        :pswitch_5a
        :pswitch_25
        :pswitch_3b
    .end packed-switch

    .line 270
    :pswitch_data_a0
    .packed-switch 0x2
        :pswitch_64
        :pswitch_53
        :pswitch_5c
    .end packed-switch
.end method

.method private dispatchFirstPassAndUpdateViewHolders(Landroid/support/v7/widget/AdapterHelper$UpdateOp;I)V
    .registers 6
    .param p1, "op"    # Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    .param p2, "offsetStart"    # I

    .prologue
    .line 316
    iget-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->mCallback:Landroid/support/v7/widget/AdapterHelper$Callback;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/AdapterHelper$Callback;->onDispatchFirstPass(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 317
    iget v0, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    packed-switch v0, :pswitch_data_26

    .line 325
    :pswitch_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "only remove and update ops can be dispatched in first pass"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 319
    :pswitch_13
    iget-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->mCallback:Landroid/support/v7/widget/AdapterHelper$Callback;

    iget v1, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v0, p2, v1}, Landroid/support/v7/widget/AdapterHelper$Callback;->offsetPositionsForRemovingInvisible(II)V

    .line 323
    :goto_1a
    return-void

    .line 322
    :pswitch_1b
    iget-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->mCallback:Landroid/support/v7/widget/AdapterHelper$Callback;

    iget v1, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget-object v2, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-interface {v0, p2, v1, v2}, Landroid/support/v7/widget/AdapterHelper$Callback;->markViewHoldersUpdated(IILjava/lang/Object;)V

    goto :goto_1a

    .line 317
    nop

    :pswitch_data_26
    .packed-switch 0x2
        :pswitch_13
        :pswitch_a
        :pswitch_1b
    .end packed-switch
.end method

.method private postponeAndUpdateViewHolders(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V
    .registers 6
    .param p1, "op"    # Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    .prologue
    .line 440
    iget-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 441
    iget v0, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    packed-switch v0, :pswitch_data_4a

    .line 456
    :pswitch_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unknown update op type for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 443
    :pswitch_20
    iget-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->mCallback:Landroid/support/v7/widget/AdapterHelper$Callback;

    iget v1, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v2, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v0, v1, v2}, Landroid/support/v7/widget/AdapterHelper$Callback;->offsetPositionsForAdd(II)V

    .line 454
    :goto_29
    return-void

    .line 446
    :pswitch_2a
    iget-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->mCallback:Landroid/support/v7/widget/AdapterHelper$Callback;

    iget v1, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v2, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v0, v1, v2}, Landroid/support/v7/widget/AdapterHelper$Callback;->offsetPositionsForMove(II)V

    goto :goto_29

    .line 449
    :pswitch_34
    iget-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->mCallback:Landroid/support/v7/widget/AdapterHelper$Callback;

    iget v1, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v2, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v0, v1, v2}, Landroid/support/v7/widget/AdapterHelper$Callback;->offsetPositionsForRemovingLaidOutOrNewView(II)V

    goto :goto_29

    .line 453
    :pswitch_3e
    iget-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->mCallback:Landroid/support/v7/widget/AdapterHelper$Callback;

    iget v1, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v2, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget-object v3, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Landroid/support/v7/widget/AdapterHelper$Callback;->markViewHoldersUpdated(IILjava/lang/Object;)V

    goto :goto_29

    .line 441
    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_20
        :pswitch_34
        :pswitch_a
        :pswitch_3e
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_2a
    .end packed-switch
.end method

.method private recycleUpdateOpsAndClearList(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/AdapterHelper$UpdateOp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 749
    .local p1, "ops":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/widget/AdapterHelper$UpdateOp;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 750
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_13

    .line 751
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/AdapterHelper;->recycleUpdateOp(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 750
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 753
    :cond_13
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 754
    return-void
.end method

.method private updatePositionWithPostponed(II)I
    .registers 13
    .param p1, "pos"    # I
    .param p2, "cmd"    # I

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 331
    iget-object v5, p0, Landroid/support/v7/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 332
    add-int/lit8 v1, v5, -0x1

    .local v1, "i":I
    :goto_c
    if-ltz v1, :cond_a3

    .line 333
    iget-object v5, p0, Landroid/support/v7/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    .line 334
    .local v3, "postponed":Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    iget v5, v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    if-ne v5, v9, :cond_7d

    .line 336
    iget v5, v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v6, v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-ge v5, v6, :cond_39

    .line 337
    iget v4, v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 338
    .local v4, "start":I
    iget v0, v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 343
    .local v0, "end":I
    :goto_24
    if-lt p1, v4, :cond_5b

    if-gt p1, v0, :cond_5b

    .line 345
    iget v5, v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ne v4, v5, :cond_47

    .line 346
    if-ne p2, v7, :cond_3e

    .line 347
    iget v5, v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 352
    :cond_34
    :goto_34
    add-int/lit8 p1, p1, 0x1

    .line 332
    .end local v0    # "end":I
    .end local v4    # "start":I
    :cond_36
    :goto_36
    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    .line 340
    :cond_39
    iget v4, v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 341
    .restart local v4    # "start":I
    iget v0, v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    .restart local v0    # "end":I
    goto :goto_24

    .line 348
    :cond_3e
    if-ne p2, v8, :cond_34

    .line 349
    iget v5, v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/lit8 v5, v5, -0x1

    iput v5, v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    goto :goto_34

    .line 354
    :cond_47
    if-ne p2, v7, :cond_52

    .line 355
    iget v5, v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 360
    :cond_4f
    :goto_4f
    add-int/lit8 p1, p1, -0x1

    goto :goto_36

    .line 356
    :cond_52
    if-ne p2, v8, :cond_4f

    .line 357
    iget v5, v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    add-int/lit8 v5, v5, -0x1

    iput v5, v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    goto :goto_4f

    .line 362
    :cond_5b
    iget v5, v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ge p1, v5, :cond_36

    .line 364
    if-ne p2, v7, :cond_6e

    .line 365
    iget v5, v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 366
    iget v5, v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    goto :goto_36

    .line 367
    :cond_6e
    if-ne p2, v8, :cond_36

    .line 368
    iget v5, v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    add-int/lit8 v5, v5, -0x1

    iput v5, v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 369
    iget v5, v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/lit8 v5, v5, -0x1

    iput v5, v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    goto :goto_36

    .line 373
    .end local v0    # "end":I
    .end local v4    # "start":I
    :cond_7d
    iget v5, v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-gt v5, p1, :cond_91

    .line 374
    iget v5, v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    if-ne v5, v7, :cond_89

    .line 375
    iget v5, v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr p1, v5

    goto :goto_36

    .line 376
    :cond_89
    iget v5, v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    if-ne v5, v8, :cond_36

    .line 377
    iget v5, v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr p1, v5

    goto :goto_36

    .line 380
    :cond_91
    if-ne p2, v7, :cond_9a

    .line 381
    iget v5, v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    goto :goto_36

    .line 382
    :cond_9a
    if-ne p2, v8, :cond_36

    .line 383
    iget v5, v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    add-int/lit8 v5, v5, -0x1

    iput v5, v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    goto :goto_36

    .line 396
    .end local v3    # "postponed":Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    :cond_a3
    iget-object v5, p0, Landroid/support/v7/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    :goto_ab
    if-ltz v1, :cond_db

    .line 397
    iget-object v5, p0, Landroid/support/v7/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    .line 398
    .local v2, "op":Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    iget v5, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    if-ne v5, v9, :cond_ce

    .line 399
    iget v5, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v6, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-eq v5, v6, :cond_c3

    iget v5, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-gez v5, :cond_cb

    .line 400
    :cond_c3
    iget-object v5, p0, Landroid/support/v7/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 401
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/AdapterHelper;->recycleUpdateOp(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 396
    :cond_cb
    :goto_cb
    add-int/lit8 v1, v1, -0x1

    goto :goto_ab

    .line 403
    :cond_ce
    iget v5, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-gtz v5, :cond_cb

    .line 404
    iget-object v5, p0, Landroid/support/v7/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 405
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/AdapterHelper;->recycleUpdateOp(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    goto :goto_cb

    .line 408
    .end local v2    # "op":Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    :cond_db
    return p1
.end method


# virtual methods
.method final consumePostponedUpdates()V
    .registers 5

    .prologue
    .line 120
    iget-object v2, p0, Landroid/support/v7/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 121
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_19

    .line 122
    iget-object v3, p0, Landroid/support/v7/widget/AdapterHelper;->mCallback:Landroid/support/v7/widget/AdapterHelper$Callback;

    iget-object v2, p0, Landroid/support/v7/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    invoke-interface {v3, v2}, Landroid/support/v7/widget/AdapterHelper$Callback;->onDispatchSecondPass(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 121
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 124
    :cond_19
    iget-object v2, p0, Landroid/support/v7/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Landroid/support/v7/widget/AdapterHelper;->recycleUpdateOpsAndClearList(Ljava/util/List;)V

    .line 125
    const/4 v2, 0x0

    iput v2, p0, Landroid/support/v7/widget/AdapterHelper;->mExistingUpdateTypes:I

    .line 126
    return-void
.end method

.method final consumeUpdatesInOnePass()V
    .registers 8

    .prologue
    .line 558
    invoke-virtual {p0}, Landroid/support/v7/widget/AdapterHelper;->consumePostponedUpdates()V

    .line 559
    iget-object v3, p0, Landroid/support/v7/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 560
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    if-ge v1, v0, :cond_63

    .line 561
    iget-object v3, p0, Landroid/support/v7/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    .line 562
    .local v2, "op":Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    iget v3, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    packed-switch v3, :pswitch_data_6c

    .line 580
    :goto_19
    :pswitch_19
    iget-object v3, p0, Landroid/support/v7/widget/AdapterHelper;->mOnItemProcessedCallback:Ljava/lang/Runnable;

    if-eqz v3, :cond_22

    .line 581
    iget-object v3, p0, Landroid/support/v7/widget/AdapterHelper;->mOnItemProcessedCallback:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 560
    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 564
    :pswitch_25
    iget-object v3, p0, Landroid/support/v7/widget/AdapterHelper;->mCallback:Landroid/support/v7/widget/AdapterHelper$Callback;

    invoke-interface {v3, v2}, Landroid/support/v7/widget/AdapterHelper$Callback;->onDispatchSecondPass(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 565
    iget-object v3, p0, Landroid/support/v7/widget/AdapterHelper;->mCallback:Landroid/support/v7/widget/AdapterHelper$Callback;

    iget v4, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v3, v4, v5}, Landroid/support/v7/widget/AdapterHelper$Callback;->offsetPositionsForAdd(II)V

    goto :goto_19

    .line 568
    :pswitch_34
    iget-object v3, p0, Landroid/support/v7/widget/AdapterHelper;->mCallback:Landroid/support/v7/widget/AdapterHelper$Callback;

    invoke-interface {v3, v2}, Landroid/support/v7/widget/AdapterHelper$Callback;->onDispatchSecondPass(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 569
    iget-object v3, p0, Landroid/support/v7/widget/AdapterHelper;->mCallback:Landroid/support/v7/widget/AdapterHelper$Callback;

    iget v4, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v3, v4, v5}, Landroid/support/v7/widget/AdapterHelper$Callback;->offsetPositionsForRemovingInvisible(II)V

    goto :goto_19

    .line 572
    :pswitch_43
    iget-object v3, p0, Landroid/support/v7/widget/AdapterHelper;->mCallback:Landroid/support/v7/widget/AdapterHelper$Callback;

    invoke-interface {v3, v2}, Landroid/support/v7/widget/AdapterHelper$Callback;->onDispatchSecondPass(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 573
    iget-object v3, p0, Landroid/support/v7/widget/AdapterHelper;->mCallback:Landroid/support/v7/widget/AdapterHelper$Callback;

    iget v4, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget-object v6, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-interface {v3, v4, v5, v6}, Landroid/support/v7/widget/AdapterHelper$Callback;->markViewHoldersUpdated(IILjava/lang/Object;)V

    goto :goto_19

    .line 576
    :pswitch_54
    iget-object v3, p0, Landroid/support/v7/widget/AdapterHelper;->mCallback:Landroid/support/v7/widget/AdapterHelper$Callback;

    invoke-interface {v3, v2}, Landroid/support/v7/widget/AdapterHelper$Callback;->onDispatchSecondPass(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 577
    iget-object v3, p0, Landroid/support/v7/widget/AdapterHelper;->mCallback:Landroid/support/v7/widget/AdapterHelper$Callback;

    iget v4, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v3, v4, v5}, Landroid/support/v7/widget/AdapterHelper$Callback;->offsetPositionsForMove(II)V

    goto :goto_19

    .line 584
    .end local v2    # "op":Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    :cond_63
    iget-object v3, p0, Landroid/support/v7/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Landroid/support/v7/widget/AdapterHelper;->recycleUpdateOpsAndClearList(Ljava/util/List;)V

    .line 585
    const/4 v3, 0x0

    iput v3, p0, Landroid/support/v7/widget/AdapterHelper;->mExistingUpdateTypes:I

    .line 586
    return-void

    .line 562
    :pswitch_data_6c
    .packed-switch 0x1
        :pswitch_25
        :pswitch_34
        :pswitch_19
        :pswitch_43
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_54
    .end packed-switch
.end method

.method final findPositionOffset(I)I
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 469
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/AdapterHelper;->findPositionOffset(II)I

    move-result v0

    return v0
.end method

.method final findPositionOffset(II)I
    .registers 8
    .param p1, "position"    # I
    .param p2, "firstPostponedItem"    # I

    .prologue
    .line 473
    iget-object v3, p0, Landroid/support/v7/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 474
    .local v0, "count":I
    move v1, p2

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_3e

    .line 475
    iget-object v3, p0, Landroid/support/v7/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    .line 476
    .local v2, "op":Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    iget v3, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_2d

    .line 477
    iget v3, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ne v3, p1, :cond_20

    .line 478
    iget p1, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 474
    :cond_1d
    :goto_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 480
    :cond_20
    iget v3, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ge v3, p1, :cond_26

    .line 481
    add-int/lit8 p1, p1, -0x1

    .line 483
    :cond_26
    iget v3, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-gt v3, p1, :cond_1d

    .line 484
    add-int/lit8 p1, p1, 0x1

    goto :goto_1d

    .line 487
    :cond_2d
    iget v3, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-gt v3, p1, :cond_1d

    .line 488
    iget v3, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_43

    .line 489
    iget v3, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v4, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v3, v4

    if-ge p1, v3, :cond_3f

    .line 490
    const/4 p1, -0x1

    .line 498
    .end local v2    # "op":Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    .end local p1    # "position":I
    :cond_3e
    return p1

    .line 492
    .restart local v2    # "op":Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    .restart local p1    # "position":I
    :cond_3f
    iget v3, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr p1, v3

    goto :goto_1d

    .line 493
    :cond_43
    iget v3, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1d

    .line 494
    iget v3, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr p1, v3

    goto :goto_1d
.end method

.method final hasAnyUpdateTypes(I)Z
    .registers 3
    .param p1, "updateTypes"    # I

    .prologue
    .line 465
    iget v0, p0, Landroid/support/v7/widget/AdapterHelper;->mExistingUpdateTypes:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method final hasPendingUpdates()Z
    .registers 2

    .prologue
    .line 461
    iget-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final obtainUpdateOp(IIILjava/lang/Object;)Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    .registers 7
    .param p1, "cmd"    # I
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I
    .param p4, "payload"    # Ljava/lang/Object;

    .prologue
    .line 728
    iget-object v1, p0, Landroid/support/v7/widget/AdapterHelper;->mUpdateOpPool:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v1}, Landroid/support/v4/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    .line 729
    .local v0, "op":Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    if-nez v0, :cond_10

    .line 730
    new-instance v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    .end local v0    # "op":Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    invoke-direct {v0, p1, p2, p3, p4}, Landroid/support/v7/widget/AdapterHelper$UpdateOp;-><init>(IIILjava/lang/Object;)V

    .line 737
    .restart local v0    # "op":Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    :goto_f
    return-object v0

    .line 732
    :cond_10
    iput p1, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    .line 733
    iput p2, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 734
    iput p3, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 735
    iput-object p4, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    goto :goto_f
.end method

.method final preProcess()V
    .registers 19

    .prologue
    .line 94
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/support/v7/widget/AdapterHelper;->mOpReorderer:Landroid/support/v7/widget/OpReorderer;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/support/v7/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    .line 1218
    :cond_8
    :goto_8
    const/4 v5, 0x0

    .line 1219
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v6, v4, -0x1

    :goto_f
    if-ltz v6, :cond_72

    .line 1220
    invoke-interface {v11, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    .line 1221
    iget v4, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    const/16 v7, 0x8

    if-ne v4, v7, :cond_6d

    .line 1222
    if-eqz v5, :cond_357

    move v9, v6

    .line 1039
    :goto_20
    const/4 v4, -0x1

    if-eq v9, v4, :cond_215

    .line 1040
    add-int/lit8 v12, v9, 0x1

    .line 2045
    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    .line 2046
    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    .line 2047
    iget v6, v5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    packed-switch v6, :pswitch_data_35a

    :pswitch_36
    goto :goto_8

    .line 2161
    :pswitch_37
    const/4 v6, 0x0

    .line 2163
    iget v7, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v8, v5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ge v7, v8, :cond_3f

    .line 2164
    const/4 v6, -0x1

    .line 2166
    :cond_3f
    iget v7, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v8, v5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ge v7, v8, :cond_47

    .line 2167
    add-int/lit8 v6, v6, 0x1

    .line 2169
    :cond_47
    iget v7, v5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v8, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-gt v7, v8, :cond_54

    .line 2170
    iget v7, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v8, v5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v7, v8

    iput v7, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 2172
    :cond_54
    iget v7, v5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v8, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-gt v7, v8, :cond_61

    .line 2173
    iget v7, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v8, v5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v7, v8

    iput v7, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 2175
    :cond_61
    iget v7, v5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    add-int/2addr v6, v7

    iput v6, v5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 2176
    invoke-interface {v11, v9, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2177
    invoke-interface {v11, v12, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 1226
    :cond_6d
    const/4 v4, 0x1

    .line 1219
    :goto_6e
    add-int/lit8 v6, v6, -0x1

    move v5, v4

    goto :goto_f

    .line 1229
    :cond_72
    const/4 v4, -0x1

    move v9, v4

    goto :goto_20

    .line 2062
    :pswitch_75
    const/4 v8, 0x0

    .line 2064
    const/4 v7, 0x0

    .line 2067
    iget v6, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v13, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-ge v6, v13, :cond_b5

    .line 2068
    const/4 v6, 0x0

    .line 2069
    iget v13, v5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v14, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ne v13, v14, :cond_8e

    iget v13, v5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v14, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v15, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    sub-int/2addr v14, v15

    if-ne v13, v14, :cond_8e

    .line 2071
    const/4 v7, 0x1

    .line 2082
    :cond_8e
    :goto_8e
    iget v13, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v14, v5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ge v13, v14, :cond_c9

    .line 2083
    iget v13, v5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    add-int/lit8 v13, v13, -0x1

    iput v13, v5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 2098
    :cond_9a
    iget v13, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v14, v5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-gt v13, v14, :cond_ec

    .line 2099
    iget v13, v5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    add-int/lit8 v13, v13, 0x1

    iput v13, v5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 2108
    :cond_a6
    :goto_a6
    if-eqz v7, :cond_114

    .line 2109
    invoke-interface {v11, v9, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2110
    invoke-interface {v11, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2111
    iget-object v5, v10, Landroid/support/v7/widget/OpReorderer;->mCallback:Landroid/support/v7/widget/OpReorderer$Callback;

    invoke-interface {v5, v4}, Landroid/support/v7/widget/OpReorderer$Callback;->recycleUpdateOp(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    goto/16 :goto_8

    .line 2074
    :cond_b5
    const/4 v6, 0x1

    .line 2075
    iget v13, v5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v14, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/lit8 v14, v14, 0x1

    if-ne v13, v14, :cond_8e

    iget v13, v5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v14, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v15, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v14, v15

    if-ne v13, v14, :cond_8e

    .line 2077
    const/4 v7, 0x1

    goto :goto_8e

    .line 2084
    :cond_c9
    iget v13, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v14, v5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v15, v5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v14, v15

    if-ge v13, v14, :cond_9a

    .line 2086
    iget v6, v5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/lit8 v6, v6, -0x1

    iput v6, v5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 2087
    const/4 v6, 0x2

    iput v6, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    .line 2088
    const/4 v6, 0x1

    iput v6, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 2089
    iget v4, v5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-nez v4, :cond_8

    .line 2090
    invoke-interface {v11, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2091
    iget-object v4, v10, Landroid/support/v7/widget/OpReorderer;->mCallback:Landroid/support/v7/widget/OpReorderer$Callback;

    invoke-interface {v4, v5}, Landroid/support/v7/widget/OpReorderer$Callback;->recycleUpdateOp(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    goto/16 :goto_8

    .line 2100
    :cond_ec
    iget v13, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v14, v5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v15, v5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v14, v15

    if-ge v13, v14, :cond_a6

    .line 2101
    iget v8, v5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v13, v5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v8, v13

    iget v13, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    sub-int/2addr v8, v13

    .line 2103
    iget-object v13, v10, Landroid/support/v7/widget/OpReorderer;->mCallback:Landroid/support/v7/widget/OpReorderer$Callback;

    const/4 v14, 0x2

    iget v15, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    add-int/lit8 v15, v15, 0x1

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-interface {v13, v14, v15, v8, v0}, Landroid/support/v7/widget/OpReorderer$Callback;->obtainUpdateOp(IIILjava/lang/Object;)Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    move-result-object v8

    .line 2104
    iget v13, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v14, v5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    sub-int/2addr v13, v14

    iput v13, v5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    goto :goto_a6

    .line 2116
    :cond_114
    if-eqz v6, :cond_15f

    .line 2117
    if-eqz v8, :cond_132

    .line 2118
    iget v6, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v7, v8, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-le v6, v7, :cond_125

    .line 2119
    iget v6, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v7, v8, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v6, v7

    iput v6, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 2121
    :cond_125
    iget v6, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v7, v8, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-le v6, v7, :cond_132

    .line 2122
    iget v6, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v7, v8, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v6, v7

    iput v6, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 2125
    :cond_132
    iget v6, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v7, v5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-le v6, v7, :cond_13f

    .line 2126
    iget v6, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v7, v5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v6, v7

    iput v6, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 2128
    :cond_13f
    iget v6, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v7, v5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-le v6, v7, :cond_14c

    .line 2129
    iget v6, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v7, v5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v6, v7

    iput v6, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 2148
    :cond_14c
    :goto_14c
    invoke-interface {v11, v9, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2149
    iget v5, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v6, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-eq v5, v6, :cond_196

    .line 2150
    invoke-interface {v11, v12, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2154
    :goto_158
    if-eqz v8, :cond_8

    .line 2155
    invoke-interface {v11, v9, v8}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/16 :goto_8

    .line 2132
    :cond_15f
    if-eqz v8, :cond_17b

    .line 2133
    iget v6, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v7, v8, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-lt v6, v7, :cond_16e

    .line 2134
    iget v6, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v7, v8, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v6, v7

    iput v6, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 2136
    :cond_16e
    iget v6, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v7, v8, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-lt v6, v7, :cond_17b

    .line 2137
    iget v6, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v7, v8, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v6, v7

    iput v6, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 2140
    :cond_17b
    iget v6, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v7, v5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-lt v6, v7, :cond_188

    .line 2141
    iget v6, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v7, v5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v6, v7

    iput v6, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 2143
    :cond_188
    iget v6, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v7, v5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-lt v6, v7, :cond_14c

    .line 2144
    iget v6, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v7, v5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v6, v7

    iput v6, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    goto :goto_14c

    .line 2152
    :cond_196
    invoke-interface {v11, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_158

    .line 2182
    :pswitch_19a
    const/4 v6, 0x0

    .line 2183
    const/4 v7, 0x0

    .line 2185
    iget v8, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v13, v5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ge v8, v13, :cond_1ca

    .line 2186
    iget v8, v5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    add-int/lit8 v8, v8, -0x1

    iput v8, v5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 2193
    :cond_1a8
    :goto_1a8
    iget v8, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v13, v5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-gt v8, v13, :cond_1e6

    .line 2194
    iget v8, v5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 2202
    :cond_1b4
    :goto_1b4
    invoke-interface {v11, v12, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2203
    iget v4, v5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-lez v4, :cond_20c

    .line 2204
    invoke-interface {v11, v9, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2209
    :goto_1be
    if-eqz v6, :cond_1c3

    .line 2210
    invoke-interface {v11, v9, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2212
    :cond_1c3
    if-eqz v7, :cond_8

    .line 2213
    invoke-interface {v11, v9, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/16 :goto_8

    .line 2187
    :cond_1ca
    iget v8, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v13, v5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v14, v5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v13, v14

    if-ge v8, v13, :cond_1a8

    .line 2189
    iget v6, v5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/lit8 v6, v6, -0x1

    iput v6, v5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 2190
    iget-object v6, v10, Landroid/support/v7/widget/OpReorderer;->mCallback:Landroid/support/v7/widget/OpReorderer$Callback;

    const/4 v8, 0x4

    iget v13, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    const/4 v14, 0x1

    iget-object v15, v5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-interface {v6, v8, v13, v14, v15}, Landroid/support/v7/widget/OpReorderer$Callback;->obtainUpdateOp(IIILjava/lang/Object;)Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    move-result-object v6

    goto :goto_1a8

    .line 2195
    :cond_1e6
    iget v8, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v13, v5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v14, v5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v13, v14

    if-ge v8, v13, :cond_1b4

    .line 2196
    iget v7, v5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v8, v5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v7, v8

    iget v8, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    sub-int v8, v7, v8

    .line 2198
    iget-object v7, v10, Landroid/support/v7/widget/OpReorderer;->mCallback:Landroid/support/v7/widget/OpReorderer$Callback;

    const/4 v13, 0x4

    iget v14, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    add-int/lit8 v14, v14, 0x1

    iget-object v15, v5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-interface {v7, v13, v14, v8, v15}, Landroid/support/v7/widget/OpReorderer$Callback;->obtainUpdateOp(IIILjava/lang/Object;)Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    move-result-object v7

    .line 2200
    iget v13, v5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int v8, v13, v8

    iput v8, v5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    goto :goto_1b4

    .line 2206
    :cond_20c
    invoke-interface {v11, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2207
    iget-object v4, v10, Landroid/support/v7/widget/OpReorderer;->mCallback:Landroid/support/v7/widget/OpReorderer$Callback;

    invoke-interface {v4, v5}, Landroid/support/v7/widget/OpReorderer$Callback;->recycleUpdateOp(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    goto :goto_1be

    .line 95
    :cond_215
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 96
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_21e
    if-ge v2, v1, :cond_34f

    .line 97
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    .line 98
    .local v3, "op":Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    iget v4, v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    packed-switch v4, :pswitch_data_366

    .line 112
    .end local v3    # "op":Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    :goto_22f
    :pswitch_22f
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/AdapterHelper;->mOnItemProcessedCallback:Ljava/lang/Runnable;

    if-eqz v4, :cond_23c

    .line 113
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/AdapterHelper;->mOnItemProcessedCallback:Ljava/lang/Runnable;

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 96
    :cond_23c
    add-int/lit8 v2, v2, 0x1

    goto :goto_21e

    .line 2433
    .restart local v3    # "op":Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    :pswitch_23f
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/support/v7/widget/AdapterHelper;->postponeAndUpdateViewHolders(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    goto :goto_22f

    .line 3135
    :pswitch_245
    iget v9, v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 3136
    const/4 v4, 0x0

    .line 3137
    iget v5, v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v6, v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v6, v5

    .line 3138
    const/4 v7, -0x1

    .line 3139
    iget v5, v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    move v8, v4

    :goto_251
    if-ge v5, v6, :cond_2a0

    .line 3140
    const/4 v4, 0x0

    .line 3141
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/support/v7/widget/AdapterHelper;->mCallback:Landroid/support/v7/widget/AdapterHelper$Callback;

    invoke-interface {v10, v5}, Landroid/support/v7/widget/AdapterHelper$Callback;->findViewHolder(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v10

    .line 3142
    if-nez v10, :cond_266

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/support/v7/widget/AdapterHelper;->canFindInPreLayout(I)Z

    move-result v10

    if-eqz v10, :cond_284

    .line 3149
    :cond_266
    if-nez v7, :cond_276

    .line 3152
    const/4 v4, 0x2

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v9, v8, v7}, Landroid/support/v7/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    move-result-object v4

    .line 3153
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/support/v7/widget/AdapterHelper;->dispatchAndUpdateViewHolders(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 3154
    const/4 v4, 0x1

    .line 3156
    :cond_276
    const/4 v7, 0x1

    .line 3169
    :goto_277
    if-eqz v4, :cond_297

    .line 3170
    sub-int v4, v5, v8

    .line 3171
    sub-int v5, v6, v8

    .line 3172
    const/4 v6, 0x1

    .line 3139
    :goto_27e
    add-int/lit8 v4, v4, 0x1

    move v8, v6

    move v6, v5

    move v5, v4

    goto :goto_251

    .line 3160
    :cond_284
    const/4 v10, 0x1

    if-ne v7, v10, :cond_295

    .line 3163
    const/4 v4, 0x2

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v9, v8, v7}, Landroid/support/v7/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    move-result-object v4

    .line 3164
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/support/v7/widget/AdapterHelper;->postponeAndUpdateViewHolders(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 3165
    const/4 v4, 0x1

    .line 3167
    :cond_295
    const/4 v7, 0x0

    goto :goto_277

    .line 3174
    :cond_297
    add-int/lit8 v4, v8, 0x1

    move/from16 v17, v5

    move v5, v6

    move v6, v4

    move/from16 v4, v17

    goto :goto_27e

    .line 3177
    :cond_2a0
    iget v4, v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-eq v8, v4, :cond_2b1

    .line 3178
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/AdapterHelper;->recycleUpdateOp(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 3179
    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v9, v8, v5}, Landroid/support/v7/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    move-result-object v3

    .line 3181
    .end local v3    # "op":Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    :cond_2b1
    if-nez v7, :cond_2ba

    .line 3182
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/support/v7/widget/AdapterHelper;->dispatchAndUpdateViewHolders(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    goto/16 :goto_22f

    .line 3184
    :cond_2ba
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/support/v7/widget/AdapterHelper;->postponeAndUpdateViewHolders(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    goto/16 :goto_22f

    .line 3189
    .restart local v3    # "op":Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    :pswitch_2c1
    iget v7, v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 3190
    const/4 v5, 0x0

    .line 3191
    iget v4, v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v6, v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int v8, v4, v6

    .line 3192
    const/4 v4, -0x1

    .line 3193
    iget v6, v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    move/from16 v17, v4

    move v4, v5

    move v5, v7

    move/from16 v7, v17

    :goto_2d3
    if-ge v6, v8, :cond_326

    .line 3194
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/support/v7/widget/AdapterHelper;->mCallback:Landroid/support/v7/widget/AdapterHelper$Callback;

    invoke-interface {v9, v6}, Landroid/support/v7/widget/AdapterHelper$Callback;->findViewHolder(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v9

    .line 3195
    if-nez v9, :cond_2e7

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Landroid/support/v7/widget/AdapterHelper;->canFindInPreLayout(I)Z

    move-result v9

    if-eqz v9, :cond_30b

    .line 3196
    :cond_2e7
    if-nez v7, :cond_2f9

    .line 3197
    const/4 v7, 0x4

    iget-object v9, v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v5, v4, v9}, Landroid/support/v7/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    move-result-object v4

    .line 3199
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/support/v7/widget/AdapterHelper;->dispatchAndUpdateViewHolders(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 3200
    const/4 v4, 0x0

    move v5, v6

    .line 3203
    :cond_2f9
    const/4 v7, 0x1

    move/from16 v17, v7

    move v7, v5

    move v5, v4

    move/from16 v4, v17

    .line 3214
    :goto_300
    add-int/lit8 v5, v5, 0x1

    .line 3193
    add-int/lit8 v6, v6, 0x1

    move/from16 v17, v4

    move v4, v5

    move v5, v7

    move/from16 v7, v17

    goto :goto_2d3

    .line 3205
    :cond_30b
    const/4 v9, 0x1

    if-ne v7, v9, :cond_31e

    .line 3206
    const/4 v7, 0x4

    iget-object v9, v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v5, v4, v9}, Landroid/support/v7/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    move-result-object v4

    .line 3208
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/support/v7/widget/AdapterHelper;->postponeAndUpdateViewHolders(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 3209
    const/4 v4, 0x0

    move v5, v6

    .line 3212
    :cond_31e
    const/4 v7, 0x0

    move/from16 v17, v7

    move v7, v5

    move v5, v4

    move/from16 v4, v17

    goto :goto_300

    .line 3216
    :cond_326
    iget v6, v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-eq v4, v6, :cond_338

    .line 3217
    iget-object v6, v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    .line 3218
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/AdapterHelper;->recycleUpdateOp(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 3219
    const/4 v8, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v5, v4, v6}, Landroid/support/v7/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    move-result-object v3

    .line 3221
    .end local v3    # "op":Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    :cond_338
    if-nez v7, :cond_341

    .line 3222
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/support/v7/widget/AdapterHelper;->dispatchAndUpdateViewHolders(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    goto/16 :goto_22f

    .line 3224
    :cond_341
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/support/v7/widget/AdapterHelper;->postponeAndUpdateViewHolders(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    goto/16 :goto_22f

    .line 4131
    .restart local v3    # "op":Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    :pswitch_348
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/support/v7/widget/AdapterHelper;->postponeAndUpdateViewHolders(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    goto/16 :goto_22f

    .line 116
    .end local v3    # "op":Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    :cond_34f
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 117
    return-void

    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_357
    move v4, v5

    goto/16 :goto_6e

    .line 2047
    :pswitch_data_35a
    .packed-switch 0x1
        :pswitch_37
        :pswitch_75
        :pswitch_36
        :pswitch_19a
    .end packed-switch

    .line 98
    :pswitch_data_366
    .packed-switch 0x1
        :pswitch_23f
        :pswitch_245
        :pswitch_22f
        :pswitch_2c1
        :pswitch_22f
        :pswitch_22f
        :pswitch_22f
        :pswitch_348
    .end packed-switch
.end method

.method public final recycleUpdateOp(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V
    .registers 3
    .param p1, "op"    # Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    .prologue
    .line 742
    iget-boolean v0, p0, Landroid/support/v7/widget/AdapterHelper;->mDisableRecycler:Z

    if-nez v0, :cond_c

    .line 743
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    .line 744
    iget-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->mUpdateOpPool:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v0, p1}, Landroid/support/v4/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 746
    :cond_c
    return-void
.end method

.method final reset()V
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/AdapterHelper;->recycleUpdateOpsAndClearList(Ljava/util/List;)V

    .line 89
    iget-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/AdapterHelper;->recycleUpdateOpsAndClearList(Ljava/util/List;)V

    .line 90
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/AdapterHelper;->mExistingUpdateTypes:I

    .line 91
    return-void
.end method
