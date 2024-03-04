.class final Landroid/support/v4/app/LoaderManagerImpl;
.super Landroid/support/v4/app/LoaderManager;
.source "LoaderManager.java"


# instance fields
.field mActivity:Landroid/support/v4/app/FragmentActivity;

.field mRetaining:Z

.field mStarted:Z

.field final mWho:Ljava/lang/String;


# direct methods
.method public static dump$ec96877(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 0
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .prologue
    .line 801
    invoke-static {}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    .line 802
    invoke-static {}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    .line 812
    return-void
.end method


# virtual methods
.method final doDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 773
    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mRetaining:Z

    if-nez v0, :cond_0

    .line 774
    invoke-static {}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    .line 776
    invoke-virtual {v1}, Landroid/support/v4/util/SparseArrayCompat;->clear()V

    .line 781
    :cond_0
    invoke-static {}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    .line 783
    invoke-virtual {v1}, Landroid/support/v4/util/SparseArrayCompat;->clear()V

    .line 786
    return-void
.end method

.method final doRetain()V
    .locals 4

    .prologue
    .line 734
    iget-boolean v1, p0, Landroid/support/v4/app/LoaderManagerImpl;->mStarted:Z

    if-nez v1, :cond_0

    .line 736
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "here"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 737
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 738
    const-string v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Called doRetain when not started: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 745
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_0
    return-void

    .line 742
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v4/app/LoaderManagerImpl;->mRetaining:Z

    .line 743
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v4/app/LoaderManagerImpl;->mStarted:Z

    .line 744
    invoke-static {}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    goto :goto_0
.end method

.method final doStart()V
    .locals 4

    .prologue
    .line 701
    iget-boolean v1, p0, Landroid/support/v4/app/LoaderManagerImpl;->mStarted:Z

    if-eqz v1, :cond_0

    .line 703
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "here"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 704
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 705
    const-string v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Called doStart when already started: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 714
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_0
    return-void

    .line 709
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v4/app/LoaderManagerImpl;->mStarted:Z

    .line 713
    invoke-static {}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    goto :goto_0
.end method

.method final doStop()V
    .locals 4

    .prologue
    .line 719
    iget-boolean v1, p0, Landroid/support/v4/app/LoaderManagerImpl;->mStarted:Z

    if-nez v1, :cond_0

    .line 721
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "here"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 722
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 723
    const-string v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Called doStop when not started: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 731
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_0
    return-void

    .line 727
    :cond_0
    invoke-static {}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    .line 728
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v4/app/LoaderManagerImpl;->mStarted:Z

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 790
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 791
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "LoaderManager{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 792
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 793
    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 794
    iget-object v1, p0, Landroid/support/v4/app/LoaderManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v1, v0}, Landroid/support/v4/app/ActivityCompatHoneycomb;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 795
    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 796
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
