.class public final Lcom/fsck/k9/helper/MessageHelper;
.super Ljava/lang/Object;
.source "MessageHelper.java"


# static fields
.field private static sInstance:Lcom/fsck/k9/helper/MessageHelper;


# instance fields
.field public mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/fsck/k9/helper/MessageHelper;->mContext:Landroid/content/Context;

    .line 48
    iget-object v0, p0, Lcom/fsck/k9/helper/MessageHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/fsck/k9/activity/DateFormatter;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    .line 49
    iget-object v0, p0, Lcom/fsck/k9/helper/MessageHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    .line 50
    iget-object v0, p0, Lcom/fsck/k9/helper/MessageHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    .line 51
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/fsck/k9/helper/MessageHelper;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    const-class v1, Lcom/fsck/k9/helper/MessageHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/fsck/k9/helper/MessageHelper;->sInstance:Lcom/fsck/k9/helper/MessageHelper;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/fsck/k9/helper/MessageHelper;

    invoke-direct {v0, p0}, Lcom/fsck/k9/helper/MessageHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/fsck/k9/helper/MessageHelper;->sInstance:Lcom/fsck/k9/helper/MessageHelper;

    .line 34
    :cond_0
    sget-object v0, Lcom/fsck/k9/helper/MessageHelper;->sInstance:Lcom/fsck/k9/helper/MessageHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 30
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
