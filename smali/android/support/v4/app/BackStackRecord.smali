.class final Landroid/support/v4/app/BackStackRecord;
.super Landroid/support/v4/app/FragmentTransaction;
.source "BackStackRecord.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field mAddToBackStack:Z

.field mBreadCrumbShortTitleRes:I

.field mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

.field mBreadCrumbTitleRes:I

.field mBreadCrumbTitleText:Ljava/lang/CharSequence;

.field private mCommitted:Z

.field mHead$fe619d5:Landroid/support/v4/app/ActivityCompatHoneycomb;

.field mIndex:I

.field private mManager:Landroid/support/v4/app/FragmentManagerImpl;

.field mName:Ljava/lang/String;

.field mNumOp:I

.field private mTail$fe619d5:Landroid/support/v4/app/ActivityCompatHoneycomb;

.field mTransition:I

.field mTransitionStyle:I


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManagerImpl;)V
    .locals 1
    .param p1, "manager"    # Landroid/support/v4/app/FragmentManagerImpl;

    .prologue
    .line 333
    invoke-direct {p0}, Landroid/support/v4/app/FragmentTransaction;-><init>()V

    .line 209
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    .line 334
    iput-object p1, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    .line 335
    return-void
.end method


# virtual methods
.method public final add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;
    .locals 3
    .param p1, "containerViewId"    # I
    .param p2, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p3, "tag"    # Ljava/lang/String;

    .prologue
    .line 389
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iput-object v0, p2, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz p3, :cond_1

    iget-object v0, p2, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p2, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t change tag of fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " now "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p3, p2, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    :cond_1
    if-eqz p1, :cond_3

    iget v0, p2, Landroid/support/v4/app/Fragment;->mFragmentId:I

    if-eqz v0, :cond_2

    iget v0, p2, Landroid/support/v4/app/Fragment;->mFragmentId:I

    if-eq v0, p1, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t change container ID of fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Landroid/support/v4/app/Fragment;->mFragmentId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " now "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput p1, p2, Landroid/support/v4/app/Fragment;->mFragmentId:I

    iput p1, p2, Landroid/support/v4/app/Fragment;->mContainerId:I

    :cond_3
    new-instance v0, Landroid/support/v4/app/ActivityCompatHoneycomb;

    invoke-direct {v0}, Landroid/support/v4/app/ActivityCompatHoneycomb;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Landroid/support/v4/app/ActivityCompatHoneycomb;->cmd:I

    iput-object p2, v0, Landroid/support/v4/app/ActivityCompatHoneycomb;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {p0, v0}, Landroid/support/v4/app/BackStackRecord;->addOp$568ae146(Landroid/support/v4/app/ActivityCompatHoneycomb;)V

    .line 390
    return-object p0
.end method

.method final addOp$568ae146(Landroid/support/v4/app/ActivityCompatHoneycomb;)V
    .locals 2
    .param p1, "op"    # Landroid/support/v4/app/ActivityCompatHoneycomb;

    .prologue
    const/4 v1, 0x0

    .line 364
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mHead$fe619d5:Landroid/support/v4/app/ActivityCompatHoneycomb;

    if-nez v0, :cond_0

    .line 365
    iput-object p1, p0, Landroid/support/v4/app/BackStackRecord;->mTail$fe619d5:Landroid/support/v4/app/ActivityCompatHoneycomb;

    iput-object p1, p0, Landroid/support/v4/app/BackStackRecord;->mHead$fe619d5:Landroid/support/v4/app/ActivityCompatHoneycomb;

    .line 371
    :goto_0
    iput v1, p1, Landroid/support/v4/app/ActivityCompatHoneycomb;->enterAnim:I

    .line 372
    iput v1, p1, Landroid/support/v4/app/ActivityCompatHoneycomb;->exitAnim:I

    .line 373
    iput v1, p1, Landroid/support/v4/app/ActivityCompatHoneycomb;->popEnterAnim:I

    .line 374
    iput v1, p1, Landroid/support/v4/app/ActivityCompatHoneycomb;->popExitAnim:I

    .line 375
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mNumOp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v4/app/BackStackRecord;->mNumOp:I

    .line 376
    return-void

    .line 367
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mTail$fe619d5:Landroid/support/v4/app/ActivityCompatHoneycomb;

    iput-object v0, p1, Landroid/support/v4/app/ActivityCompatHoneycomb;->prev$fe619d5:Landroid/support/v4/app/ActivityCompatHoneycomb;

    .line 368
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mTail$fe619d5:Landroid/support/v4/app/ActivityCompatHoneycomb;

    iput-object p1, v0, Landroid/support/v4/app/ActivityCompatHoneycomb;->next$fe619d5:Landroid/support/v4/app/ActivityCompatHoneycomb;

    .line 369
    iput-object p1, p0, Landroid/support/v4/app/BackStackRecord;->mTail$fe619d5:Landroid/support/v4/app/ActivityCompatHoneycomb;

    goto :goto_0
.end method

.method public final attach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
    .locals 2
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 470
    new-instance v0, Landroid/support/v4/app/ActivityCompatHoneycomb;

    invoke-direct {v0}, Landroid/support/v4/app/ActivityCompatHoneycomb;-><init>()V

    .line 471
    .local v0, "op":Landroid/support/v4/app/ActivityCompatHoneycomb;
    const/4 v1, 0x7

    iput v1, v0, Landroid/support/v4/app/ActivityCompatHoneycomb;->cmd:I

    .line 472
    iput-object p1, v0, Landroid/support/v4/app/ActivityCompatHoneycomb;->fragment:Landroid/support/v4/app/Fragment;

    .line 473
    invoke-virtual {p0, v0}, Landroid/support/v4/app/BackStackRecord;->addOp$568ae146(Landroid/support/v4/app/ActivityCompatHoneycomb;)V

    .line 475
    return-object p0
.end method

.method final bumpBackStackNesting(I)V
    .locals 4
    .param p1, "amt"    # I

    .prologue
    .line 549
    iget-boolean v2, p0, Landroid/support/v4/app/BackStackRecord;->mAddToBackStack:Z

    if-nez v2, :cond_1

    .line 571
    :cond_0
    return-void

    .line 552
    :cond_1
    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->mHead$fe619d5:Landroid/support/v4/app/ActivityCompatHoneycomb;

    .line 555
    .local v1, "op":Landroid/support/v4/app/ActivityCompatHoneycomb;
    :goto_0
    if-eqz v1, :cond_0

    .line 556
    iget-object v2, v1, Landroid/support/v4/app/ActivityCompatHoneycomb;->fragment:Landroid/support/v4/app/Fragment;

    if-eqz v2, :cond_2

    .line 557
    iget-object v2, v1, Landroid/support/v4/app/ActivityCompatHoneycomb;->fragment:Landroid/support/v4/app/Fragment;

    iget v3, v2, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    add-int/2addr v3, p1

    iput v3, v2, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    .line 558
    :cond_2
    iget-object v2, v1, Landroid/support/v4/app/ActivityCompatHoneycomb;->removed:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    .line 562
    iget-object v2, v1, Landroid/support/v4/app/ActivityCompatHoneycomb;->removed:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_3

    .line 563
    iget-object v2, v1, Landroid/support/v4/app/ActivityCompatHoneycomb;->removed:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/Fragment;

    .line 564
    iget v3, v2, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    add-int/2addr v3, p1

    iput v3, v2, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    .line 565
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 569
    .end local v0    # "i":I
    :cond_3
    iget-object v1, v1, Landroid/support/v4/app/ActivityCompatHoneycomb;->next$fe619d5:Landroid/support/v4/app/ActivityCompatHoneycomb;

    goto :goto_0
.end method

.method public final commit()I
    .locals 2

    .prologue
    .line 574
    iget-boolean v0, p0, Landroid/support/v4/app/BackStackRecord;->mCommitted:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "commit already called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/BackStackRecord;->mCommitted:Z

    iget-boolean v0, p0, Landroid/support/v4/app/BackStackRecord;->mAddToBackStack:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0, p0}, Landroid/support/v4/app/FragmentManagerImpl;->allocBackStackIndex(Landroid/support/v4/app/BackStackRecord;)I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0, p0}, Landroid/support/v4/app/FragmentManagerImpl;->enqueueAction$574583f(Ljava/lang/Runnable;)V

    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    return v0

    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    goto :goto_0
.end method

.method public final detach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
    .locals 2
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 461
    new-instance v0, Landroid/support/v4/app/ActivityCompatHoneycomb;

    invoke-direct {v0}, Landroid/support/v4/app/ActivityCompatHoneycomb;-><init>()V

    .line 462
    .local v0, "op":Landroid/support/v4/app/ActivityCompatHoneycomb;
    const/4 v1, 0x6

    iput v1, v0, Landroid/support/v4/app/ActivityCompatHoneycomb;->cmd:I

    .line 463
    iput-object p1, v0, Landroid/support/v4/app/ActivityCompatHoneycomb;->fragment:Landroid/support/v4/app/Fragment;

    .line 464
    invoke-virtual {p0, v0}, Landroid/support/v4/app/BackStackRecord;->addOp$568ae146(Landroid/support/v4/app/ActivityCompatHoneycomb;)V

    .line 466
    return-object p0
.end method

.method public final dump$ec96877(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 7
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/PrintWriter;

    .prologue
    const/4 v1, 0x0

    .line 237
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mName="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mIndex="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mCommitted="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/BackStackRecord;->mCommitted:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mTransition:I

    if-eqz v0, :cond_0

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTransition=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mTransition:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mTransitionStyle=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleRes:I

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mBreadCrumbTitleRes=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleRes:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mBreadCrumbTitleText="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_2
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_4

    :cond_3
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mBreadCrumbShortTitleRes=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mBreadCrumbShortTitleText="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_4
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mHead$fe619d5:Landroid/support/v4/app/ActivityCompatHoneycomb;

    if-eqz v0, :cond_c

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Operations:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "    "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mHead$fe619d5:Landroid/support/v4/app/ActivityCompatHoneycomb;

    move v2, v1

    move-object v3, v0

    :goto_0
    if-eqz v3, :cond_c

    iget v0, v3, Landroid/support/v4/app/ActivityCompatHoneycomb;->cmd:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "cmd="

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v3, Landroid/support/v4/app/ActivityCompatHoneycomb;->cmd:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  Op #"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, ": "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v3, Landroid/support/v4/app/ActivityCompatHoneycomb;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget v0, v3, Landroid/support/v4/app/ActivityCompatHoneycomb;->enterAnim:I

    if-nez v0, :cond_5

    iget v0, v3, Landroid/support/v4/app/ActivityCompatHoneycomb;->exitAnim:I

    if-eqz v0, :cond_6

    :cond_5
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "enterAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v3, Landroid/support/v4/app/ActivityCompatHoneycomb;->enterAnim:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " exitAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v3, Landroid/support/v4/app/ActivityCompatHoneycomb;->exitAnim:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_6
    iget v0, v3, Landroid/support/v4/app/ActivityCompatHoneycomb;->popEnterAnim:I

    if-nez v0, :cond_7

    iget v0, v3, Landroid/support/v4/app/ActivityCompatHoneycomb;->popExitAnim:I

    if-eqz v0, :cond_8

    :cond_7
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "popEnterAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v3, Landroid/support/v4/app/ActivityCompatHoneycomb;->popEnterAnim:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " popExitAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v3, Landroid/support/v4/app/ActivityCompatHoneycomb;->popExitAnim:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_8
    iget-object v0, v3, Landroid/support/v4/app/ActivityCompatHoneycomb;->removed:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    iget-object v0, v3, Landroid/support/v4/app/ActivityCompatHoneycomb;->removed:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_b

    move v0, v1

    :goto_2
    iget-object v5, v3, Landroid/support/v4/app/ActivityCompatHoneycomb;->removed:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_b

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v3, Landroid/support/v4/app/ActivityCompatHoneycomb;->removed:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_9

    const-string v5, "Removed: "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_3
    iget-object v5, v3, Landroid/support/v4/app/ActivityCompatHoneycomb;->removed:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :pswitch_0
    const-string v0, "NULL"

    goto/16 :goto_1

    :pswitch_1
    const-string v0, "ADD"

    goto/16 :goto_1

    :pswitch_2
    const-string v0, "REPLACE"

    goto/16 :goto_1

    :pswitch_3
    const-string v0, "REMOVE"

    goto/16 :goto_1

    :pswitch_4
    const-string v0, "HIDE"

    goto/16 :goto_1

    :pswitch_5
    const-string v0, "SHOW"

    goto/16 :goto_1

    :pswitch_6
    const-string v0, "DETACH"

    goto/16 :goto_1

    :pswitch_7
    const-string v0, "ATTACH"

    goto/16 :goto_1

    :cond_9
    if-nez v0, :cond_a

    const-string v5, "Removed:"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_a
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  #"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, ": "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_3

    :cond_b
    iget-object v3, v3, Landroid/support/v4/app/ActivityCompatHoneycomb;->next$fe619d5:Landroid/support/v4/app/ActivityCompatHoneycomb;

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0

    .line 238
    :cond_c
    return-void

    .line 237
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public final popFromBackStack$1385ff()V
    .locals 10

    .prologue
    const/4 v7, 0x0

    const/4 v9, -0x1

    .line 691
    invoke-virtual {p0, v9}, Landroid/support/v4/app/BackStackRecord;->bumpBackStackNesting(I)V

    .line 700
    iget-object v3, p0, Landroid/support/v4/app/BackStackRecord;->mTail$fe619d5:Landroid/support/v4/app/ActivityCompatHoneycomb;

    .line 701
    .local v3, "op":Landroid/support/v4/app/ActivityCompatHoneycomb;
    :goto_0
    if-eqz v3, :cond_2

    .line 702
    iget v4, v3, Landroid/support/v4/app/ActivityCompatHoneycomb;->cmd:I

    packed-switch v4, :pswitch_data_0

    .line 756
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Unknown cmd: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v3, Landroid/support/v4/app/ActivityCompatHoneycomb;->cmd:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 704
    :pswitch_0
    iget-object v0, v3, Landroid/support/v4/app/ActivityCompatHoneycomb;->fragment:Landroid/support/v4/app/Fragment;

    .line 705
    .local v0, "f":Landroid/support/v4/app/Fragment;
    iget v4, v3, Landroid/support/v4/app/ActivityCompatHoneycomb;->popExitAnim:I

    iput v4, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 706
    iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget v5, p0, Landroid/support/v4/app/BackStackRecord;->mTransition:I

    invoke-static {v5}, Landroid/support/v4/app/FragmentManagerImpl;->reverseTransit(I)I

    move-result v5

    iget v6, p0, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I

    invoke-virtual {v4, v0, v5, v6}, Landroid/support/v4/app/FragmentManagerImpl;->removeFragment(Landroid/support/v4/app/Fragment;II)V

    .line 760
    :cond_0
    :goto_1
    iget-object v3, v3, Landroid/support/v4/app/ActivityCompatHoneycomb;->prev$fe619d5:Landroid/support/v4/app/ActivityCompatHoneycomb;

    goto :goto_0

    .line 711
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    :pswitch_1
    iget-object v0, v3, Landroid/support/v4/app/ActivityCompatHoneycomb;->fragment:Landroid/support/v4/app/Fragment;

    .line 712
    .restart local v0    # "f":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_1

    .line 713
    iget v4, v3, Landroid/support/v4/app/ActivityCompatHoneycomb;->popExitAnim:I

    iput v4, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 714
    iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget v5, p0, Landroid/support/v4/app/BackStackRecord;->mTransition:I

    invoke-static {v5}, Landroid/support/v4/app/FragmentManagerImpl;->reverseTransit(I)I

    move-result v5

    iget v6, p0, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I

    invoke-virtual {v4, v0, v5, v6}, Landroid/support/v4/app/FragmentManagerImpl;->removeFragment(Landroid/support/v4/app/Fragment;II)V

    .line 718
    :cond_1
    iget-object v4, v3, Landroid/support/v4/app/ActivityCompatHoneycomb;->removed:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    .line 719
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v4, v3, Landroid/support/v4/app/ActivityCompatHoneycomb;->removed:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 720
    iget-object v4, v3, Landroid/support/v4/app/ActivityCompatHoneycomb;->removed:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/Fragment;

    .line 721
    .local v2, "old":Landroid/support/v4/app/Fragment;
    iget v4, v3, Landroid/support/v4/app/ActivityCompatHoneycomb;->popEnterAnim:I

    iput v4, v2, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 722
    iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v4, v2, v7}, Landroid/support/v4/app/FragmentManagerImpl;->addFragment(Landroid/support/v4/app/Fragment;Z)V

    .line 719
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 727
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    .end local v1    # "i":I
    .end local v2    # "old":Landroid/support/v4/app/Fragment;
    :pswitch_2
    iget-object v0, v3, Landroid/support/v4/app/ActivityCompatHoneycomb;->fragment:Landroid/support/v4/app/Fragment;

    .line 728
    .restart local v0    # "f":Landroid/support/v4/app/Fragment;
    iget v4, v3, Landroid/support/v4/app/ActivityCompatHoneycomb;->popEnterAnim:I

    iput v4, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 729
    iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v4, v0, v7}, Landroid/support/v4/app/FragmentManagerImpl;->addFragment(Landroid/support/v4/app/Fragment;Z)V

    goto :goto_1

    .line 732
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    :pswitch_3
    iget-object v0, v3, Landroid/support/v4/app/ActivityCompatHoneycomb;->fragment:Landroid/support/v4/app/Fragment;

    .line 733
    .restart local v0    # "f":Landroid/support/v4/app/Fragment;
    iget v4, v3, Landroid/support/v4/app/ActivityCompatHoneycomb;->popEnterAnim:I

    iput v4, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 734
    iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget v5, p0, Landroid/support/v4/app/BackStackRecord;->mTransition:I

    invoke-static {v5}, Landroid/support/v4/app/FragmentManagerImpl;->reverseTransit(I)I

    move-result v5

    iget v6, p0, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I

    invoke-virtual {v4, v0, v5, v6}, Landroid/support/v4/app/FragmentManagerImpl;->showFragment(Landroid/support/v4/app/Fragment;II)V

    goto :goto_1

    .line 738
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    :pswitch_4
    iget-object v0, v3, Landroid/support/v4/app/ActivityCompatHoneycomb;->fragment:Landroid/support/v4/app/Fragment;

    .line 739
    .restart local v0    # "f":Landroid/support/v4/app/Fragment;
    iget v4, v3, Landroid/support/v4/app/ActivityCompatHoneycomb;->popExitAnim:I

    iput v4, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 740
    iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget v5, p0, Landroid/support/v4/app/BackStackRecord;->mTransition:I

    invoke-static {v5}, Landroid/support/v4/app/FragmentManagerImpl;->reverseTransit(I)I

    move-result v5

    iget v6, p0, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I

    invoke-virtual {v4, v0, v5, v6}, Landroid/support/v4/app/FragmentManagerImpl;->hideFragment(Landroid/support/v4/app/Fragment;II)V

    goto :goto_1

    .line 744
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    :pswitch_5
    iget-object v0, v3, Landroid/support/v4/app/ActivityCompatHoneycomb;->fragment:Landroid/support/v4/app/Fragment;

    .line 745
    .restart local v0    # "f":Landroid/support/v4/app/Fragment;
    iget v4, v3, Landroid/support/v4/app/ActivityCompatHoneycomb;->popEnterAnim:I

    iput v4, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 746
    iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget v5, p0, Landroid/support/v4/app/BackStackRecord;->mTransition:I

    invoke-static {v5}, Landroid/support/v4/app/FragmentManagerImpl;->reverseTransit(I)I

    move-result v5

    iget v6, p0, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I

    invoke-virtual {v4, v0, v5, v6}, Landroid/support/v4/app/FragmentManagerImpl;->attachFragment(Landroid/support/v4/app/Fragment;II)V

    goto :goto_1

    .line 750
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    :pswitch_6
    iget-object v0, v3, Landroid/support/v4/app/ActivityCompatHoneycomb;->fragment:Landroid/support/v4/app/Fragment;

    .line 751
    .restart local v0    # "f":Landroid/support/v4/app/Fragment;
    iget v4, v3, Landroid/support/v4/app/ActivityCompatHoneycomb;->popEnterAnim:I

    iput v4, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 752
    iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget v5, p0, Landroid/support/v4/app/BackStackRecord;->mTransition:I

    invoke-static {v5}, Landroid/support/v4/app/FragmentManagerImpl;->reverseTransit(I)I

    move-result v5

    iget v6, p0, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I

    invoke-virtual {v4, v0, v5, v6}, Landroid/support/v4/app/FragmentManagerImpl;->detachFragment(Landroid/support/v4/app/Fragment;II)V

    goto/16 :goto_1

    .line 763
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    :cond_2
    iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v5, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget v5, v5, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    iget v6, p0, Landroid/support/v4/app/BackStackRecord;->mTransition:I

    invoke-static {v6}, Landroid/support/v4/app/FragmentManagerImpl;->reverseTransit(I)I

    move-result v6

    iget v7, p0, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I

    const/4 v8, 0x1

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(IIIZ)V

    .line 768
    iget v4, p0, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    if-ltz v4, :cond_3

    .line 769
    iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget v5, p0, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentManagerImpl;->freeBackStackIndex(I)V

    .line 770
    iput v9, p0, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    .line 772
    :cond_3
    return-void

    .line 702
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public final run()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 600
    iget-boolean v4, p0, Landroid/support/v4/app/BackStackRecord;->mAddToBackStack:Z

    if-eqz v4, :cond_0

    .line 603
    iget v4, p0, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    if-gez v4, :cond_0

    .line 604
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "addToBackStack() called after commit()"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 608
    :cond_0
    invoke-virtual {p0, v8}, Landroid/support/v4/app/BackStackRecord;->bumpBackStackNesting(I)V

    .line 610
    iget-object v3, p0, Landroid/support/v4/app/BackStackRecord;->mHead$fe619d5:Landroid/support/v4/app/ActivityCompatHoneycomb;

    .line 611
    .local v3, "op":Landroid/support/v4/app/ActivityCompatHoneycomb;
    :goto_0
    if-eqz v3, :cond_8

    .line 612
    iget v4, v3, Landroid/support/v4/app/ActivityCompatHoneycomb;->cmd:I

    packed-switch v4, :pswitch_data_0

    .line 675
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Unknown cmd: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v3, Landroid/support/v4/app/ActivityCompatHoneycomb;->cmd:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 614
    :pswitch_0
    iget-object v0, v3, Landroid/support/v4/app/ActivityCompatHoneycomb;->fragment:Landroid/support/v4/app/Fragment;

    .line 615
    .local v0, "f":Landroid/support/v4/app/Fragment;
    iget v4, v3, Landroid/support/v4/app/ActivityCompatHoneycomb;->enterAnim:I

    iput v4, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 616
    iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v4, v0, v7}, Landroid/support/v4/app/FragmentManagerImpl;->addFragment(Landroid/support/v4/app/Fragment;Z)V

    .line 679
    :cond_1
    :goto_1
    iget-object v3, v3, Landroid/support/v4/app/ActivityCompatHoneycomb;->next$fe619d5:Landroid/support/v4/app/ActivityCompatHoneycomb;

    goto :goto_0

    .line 619
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    :pswitch_1
    iget-object v0, v3, Landroid/support/v4/app/ActivityCompatHoneycomb;->fragment:Landroid/support/v4/app/Fragment;

    .line 620
    .restart local v0    # "f":Landroid/support/v4/app/Fragment;
    iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v4, v4, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v4, :cond_7

    .line 621
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v4, v4, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_7

    .line 622
    iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v4, v4, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/Fragment;

    .line 623
    .local v2, "old":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_2

    iget v4, v2, Landroid/support/v4/app/Fragment;->mContainerId:I

    iget v5, v0, Landroid/support/v4/app/Fragment;->mContainerId:I

    if-ne v4, v5, :cond_3

    .line 626
    :cond_2
    if-ne v2, v0, :cond_4

    .line 627
    const/4 v0, 0x0

    iput-object v0, v3, Landroid/support/v4/app/ActivityCompatHoneycomb;->fragment:Landroid/support/v4/app/Fragment;

    .line 621
    :cond_3
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 629
    :cond_4
    iget-object v4, v3, Landroid/support/v4/app/ActivityCompatHoneycomb;->removed:Ljava/util/ArrayList;

    if-nez v4, :cond_5

    .line 630
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Landroid/support/v4/app/ActivityCompatHoneycomb;->removed:Ljava/util/ArrayList;

    .line 632
    :cond_5
    iget-object v4, v3, Landroid/support/v4/app/ActivityCompatHoneycomb;->removed:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 633
    iget v4, v3, Landroid/support/v4/app/ActivityCompatHoneycomb;->exitAnim:I

    iput v4, v2, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 634
    iget-boolean v4, p0, Landroid/support/v4/app/BackStackRecord;->mAddToBackStack:Z

    if-eqz v4, :cond_6

    .line 635
    iget v4, v2, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v2, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    .line 636
    :cond_6
    iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget v5, p0, Landroid/support/v4/app/BackStackRecord;->mTransition:I

    iget v6, p0, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I

    invoke-virtual {v4, v2, v5, v6}, Landroid/support/v4/app/FragmentManagerImpl;->removeFragment(Landroid/support/v4/app/Fragment;II)V

    goto :goto_3

    .line 644
    .end local v1    # "i":I
    .end local v2    # "old":Landroid/support/v4/app/Fragment;
    :cond_7
    if-eqz v0, :cond_1

    .line 645
    iget v4, v3, Landroid/support/v4/app/ActivityCompatHoneycomb;->enterAnim:I

    iput v4, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 646
    iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v4, v0, v7}, Landroid/support/v4/app/FragmentManagerImpl;->addFragment(Landroid/support/v4/app/Fragment;Z)V

    goto :goto_1

    .line 650
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    :pswitch_2
    iget-object v0, v3, Landroid/support/v4/app/ActivityCompatHoneycomb;->fragment:Landroid/support/v4/app/Fragment;

    .line 651
    .restart local v0    # "f":Landroid/support/v4/app/Fragment;
    iget v4, v3, Landroid/support/v4/app/ActivityCompatHoneycomb;->exitAnim:I

    iput v4, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 652
    iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget v5, p0, Landroid/support/v4/app/BackStackRecord;->mTransition:I

    iget v6, p0, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I

    invoke-virtual {v4, v0, v5, v6}, Landroid/support/v4/app/FragmentManagerImpl;->removeFragment(Landroid/support/v4/app/Fragment;II)V

    goto :goto_1

    .line 655
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    :pswitch_3
    iget-object v0, v3, Landroid/support/v4/app/ActivityCompatHoneycomb;->fragment:Landroid/support/v4/app/Fragment;

    .line 656
    .restart local v0    # "f":Landroid/support/v4/app/Fragment;
    iget v4, v3, Landroid/support/v4/app/ActivityCompatHoneycomb;->exitAnim:I

    iput v4, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 657
    iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget v5, p0, Landroid/support/v4/app/BackStackRecord;->mTransition:I

    iget v6, p0, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I

    invoke-virtual {v4, v0, v5, v6}, Landroid/support/v4/app/FragmentManagerImpl;->hideFragment(Landroid/support/v4/app/Fragment;II)V

    goto/16 :goto_1

    .line 660
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    :pswitch_4
    iget-object v0, v3, Landroid/support/v4/app/ActivityCompatHoneycomb;->fragment:Landroid/support/v4/app/Fragment;

    .line 661
    .restart local v0    # "f":Landroid/support/v4/app/Fragment;
    iget v4, v3, Landroid/support/v4/app/ActivityCompatHoneycomb;->enterAnim:I

    iput v4, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 662
    iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget v5, p0, Landroid/support/v4/app/BackStackRecord;->mTransition:I

    iget v6, p0, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I

    invoke-virtual {v4, v0, v5, v6}, Landroid/support/v4/app/FragmentManagerImpl;->showFragment(Landroid/support/v4/app/Fragment;II)V

    goto/16 :goto_1

    .line 665
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    :pswitch_5
    iget-object v0, v3, Landroid/support/v4/app/ActivityCompatHoneycomb;->fragment:Landroid/support/v4/app/Fragment;

    .line 666
    .restart local v0    # "f":Landroid/support/v4/app/Fragment;
    iget v4, v3, Landroid/support/v4/app/ActivityCompatHoneycomb;->exitAnim:I

    iput v4, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 667
    iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget v5, p0, Landroid/support/v4/app/BackStackRecord;->mTransition:I

    iget v6, p0, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I

    invoke-virtual {v4, v0, v5, v6}, Landroid/support/v4/app/FragmentManagerImpl;->detachFragment(Landroid/support/v4/app/Fragment;II)V

    goto/16 :goto_1

    .line 670
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    :pswitch_6
    iget-object v0, v3, Landroid/support/v4/app/ActivityCompatHoneycomb;->fragment:Landroid/support/v4/app/Fragment;

    .line 671
    .restart local v0    # "f":Landroid/support/v4/app/Fragment;
    iget v4, v3, Landroid/support/v4/app/ActivityCompatHoneycomb;->enterAnim:I

    iput v4, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 672
    iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget v5, p0, Landroid/support/v4/app/BackStackRecord;->mTransition:I

    iget v6, p0, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I

    invoke-virtual {v4, v0, v5, v6}, Landroid/support/v4/app/FragmentManagerImpl;->attachFragment(Landroid/support/v4/app/Fragment;II)V

    goto/16 :goto_1

    .line 682
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    :cond_8
    iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v5, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget v5, v5, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    iget v6, p0, Landroid/support/v4/app/BackStackRecord;->mTransition:I

    iget v7, p0, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(IIIZ)V

    .line 685
    iget-boolean v4, p0, Landroid/support/v4/app/BackStackRecord;->mAddToBackStack:Z

    if-eqz v4, :cond_9

    .line 686
    iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v4, p0}, Landroid/support/v4/app/FragmentManagerImpl;->addBackStackState(Landroid/support/v4/app/BackStackRecord;)V

    .line 688
    :cond_9
    return-void

    .line 612
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 222
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "BackStackEntry{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    iget v1, p0, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    if-ltz v1, :cond_0

    .line 225
    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    iget v1, p0, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 228
    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->mName:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 229
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    :cond_1
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
