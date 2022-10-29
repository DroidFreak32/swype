.class public Landroid/support/v4/media/MediaBrowserServiceCompat$Result;
.super Ljava/lang/Object;
.source "MediaBrowserServiceCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserServiceCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field mDebug:Ljava/lang/Object;

.field private mDetachCalled:Z

.field mFlags:I

.field mSendResultCalled:Z


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .param p1, "debug"    # Ljava/lang/Object;

    .prologue
    .line 492
    .local p0, "this":Landroid/support/v4/media/MediaBrowserServiceCompat$Result;, "Landroid/support/v4/media/MediaBrowserServiceCompat$Result<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 493
    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$Result;->mDebug:Ljava/lang/Object;

    .line 494
    return-void
.end method


# virtual methods
.method final isDone()Z
    .registers 2

    .prologue
    .line 524
    .local p0, "this":Landroid/support/v4/media/MediaBrowserServiceCompat$Result;, "Landroid/support/v4/media/MediaBrowserServiceCompat$Result<TT;>;"
    iget-boolean v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$Result;->mDetachCalled:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$Result;->mSendResultCalled:Z

    if-eqz v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method onResultSent$4cfcfd12(I)V
    .registers 2
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 536
    .local p0, "this":Landroid/support/v4/media/MediaBrowserServiceCompat$Result;, "Landroid/support/v4/media/MediaBrowserServiceCompat$Result<TT;>;"
    return-void
.end method
