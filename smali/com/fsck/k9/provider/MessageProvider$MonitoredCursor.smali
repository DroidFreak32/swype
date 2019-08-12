.class public final Lcom/fsck/k9/provider/MessageProvider$MonitoredCursor;
.super Ljava/lang/Object;
.source "MessageProvider.java"

# interfaces
.implements Landroid/database/CrossProcessCursor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/provider/MessageProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MonitoredCursor"
.end annotation


# instance fields
.field private mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mCursor:Landroid/database/CrossProcessCursor;

.field private mSemaphore:Ljava/util/concurrent/Semaphore;


# direct methods
.method protected constructor <init>(Landroid/database/CrossProcessCursor;Ljava/util/concurrent/Semaphore;)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/CrossProcessCursor;
    .param p2, "semaphore"    # Ljava/util/concurrent/Semaphore;

    .prologue
    .line 489
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 477
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/fsck/k9/provider/MessageProvider$MonitoredCursor;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 490
    iput-object p1, p0, Lcom/fsck/k9/provider/MessageProvider$MonitoredCursor;->mCursor:Landroid/database/CrossProcessCursor;

    .line 491
    iput-object p2, p0, Lcom/fsck/k9/provider/MessageProvider$MonitoredCursor;->mSemaphore:Ljava/util/concurrent/Semaphore;

    .line 492
    return-void
.end method

.method private checkClosed()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 533
    iget-object v0, p0, Lcom/fsck/k9/provider/MessageProvider$MonitoredCursor;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 535
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cursor was closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 537
    :cond_0
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 3

    .prologue
    .line 503
    iget-object v0, p0, Lcom/fsck/k9/provider/MessageProvider$MonitoredCursor;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 505
    iget-object v0, p0, Lcom/fsck/k9/provider/MessageProvider$MonitoredCursor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v0}, Landroid/database/CrossProcessCursor;->close()V

    .line 506
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fsck/k9/provider/MessageProvider$MonitoredCursor;->mCursor:Landroid/database/CrossProcessCursor;

    .line 508
    iget-object v0, p0, Lcom/fsck/k9/provider/MessageProvider$MonitoredCursor;->mSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 510
    :cond_0
    return-void
.end method

.method public final copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V
    .locals 1
    .param p1, "columnIndex"    # I
    .param p2, "buffer"    # Landroid/database/CharArrayBuffer;

    .prologue
    .line 563
    invoke-direct {p0}, Lcom/fsck/k9/provider/MessageProvider$MonitoredCursor;->checkClosed()V

    .line 564
    iget-object v0, p0, Lcom/fsck/k9/provider/MessageProvider$MonitoredCursor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v0, p1, p2}, Landroid/database/CrossProcessCursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 565
    return-void
.end method

.method public final deactivate()V
    .locals 1

    .prologue
    .line 570
    invoke-direct {p0}, Lcom/fsck/k9/provider/MessageProvider$MonitoredCursor;->checkClosed()V

    .line 571
    iget-object v0, p0, Lcom/fsck/k9/provider/MessageProvider$MonitoredCursor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v0}, Landroid/database/CrossProcessCursor;->deactivate()V

    .line 572
    return-void
.end method

.method public final fillWindow(ILandroid/database/CursorWindow;)V
    .locals 1
    .param p1, "pos"    # I
    .param p2, "winow"    # Landroid/database/CursorWindow;

    .prologue
    .line 542
    invoke-direct {p0}, Lcom/fsck/k9/provider/MessageProvider$MonitoredCursor;->checkClosed()V

    .line 543
    iget-object v0, p0, Lcom/fsck/k9/provider/MessageProvider$MonitoredCursor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v0, p1, p2}, Landroid/database/CrossProcessCursor;->fillWindow(ILandroid/database/CursorWindow;)V

    .line 544
    return-void
.end method

.method protected final finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 527
    invoke-virtual {p0}, Lcom/fsck/k9/provider/MessageProvider$MonitoredCursor;->close()V

    .line 528
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 529
    return-void
.end method

.method public final getBlob(I)[B
    .locals 1
    .param p1, "columnIndex"    # I

    .prologue
    .line 577
    invoke-direct {p0}, Lcom/fsck/k9/provider/MessageProvider$MonitoredCursor;->checkClosed()V

    .line 578
    iget-object v0, p0, Lcom/fsck/k9/provider/MessageProvider$MonitoredCursor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v0, p1}, Landroid/database/CrossProcessCursor;->getBlob(I)[B

    move-result-object v0

    return-object v0
.end method

.method public final getColumnCount()I
    .locals 1

    .prologue
    .line 584
    invoke-direct {p0}, Lcom/fsck/k9/provider/MessageProvider$MonitoredCursor;->checkClosed()V

    .line 585
    iget-object v0, p0, Lcom/fsck/k9/provider/MessageProvider$MonitoredCursor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v0}, Landroid/database/CrossProcessCursor;->getColumnCount()I

    move-result v0

    return v0
.end method

.method public final getColumnIndex(Ljava/lang/String;)I
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    .line 591
    invoke-direct {p0}, Lcom/fsck/k9/provider/MessageProvider$MonitoredCursor;->checkClosed()V

    .line 592
    iget-object v0, p0, Lcom/fsck/k9/provider/MessageProvider$MonitoredCursor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v0, p1}, Landroid/database/CrossProcessCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final getColumnIndexOrThrow(Ljava/lang/String;)I
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 598
    invoke-direct {p0}, Lcom/fsck/k9/provider/MessageProvider$MonitoredCursor;->checkClosed()V

    .line 599
    iget-object v0, p0, Lcom/fsck/k9/provider/MessageProvider$MonitoredCursor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v0, p1}, Landroid/database/CrossProcessCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final getColumnName(I)Ljava/lang/String;
    .locals 1
    .param p1, "columnIndex"    # I

    .prologue
    .line 605
    invoke-direct {p0}, Lcom/fsck/k9/provider/MessageProvider$MonitoredCursor;->checkClosed()V

    .line 606
    iget-object v0, p0, Lcom/fsck/k9/provider/MessageProvider$MonitoredCursor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v0, p1}, Landroid/database/CrossProcessCursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getColumnNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 612
    invoke-direct {p0}, Lcom/fsck/k9/provider/MessageProvider$MonitoredCursor;->checkClosed()V

    .line 613
    iget-object v0, p0, Lcom/fsck/k9/provider/MessageProvider$MonitoredCursor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v0}, Landroid/database/CrossProcessCursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 619
    invoke-direct {p0}, Lcom/fsck/k9/provider/MessageProvider$MonitoredCursor;->checkClosed()V

    .line 620
    iget-object v0, p0, Lcom/fsck/k9/provider/MessageProvider$MonitoredCursor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v0}, Landroid/database/CrossProcessCursor;->getCount()I

    move-result v0

    return v0
.end method

.method public final getDouble(I)D
    .locals 2
    .param p1, "columnIndex"    # I

    .prologue
    .line 626
    invoke-direct {p0}, Lcom/fsck/k9/provider/MessageProvider$MonitoredCursor;->checkClosed()V

    .line 627
    iget-object v0, p0, Lcom/fsck/k9/provider/MessageProvider$MonitoredCursor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v0, p1}, Landroid/database/CrossProcessCursor;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public final getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 633
    invoke-direct {p0}, Lcom/fsck/k9/provider/MessageProvider$MonitoredCursor;->checkClosed()V

    .line 634
    iget-object v0, p0, Lcom/fsck/k9/provider/MessageProvider$MonitoredCursor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v0}, Landroid/database/CrossProcessCursor;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public final getFloat(I)F
    .locals 1
    .param p1, "columnIndex"    # I

    .prologue
    .line 640
    invoke-direct {p0}, Lcom/fsck/k9/provider/MessageProvider$MonitoredCursor;->checkClosed()V

    .line 641
    iget-object v0, p0, Lcom/fsck/k9/provider/MessageProvider$MonitoredCursor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v0, p1}, Landroid/database/CrossProcessCursor;->getFloat(I)F

    move-result v0

    return v0
.end method

.method public final getInt(I)I
    .locals 1
    .param p1, "columnIndex"    # I

    .prologue
    .line 647
    invoke-direct {p0}, Lcom/fsck/k9/provider/MessageProvider$MonitoredCursor;->checkClosed()V

    .line 648
    iget-object v0, p0, Lcom/fsck/k9/provider/MessageProvider$MonitoredCursor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v0, p1}, Landroid/database/CrossProcessCursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public final getLong(I)J
    .locals 2
    .param p1, "columnIndex"    # I

    .prologue
    .line 654
    invoke-direct {p0}, Lcom/fsck/k9/provider/MessageProvider$MonitoredCursor;->checkClosed()V

    .line 655
    iget-object v0, p0, Lcom/fsck/k9/provider/MessageProvider$MonitoredCursor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v0, p1}, Landroid/database/CrossProcessCursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getPosition()I
    .locals 1

    .prologue
    .line 661
    invoke-direct {p0}, Lcom/fsck/k9/provider/MessageProvider$MonitoredCursor;->checkClosed()V

    .line 662
    iget-object v0, p0, Lcom/fsck/k9/provider/MessageProvider$MonitoredCursor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v0}, Landroid/database/CrossProcessCursor;->getPosition()I

    move-result v0

    return v0
.end method

.method public final getShort(I)S
    .locals 1
    .param p1, "columnIndex"    # I

    .prologue
    .line 668
    invoke-direct {p0}, Lcom/fsck/k9/provider/MessageProvider$MonitoredCursor;->checkClosed()V

    .line 669
    iget-object v0, p0, Lcom/fsck/k9/provider/MessageProvider$MonitoredCursor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v0, p1}, Landroid/database/CrossProcessCursor;->getShort(I)S

    move-result v0

    return v0
.end method

.method public final getString(I)Ljava/lang/String;
    .locals 1
    .param p1, "columnIndex"    # I

    .prologue
    .line 675
    invoke-direct {p0}, Lcom/fsck/k9/provider/MessageProvider$MonitoredCursor;->checkClosed()V

    .line 676
    iget-object v0, p0, Lcom/fsck/k9/provider/MessageProvider$MonitoredCursor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v0, p1}, Landroid/database/CrossProcessCursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getWantsAllOnMoveCalls()Z
    .locals 1

    .prologue
    .line 682
    invoke-direct {p0}, Lcom/fsck/k9/provider/MessageProvider$MonitoredCursor;->checkClosed()V

    .line 683
    iget-object v0, p0, Lcom/fsck/k9/provider/MessageProvider$MonitoredCursor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v0}, Landroid/database/CrossProcessCursor;->getWantsAllOnMoveCalls()Z

    move-result v0

    return v0
.end method

.method public final getWindow()Landroid/database/CursorWindow;
    .locals 1

    .prologue
    .line 549
    invoke-direct {p0}, Lcom/fsck/k9/provider/MessageProvider$MonitoredCursor;->checkClosed()V

    .line 550
    iget-object v0, p0, Lcom/fsck/k9/provider/MessageProvider$MonitoredCursor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v0}, Landroid/database/CrossProcessCursor;->getWindow()Landroid/database/CursorWindow;

    move-result-object v0

    return-object v0
.end method

.method public final isAfterLast()Z
    .locals 1

    .prologue
    .line 689
    invoke-direct {p0}, Lcom/fsck/k9/provider/MessageProvider$MonitoredCursor;->checkClosed()V

    .line 690
    iget-object v0, p0, Lcom/fsck/k9/provider/MessageProvider$MonitoredCursor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v0}, Landroid/database/CrossProcessCursor;->isAfterLast()Z

    move-result v0

    return v0
.end method

.method public final isBeforeFirst()Z
    .locals 1

    .prologue
    .line 696
    invoke-direct {p0}, Lcom/fsck/k9/provider/MessageProvider$MonitoredCursor;->checkClosed()V

    .line 697
    iget-object v0, p0, Lcom/fsck/k9/provider/MessageProvider$MonitoredCursor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v0}, Landroid/database/CrossProcessCursor;->isBeforeFirst()Z

    move-result v0

    return v0
.end method

.method public final isClosed()Z
    .locals 1

    .prologue
    .line 515
    iget-object v0, p0, Lcom/fsck/k9/provider/MessageProvider$MonitoredCursor;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fsck/k9/provider/MessageProvider$MonitoredCursor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v0}, Landroid/database/CrossProcessCursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isFirst()Z
    .locals 1

    .prologue
    .line 703
    invoke-direct {p0}, Lcom/fsck/k9/provider/MessageProvider$MonitoredCursor;->checkClosed()V

    .line 704
    iget-object v0, p0, Lcom/fsck/k9/provider/MessageProvider$MonitoredCursor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v0}, Landroid/database/CrossProcessCursor;->isFirst()Z

    move-result v0

    return v0
.end method

.method public final isLast()Z
    .locals 1

    .prologue
    .line 709
    invoke-direct {p0}, Lcom/fsck/k9/provider/MessageProvider$MonitoredCursor;->checkClosed()V

    .line 710
    iget-object v0, p0, Lcom/fsck/k9/provider/MessageProvider$MonitoredCursor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v0}, Landroid/database/CrossProcessCursor;->isLast()Z

    move-result v0

    return v0
.end method

.method public final isNull(I)Z
    .locals 1
    .param p1, "columnIndex"    # I

    .prologue
    .line 716
    invoke-direct {p0}, Lcom/fsck/k9/provider/MessageProvider$MonitoredCursor;->checkClosed()V

    .line 717
    iget-object v0, p0, Lcom/fsck/k9/provider/MessageProvider$MonitoredCursor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v0, p1}, Landroid/database/CrossProcessCursor;->isNull(I)Z

    move-result v0

    return v0
.end method

.method public final move(I)Z
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 723
    invoke-direct {p0}, Lcom/fsck/k9/provider/MessageProvider$MonitoredCursor;->checkClosed()V

    .line 724
    iget-object v0, p0, Lcom/fsck/k9/provider/MessageProvider$MonitoredCursor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v0, p1}, Landroid/database/CrossProcessCursor;->move(I)Z

    move-result v0

    return v0
.end method

.method public final moveToFirst()Z
    .locals 1

    .prologue
    .line 730
    invoke-direct {p0}, Lcom/fsck/k9/provider/MessageProvider$MonitoredCursor;->checkClosed()V

    .line 731
    iget-object v0, p0, Lcom/fsck/k9/provider/MessageProvider$MonitoredCursor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v0}, Landroid/database/CrossProcessCursor;->moveToFirst()Z

    move-result v0

    return v0
.end method

.method public final moveToLast()Z
    .locals 1

    .prologue
    .line 737
    invoke-direct {p0}, Lcom/fsck/k9/provider/MessageProvider$MonitoredCursor;->checkClosed()V

    .line 738
    iget-object v0, p0, Lcom/fsck/k9/provider/MessageProvider$MonitoredCursor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v0}, Landroid/database/CrossProcessCursor;->moveToLast()Z

    move-result v0

    return v0
.end method

.method public final moveToNext()Z
    .locals 1

    .prologue
    .line 744
    invoke-direct {p0}, Lcom/fsck/k9/provider/MessageProvider$MonitoredCursor;->checkClosed()V

    .line 745
    iget-object v0, p0, Lcom/fsck/k9/provider/MessageProvider$MonitoredCursor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v0}, Landroid/database/CrossProcessCursor;->moveToNext()Z

    move-result v0

    return v0
.end method

.method public final moveToPosition(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 751
    invoke-direct {p0}, Lcom/fsck/k9/provider/MessageProvider$MonitoredCursor;->checkClosed()V

    .line 752
    iget-object v0, p0, Lcom/fsck/k9/provider/MessageProvider$MonitoredCursor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v0, p1}, Landroid/database/CrossProcessCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public final moveToPrevious()Z
    .locals 1

    .prologue
    .line 758
    invoke-direct {p0}, Lcom/fsck/k9/provider/MessageProvider$MonitoredCursor;->checkClosed()V

    .line 759
    iget-object v0, p0, Lcom/fsck/k9/provider/MessageProvider$MonitoredCursor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v0}, Landroid/database/CrossProcessCursor;->moveToPrevious()Z

    move-result v0

    return v0
.end method

.method public final onMove(II)Z
    .locals 1
    .param p1, "oldPosition"    # I
    .param p2, "newPosition"    # I

    .prologue
    .line 556
    invoke-direct {p0}, Lcom/fsck/k9/provider/MessageProvider$MonitoredCursor;->checkClosed()V

    .line 557
    iget-object v0, p0, Lcom/fsck/k9/provider/MessageProvider$MonitoredCursor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v0, p1, p2}, Landroid/database/CrossProcessCursor;->onMove(II)Z

    move-result v0

    return v0
.end method

.method public final registerContentObserver(Landroid/database/ContentObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/ContentObserver;

    .prologue
    .line 765
    invoke-direct {p0}, Lcom/fsck/k9/provider/MessageProvider$MonitoredCursor;->checkClosed()V

    .line 766
    iget-object v0, p0, Lcom/fsck/k9/provider/MessageProvider$MonitoredCursor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v0, p1}, Landroid/database/CrossProcessCursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 767
    return-void
.end method

.method public final registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 772
    invoke-direct {p0}, Lcom/fsck/k9/provider/MessageProvider$MonitoredCursor;->checkClosed()V

    .line 773
    iget-object v0, p0, Lcom/fsck/k9/provider/MessageProvider$MonitoredCursor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v0, p1}, Landroid/database/CrossProcessCursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 774
    return-void
.end method

.method public final requery()Z
    .locals 1

    .prologue
    .line 779
    invoke-direct {p0}, Lcom/fsck/k9/provider/MessageProvider$MonitoredCursor;->checkClosed()V

    .line 780
    iget-object v0, p0, Lcom/fsck/k9/provider/MessageProvider$MonitoredCursor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v0}, Landroid/database/CrossProcessCursor;->requery()Z

    move-result v0

    return v0
.end method

.method public final respond(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 786
    invoke-direct {p0}, Lcom/fsck/k9/provider/MessageProvider$MonitoredCursor;->checkClosed()V

    .line 787
    iget-object v0, p0, Lcom/fsck/k9/provider/MessageProvider$MonitoredCursor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v0, p1}, Landroid/database/CrossProcessCursor;->respond(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public final setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 1
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 793
    invoke-direct {p0}, Lcom/fsck/k9/provider/MessageProvider$MonitoredCursor;->checkClosed()V

    .line 794
    iget-object v0, p0, Lcom/fsck/k9/provider/MessageProvider$MonitoredCursor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v0, p1, p2}, Landroid/database/CrossProcessCursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 795
    return-void
.end method

.method public final unregisterContentObserver(Landroid/database/ContentObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/ContentObserver;

    .prologue
    .line 800
    invoke-direct {p0}, Lcom/fsck/k9/provider/MessageProvider$MonitoredCursor;->checkClosed()V

    .line 801
    iget-object v0, p0, Lcom/fsck/k9/provider/MessageProvider$MonitoredCursor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v0, p1}, Landroid/database/CrossProcessCursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 802
    return-void
.end method

.method public final unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 807
    invoke-direct {p0}, Lcom/fsck/k9/provider/MessageProvider$MonitoredCursor;->checkClosed()V

    .line 808
    iget-object v0, p0, Lcom/fsck/k9/provider/MessageProvider$MonitoredCursor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v0, p1}, Landroid/database/CrossProcessCursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 809
    return-void
.end method
