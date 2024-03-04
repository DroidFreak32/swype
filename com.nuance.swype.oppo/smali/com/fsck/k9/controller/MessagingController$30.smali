.class final Lcom/fsck/k9/controller/MessagingController$30;
.super Ljava/lang/Object;
.source "MessagingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/controller/MessagingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/fsck/k9/controller/MessagingController;

.field private synthetic val$account:Lcom/fsck/k9/Account;

.field private synthetic val$accountInterval:J

.field private synthetic val$folder:Lcom/fsck/k9/mail/Folder;

.field private synthetic val$ignoreLastCheckedTime:Z

.field private synthetic val$listener:Lcom/fsck/k9/controller/MessagingListener;


# direct methods
.method constructor <init>(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Folder;)V
    .locals 2

    .prologue
    .line 4448
    iput-object p1, p0, Lcom/fsck/k9/controller/MessagingController$30;->this$0:Lcom/fsck/k9/controller/MessagingController;

    iput-object p2, p0, Lcom/fsck/k9/controller/MessagingController$30;->val$account:Lcom/fsck/k9/Account;

    iput-object p3, p0, Lcom/fsck/k9/controller/MessagingController$30;->val$folder:Lcom/fsck/k9/mail/Folder;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fsck/k9/controller/MessagingController$30;->val$ignoreLastCheckedTime:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/fsck/k9/controller/MessagingController$30;->val$accountInterval:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fsck/k9/controller/MessagingController$30;->val$listener:Lcom/fsck/k9/controller/MessagingListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    .line 4451
    const/4 v1, 0x0

    .line 4456
    .local v1, "tLocalFolder":Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;
    :try_start_0
    iget-object v2, p0, Lcom/fsck/k9/controller/MessagingController$30;->val$account:Lcom/fsck/k9/Account;

    invoke-virtual {v2}, Lcom/fsck/k9/Account;->getLocalStore()Lcom/fsck/k9/mail/store/LocalStore;

    move-result-object v2

    .line 4457
    iget-object v3, p0, Lcom/fsck/k9/controller/MessagingController$30;->val$folder:Lcom/fsck/k9/mail/Folder;

    invoke-virtual {v3}, Lcom/fsck/k9/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/fsck/k9/mail/store/LocalStore;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    move-result-object v1

    .line 4458
    sget-object v2, Lcom/fsck/k9/mail/Folder$OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/Folder$OpenMode;

    invoke-virtual {v1, v2}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->open(Lcom/fsck/k9/mail/Folder$OpenMode;)V

    .line 4460
    iget-boolean v2, p0, Lcom/fsck/k9/controller/MessagingController$30;->val$ignoreLastCheckedTime:Z

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getLastChecked()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    sub-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 4463
    sget-boolean v2, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 4464
    const-string v2, "k9"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Not running Command for folder "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/fsck/k9/controller/MessagingController$30;->val$folder:Lcom/fsck/k9/mail/Folder;

    invoke-virtual {v4}, Lcom/fsck/k9/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", previously synced @ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    iget-object v5, p0, Lcom/fsck/k9/controller/MessagingController$30;->val$folder:Lcom/fsck/k9/mail/Folder;

    invoke-virtual {v5}, Lcom/fsck/k9/mail/Folder;->getLastChecked()J

    move-result-wide v6

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " which would be too recent for the account period"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4488
    :cond_0
    iget-object v2, p0, Lcom/fsck/k9/controller/MessagingController$30;->this$0:Lcom/fsck/k9/controller/MessagingController;

    invoke-static {v1}, Lcom/fsck/k9/controller/MessagingController;->access$200$4c555372(Lcom/fsck/k9/mail/Folder;)V

    .line 4489
    :goto_0
    return-void

    .line 4469
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/fsck/k9/controller/MessagingController$30;->this$0:Lcom/fsck/k9/controller/MessagingController;

    iget-object v3, p0, Lcom/fsck/k9/controller/MessagingController$30;->val$account:Lcom/fsck/k9/Account;

    iget-object v4, p0, Lcom/fsck/k9/controller/MessagingController$30;->val$folder:Lcom/fsck/k9/mail/Folder;

    invoke-static {v2, v3, v4}, Lcom/fsck/k9/controller/MessagingController;->access$2300(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Folder;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4472
    :try_start_2
    iget-object v2, p0, Lcom/fsck/k9/controller/MessagingController$30;->this$0:Lcom/fsck/k9/controller/MessagingController;

    iget-object v3, p0, Lcom/fsck/k9/controller/MessagingController$30;->val$account:Lcom/fsck/k9/Account;

    iget-object v4, p0, Lcom/fsck/k9/controller/MessagingController$30;->val$folder:Lcom/fsck/k9/mail/Folder;

    invoke-virtual {v4}, Lcom/fsck/k9/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/fsck/k9/controller/MessagingController;->access$400$1b5d6f6(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/controller/MessagingListener;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4476
    :try_start_3
    iget-object v2, p0, Lcom/fsck/k9/controller/MessagingController$30;->this$0:Lcom/fsck/k9/controller/MessagingController;

    iget-object v3, p0, Lcom/fsck/k9/controller/MessagingController$30;->val$account:Lcom/fsck/k9/Account;

    invoke-static {v2, v3}, Lcom/fsck/k9/controller/MessagingController;->access$2400(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/Account;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 4488
    iget-object v2, p0, Lcom/fsck/k9/controller/MessagingController$30;->this$0:Lcom/fsck/k9/controller/MessagingController;

    invoke-static {v1}, Lcom/fsck/k9/controller/MessagingController;->access$200$4c555372(Lcom/fsck/k9/mail/Folder;)V

    goto :goto_0

    .line 4476
    :catchall_0
    move-exception v2

    :try_start_4
    iget-object v3, p0, Lcom/fsck/k9/controller/MessagingController$30;->this$0:Lcom/fsck/k9/controller/MessagingController;

    iget-object v4, p0, Lcom/fsck/k9/controller/MessagingController$30;->val$account:Lcom/fsck/k9/Account;

    invoke-static {v3, v4}, Lcom/fsck/k9/controller/MessagingController;->access$2400(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/Account;)V

    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 4479
    :catch_0
    move-exception v0

    .line 4482
    .local v0, "e":Ljava/lang/Exception;
    :try_start_5
    const-string v2, "k9"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception while processing folder "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/fsck/k9/controller/MessagingController$30;->val$account:Lcom/fsck/k9/Account;

    invoke-virtual {v4}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/fsck/k9/controller/MessagingController$30;->val$folder:Lcom/fsck/k9/mail/Folder;

    invoke-virtual {v4}, Lcom/fsck/k9/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4484
    iget-object v2, p0, Lcom/fsck/k9/controller/MessagingController$30;->this$0:Lcom/fsck/k9/controller/MessagingController;

    iget-object v2, p0, Lcom/fsck/k9/controller/MessagingController$30;->val$account:Lcom/fsck/k9/Account;

    invoke-static {v2, v0}, Lcom/fsck/k9/controller/MessagingController;->addErrorMessage$71b39a09(Lcom/fsck/k9/Account;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 4488
    iget-object v2, p0, Lcom/fsck/k9/controller/MessagingController$30;->this$0:Lcom/fsck/k9/controller/MessagingController;

    invoke-static {v1}, Lcom/fsck/k9/controller/MessagingController;->access$200$4c555372(Lcom/fsck/k9/mail/Folder;)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v2

    iget-object v3, p0, Lcom/fsck/k9/controller/MessagingController$30;->this$0:Lcom/fsck/k9/controller/MessagingController;

    invoke-static {v1}, Lcom/fsck/k9/controller/MessagingController;->access$200$4c555372(Lcom/fsck/k9/mail/Folder;)V

    throw v2
.end method
