.class final Lcom/fsck/k9/controller/MessagingController$25$1;
.super Ljava/lang/Object;
.source "MessagingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic this$1$f354f9e:Lcom/fsck/k9/controller/MessagingController$MessageActor;

.field private synthetic val$account:Lcom/fsck/k9/Account;

.field private synthetic val$folder:Lcom/fsck/k9/mail/Folder;

.field private synthetic val$messages:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/fsck/k9/controller/MessagingController$MessageActor;Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Folder;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 3965
    iput-object p1, p0, Lcom/fsck/k9/controller/MessagingController$25$1;->this$1$f354f9e:Lcom/fsck/k9/controller/MessagingController$MessageActor;

    iput-object p2, p0, Lcom/fsck/k9/controller/MessagingController$25$1;->val$account:Lcom/fsck/k9/Account;

    iput-object p3, p0, Lcom/fsck/k9/controller/MessagingController$25$1;->val$folder:Lcom/fsck/k9/mail/Folder;

    iput-object p4, p0, Lcom/fsck/k9/controller/MessagingController$25$1;->val$messages:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 3968
    iget-object v0, p0, Lcom/fsck/k9/controller/MessagingController$25$1;->this$1$f354f9e:Lcom/fsck/k9/controller/MessagingController$MessageActor;

    iget-object v1, v0, Lcom/fsck/k9/controller/MessagingController$MessageActor;->this$0:Lcom/fsck/k9/controller/MessagingController;

    iget-object v2, p0, Lcom/fsck/k9/controller/MessagingController$25$1;->val$account:Lcom/fsck/k9/Account;

    iget-object v0, p0, Lcom/fsck/k9/controller/MessagingController$25$1;->val$folder:Lcom/fsck/k9/mail/Folder;

    invoke-virtual {v0}, Lcom/fsck/k9/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/fsck/k9/controller/MessagingController$25$1;->val$messages:Ljava/util/List;

    invoke-static {}, Lcom/fsck/k9/controller/MessagingController;->access$1800()[Lcom/fsck/k9/mail/Message;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fsck/k9/mail/Message;

    iget-object v4, p0, Lcom/fsck/k9/controller/MessagingController$25$1;->this$1$f354f9e:Lcom/fsck/k9/controller/MessagingController$MessageActor;

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v0, v4}, Lcom/fsck/k9/controller/MessagingController;->access$1900(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/Account;Ljava/lang/String;[Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/controller/MessagingListener;)V

    .line 3969
    return-void
.end method
