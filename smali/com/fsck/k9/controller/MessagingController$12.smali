.class final Lcom/fsck/k9/controller/MessagingController$12;
.super Ljava/lang/Object;
.source "MessagingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/controller/MessagingController;->processPendingCommands(Lcom/fsck/k9/Account;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/fsck/k9/controller/MessagingController;

.field private synthetic val$account:Lcom/fsck/k9/Account;


# direct methods
.method constructor <init>(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/Account;)V
    .locals 0

    .prologue
    .line 2142
    iput-object p1, p0, Lcom/fsck/k9/controller/MessagingController$12;->this$0:Lcom/fsck/k9/controller/MessagingController;

    iput-object p2, p0, Lcom/fsck/k9/controller/MessagingController$12;->val$account:Lcom/fsck/k9/Account;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 2147
    :try_start_0
    iget-object v2, p0, Lcom/fsck/k9/controller/MessagingController$12;->this$0:Lcom/fsck/k9/controller/MessagingController;

    iget-object v3, p0, Lcom/fsck/k9/controller/MessagingController$12;->val$account:Lcom/fsck/k9/Account;

    invoke-static {v2, v3}, Lcom/fsck/k9/controller/MessagingController;->access$1000(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/Account;)V
    :try_end_0
    .catch Lcom/fsck/k9/mail/store/UnavailableStorageException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2165
    :goto_0
    return-void

    .line 2149
    :catch_0
    move-exception v0

    .line 2151
    .local v0, "e":Lcom/fsck/k9/mail/store/UnavailableStorageException;
    const-string v2, "k9"

    const-string v3, "Failed to process pending command because storage is not available - trying again later."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2152
    new-instance v2, Lcom/fsck/k9/mail/store/UnavailableAccountException;

    invoke-direct {v2, v0}, Lcom/fsck/k9/mail/store/UnavailableAccountException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 2154
    .end local v0    # "e":Lcom/fsck/k9/mail/store/UnavailableStorageException;
    :catch_1
    move-exception v1

    .line 2156
    .local v1, "me":Lcom/fsck/k9/mail/MessagingException;
    const-string v2, "k9"

    const-string v3, "processPendingCommands"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2158
    iget-object v2, p0, Lcom/fsck/k9/controller/MessagingController$12;->this$0:Lcom/fsck/k9/controller/MessagingController;

    iget-object v2, p0, Lcom/fsck/k9/controller/MessagingController$12;->val$account:Lcom/fsck/k9/Account;

    invoke-static {v2, v1}, Lcom/fsck/k9/controller/MessagingController;->addErrorMessage$71b39a09(Lcom/fsck/k9/Account;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
