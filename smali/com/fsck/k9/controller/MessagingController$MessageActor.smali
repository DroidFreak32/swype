.class final Lcom/fsck/k9/controller/MessagingController$MessageActor;
.super Ljava/lang/Object;
.source "MessagingController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/controller/MessagingController;->deleteMessages$57ed3660([Lcom/fsck/k9/mail/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "MessageActor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/controller/MessagingController;

.field final synthetic val$listener:Lcom/fsck/k9/controller/MessagingListener;


# direct methods
.method constructor <init>(Lcom/fsck/k9/controller/MessagingController;)V
    .locals 1

    .prologue
    .line 3953
    iput-object p1, p0, Lcom/fsck/k9/controller/MessagingController$MessageActor;->this$0:Lcom/fsck/k9/controller/MessagingController;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fsck/k9/controller/MessagingController$MessageActor;->val$listener:Lcom/fsck/k9/controller/MessagingListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final act(Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Folder;Ljava/util/List;)V
    .locals 5
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "folder"    # Lcom/fsck/k9/mail/Folder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fsck/k9/Account;",
            "Lcom/fsck/k9/mail/Folder;",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mail/Message;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3959
    .local p3, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Message;>;"
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/mail/Message;

    .line 3961
    .local v1, "message":Lcom/fsck/k9/mail/Message;
    iget-object v2, p0, Lcom/fsck/k9/controller/MessagingController$MessageActor;->this$0:Lcom/fsck/k9/controller/MessagingController;

    invoke-virtual {p2}, Lcom/fsck/k9/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, p1, v3, v1}, Lcom/fsck/k9/controller/MessagingController;->access$1700(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)V

    goto :goto_0

    .line 3964
    .end local v1    # "message":Lcom/fsck/k9/mail/Message;
    :cond_0
    iget-object v2, p0, Lcom/fsck/k9/controller/MessagingController$MessageActor;->this$0:Lcom/fsck/k9/controller/MessagingController;

    const-string v3, "deleteMessages"

    new-instance v4, Lcom/fsck/k9/controller/MessagingController$25$1;

    invoke-direct {v4, p0, p1, p2, p3}, Lcom/fsck/k9/controller/MessagingController$25$1;-><init>(Lcom/fsck/k9/controller/MessagingController$MessageActor;Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Folder;Ljava/util/List;)V

    invoke-static {v2, v3, v4}, Lcom/fsck/k9/controller/MessagingController;->access$2000$2fec6881(Lcom/fsck/k9/controller/MessagingController;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 3971
    return-void
.end method
