.class final Lcom/fsck/k9/provider/MessageProvider$ThrottlingQueryHandler$1;
.super Ljava/lang/Object;
.source "MessageProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/provider/MessageProvider$ThrottlingQueryHandler;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic val$weakReference:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 0

    .prologue
    .line 851
    iput-object p1, p0, Lcom/fsck/k9/provider/MessageProvider$ThrottlingQueryHandler$1;->val$weakReference:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 856
    iget-object v2, p0, Lcom/fsck/k9/provider/MessageProvider$ThrottlingQueryHandler$1;->val$weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/provider/MessageProvider$MonitoredCursor;

    .line 857
    .local v1, "monitored":Lcom/fsck/k9/provider/MessageProvider$MonitoredCursor;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/fsck/k9/provider/MessageProvider$MonitoredCursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 859
    const-string v2, "k9"

    const-string v3, "Forcibly closing remotely exposed cursor"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    :try_start_0
    invoke-virtual {v1}, Lcom/fsck/k9/provider/MessageProvider$MonitoredCursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 869
    :cond_0
    :goto_0
    return-void

    .line 864
    :catch_0
    move-exception v0

    .line 866
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "k9"

    const-string v3, "Exception while forcibly closing cursor"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
