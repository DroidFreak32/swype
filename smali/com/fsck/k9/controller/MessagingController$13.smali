.class final Lcom/fsck/k9/controller/MessagingController$13;
.super Ljava/lang/Object;
.source "MessagingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/controller/MessagingController;->queueSetFlag(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/fsck/k9/controller/MessagingController;

.field private synthetic val$account:Lcom/fsck/k9/Account;

.field private synthetic val$flag:Ljava/lang/String;

.field private synthetic val$folderName:Ljava/lang/String;

.field private synthetic val$newState:Ljava/lang/String;

.field private synthetic val$uids:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/fsck/k9/controller/MessagingController;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/fsck/k9/Account;)V
    .locals 0

    .prologue
    .line 2561
    iput-object p1, p0, Lcom/fsck/k9/controller/MessagingController$13;->this$0:Lcom/fsck/k9/controller/MessagingController;

    iput-object p2, p0, Lcom/fsck/k9/controller/MessagingController$13;->val$uids:[Ljava/lang/String;

    iput-object p3, p0, Lcom/fsck/k9/controller/MessagingController$13;->val$folderName:Ljava/lang/String;

    iput-object p4, p0, Lcom/fsck/k9/controller/MessagingController$13;->val$newState:Ljava/lang/String;

    iput-object p5, p0, Lcom/fsck/k9/controller/MessagingController$13;->val$flag:Ljava/lang/String;

    iput-object p6, p0, Lcom/fsck/k9/controller/MessagingController$13;->val$account:Lcom/fsck/k9/Account;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 2564
    new-instance v0, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;

    invoke-direct {v0}, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;-><init>()V

    .line 2565
    .local v0, "command":Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;
    const-string v2, "com.fsck.k9.MessagingController.setFlagBulk"

    iput-object v2, v0, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;->command:Ljava/lang/String;

    .line 2566
    iget-object v2, p0, Lcom/fsck/k9/controller/MessagingController$13;->val$uids:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v1, v2, 0x3

    .line 2567
    .local v1, "length":I
    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, v0, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;->arguments:[Ljava/lang/String;

    .line 2568
    iget-object v2, v0, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;->arguments:[Ljava/lang/String;

    iget-object v3, p0, Lcom/fsck/k9/controller/MessagingController$13;->val$folderName:Ljava/lang/String;

    aput-object v3, v2, v6

    .line 2569
    iget-object v2, v0, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;->arguments:[Ljava/lang/String;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/fsck/k9/controller/MessagingController$13;->val$newState:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 2570
    iget-object v2, v0, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;->arguments:[Ljava/lang/String;

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/fsck/k9/controller/MessagingController$13;->val$flag:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 2571
    iget-object v2, p0, Lcom/fsck/k9/controller/MessagingController$13;->val$uids:[Ljava/lang/String;

    iget-object v3, v0, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;->arguments:[Ljava/lang/String;

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/fsck/k9/controller/MessagingController$13;->val$uids:[Ljava/lang/String;

    array-length v5, v5

    invoke-static {v2, v6, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2572
    iget-object v2, p0, Lcom/fsck/k9/controller/MessagingController$13;->this$0:Lcom/fsck/k9/controller/MessagingController;

    iget-object v3, p0, Lcom/fsck/k9/controller/MessagingController$13;->val$account:Lcom/fsck/k9/Account;

    invoke-static {v2, v3, v0}, Lcom/fsck/k9/controller/MessagingController;->access$1100(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;)V

    .line 2573
    iget-object v2, p0, Lcom/fsck/k9/controller/MessagingController$13;->this$0:Lcom/fsck/k9/controller/MessagingController;

    iget-object v3, p0, Lcom/fsck/k9/controller/MessagingController$13;->val$account:Lcom/fsck/k9/Account;

    invoke-static {v2, v3}, Lcom/fsck/k9/controller/MessagingController;->access$1200(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/Account;)V

    .line 2574
    return-void
.end method
