.class public final Lcom/fsck/k9/provider/MessageProvider$1$1;
.super Lcom/fsck/k9/controller/MessagingListener;
.source "MessageProvider.java"


# instance fields
.field private synthetic val$application:Lcom/fsck/k9/K9;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/K9;)V
    .locals 0

    .prologue
    .line 990
    iput-object p1, p0, Lcom/fsck/k9/provider/MessageProvider$1$1;->val$application:Lcom/fsck/k9/K9;

    invoke-direct {p0}, Lcom/fsck/k9/controller/MessagingListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final searchStats$4ed473c3()V
    .locals 3

    .prologue
    .line 994
    iget-object v0, p0, Lcom/fsck/k9/provider/MessageProvider$1$1;->val$application:Lcom/fsck/k9/K9;

    invoke-virtual {v0}, Lcom/fsck/k9/K9;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/fsck/k9/provider/MessageProvider;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 995
    return-void
.end method
