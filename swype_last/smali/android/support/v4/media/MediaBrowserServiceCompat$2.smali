.class final Landroid/support/v4/media/MediaBrowserServiceCompat$2;
.super Landroid/support/v4/media/MediaBrowserServiceCompat$Result;
.source "MediaBrowserServiceCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserServiceCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/media/MediaBrowserServiceCompat$Result",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;

.field final synthetic val$receiver:Landroid/support/v4/os/ResultReceiver;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaBrowserServiceCompat;Ljava/lang/Object;Landroid/support/v4/os/ResultReceiver;)V
    .registers 4
    .param p1, "this$0"    # Landroid/support/v4/media/MediaBrowserServiceCompat;
    .param p2, "debug"    # Ljava/lang/Object;

    .prologue
    .line 1084
    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$2;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;

    iput-object p3, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$2;->val$receiver:Landroid/support/v4/os/ResultReceiver;

    invoke-direct {p0, p2}, Landroid/support/v4/media/MediaBrowserServiceCompat$Result;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method final bridge synthetic onResultSent$4cfcfd12(I)V
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 1084
    .line 2087
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2088
    const-string/jumbo v1, "media_item"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2089
    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$2;->val$receiver:Landroid/support/v4/os/ResultReceiver;

    .line 3088
    iget-boolean v2, v1, Landroid/support/v4/os/ResultReceiver;->mLocal:Z

    if-eqz v2, :cond_22

    .line 3089
    iget-object v2, v1, Landroid/support/v4/os/ResultReceiver;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_21

    .line 3090
    iget-object v2, v1, Landroid/support/v4/os/ResultReceiver;->mHandler:Landroid/os/Handler;

    new-instance v3, Landroid/support/v4/os/ResultReceiver$MyRunnable;

    invoke-direct {v3, v1, v4, v0}, Landroid/support/v4/os/ResultReceiver$MyRunnable;-><init>(Landroid/support/v4/os/ResultReceiver;ILandroid/os/Bundle;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3101
    :cond_21
    :goto_21
    return-void

    .line 3097
    :cond_22
    iget-object v2, v1, Landroid/support/v4/os/ResultReceiver;->mReceiver:Landroid/support/v4/os/IResultReceiver;

    if-eqz v2, :cond_21

    .line 3099
    :try_start_26
    iget-object v1, v1, Landroid/support/v4/os/ResultReceiver;->mReceiver:Landroid/support/v4/os/IResultReceiver;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Landroid/support/v4/os/IResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_2c} :catch_2d

    goto :goto_21

    :catch_2d
    move-exception v0

    goto :goto_21
.end method
