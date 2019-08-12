.class final Lcom/fsck/k9/K9$1;
.super Lcom/fsck/k9/controller/MessagingListener;
.source "K9.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/K9;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/fsck/k9/K9;


# direct methods
.method constructor <init>(Lcom/fsck/k9/K9;)V
    .locals 0

    .prologue
    .line 452
    iput-object p1, p0, Lcom/fsck/k9/K9$1;->this$0:Lcom/fsck/k9/K9;

    invoke-direct {p0}, Lcom/fsck/k9/controller/MessagingListener;-><init>()V

    return-void
.end method

.method private broadcastIntent(Ljava/lang/String;Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)V
    .locals 5
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "account"    # Lcom/fsck/k9/Account;
    .param p3, "folder"    # Ljava/lang/String;
    .param p4, "message"    # Lcom/fsck/k9/mail/Message;

    .prologue
    .line 457
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "email://messages/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/fsck/k9/Account;->getAccountNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p4}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 458
    .local v1, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 459
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "com.fsck.k9.intent.extra.ACCOUNT"

    invoke-virtual {p2}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 460
    const-string v2, "com.fsck.k9.intent.extra.FOLDER"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 461
    const-string v2, "com.fsck.k9.intent.extra.SENT_DATE"

    invoke-virtual {p4}, Lcom/fsck/k9/mail/Message;->getSentDate()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 462
    const-string v2, "com.fsck.k9.intent.extra.FROM"

    invoke-virtual {p4}, Lcom/fsck/k9/mail/Message;->getFrom()[Lcom/fsck/k9/mail/Address;

    move-result-object v3

    invoke-static {v3}, Lcom/fsck/k9/mail/Address;->toString([Lcom/fsck/k9/mail/Address;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 463
    const-string v2, "com.fsck.k9.intent.extra.TO"

    sget-object v3, Lcom/fsck/k9/mail/Message$RecipientType;->TO:Lcom/fsck/k9/mail/Message$RecipientType;

    invoke-virtual {p4, v3}, Lcom/fsck/k9/mail/Message;->getRecipients(Lcom/fsck/k9/mail/Message$RecipientType;)[Lcom/fsck/k9/mail/Address;

    move-result-object v3

    invoke-static {v3}, Lcom/fsck/k9/mail/Address;->toString([Lcom/fsck/k9/mail/Address;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 464
    const-string v2, "com.fsck.k9.intent.extra.CC"

    sget-object v3, Lcom/fsck/k9/mail/Message$RecipientType;->CC:Lcom/fsck/k9/mail/Message$RecipientType;

    invoke-virtual {p4, v3}, Lcom/fsck/k9/mail/Message;->getRecipients(Lcom/fsck/k9/mail/Message$RecipientType;)[Lcom/fsck/k9/mail/Address;

    move-result-object v3

    invoke-static {v3}, Lcom/fsck/k9/mail/Address;->toString([Lcom/fsck/k9/mail/Address;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 465
    const-string v2, "com.fsck.k9.intent.extra.BCC"

    sget-object v3, Lcom/fsck/k9/mail/Message$RecipientType;->BCC:Lcom/fsck/k9/mail/Message$RecipientType;

    invoke-virtual {p4, v3}, Lcom/fsck/k9/mail/Message;->getRecipients(Lcom/fsck/k9/mail/Message$RecipientType;)[Lcom/fsck/k9/mail/Address;

    move-result-object v3

    invoke-static {v3}, Lcom/fsck/k9/mail/Address;->toString([Lcom/fsck/k9/mail/Address;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 466
    const-string v2, "com.fsck.k9.intent.extra.SUBJECT"

    invoke-virtual {p4}, Lcom/fsck/k9/mail/Message;->getSubject()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 467
    const-string v2, "com.fsck.k9.intent.extra.FROM_SELF"

    invoke-virtual {p4}, Lcom/fsck/k9/mail/Message;->getFrom()[Lcom/fsck/k9/mail/Address;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/fsck/k9/Account;->isAnIdentity([Lcom/fsck/k9/mail/Address;)Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 468
    iget-object v2, p0, Lcom/fsck/k9/K9$1;->this$0:Lcom/fsck/k9/K9;

    invoke-virtual {v2, v0}, Lcom/fsck/k9/K9;->sendBroadcast(Landroid/content/Intent;)V

    .line 469
    sget-boolean v2, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 470
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Broadcasted: action="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " account="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " folder="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " message uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p4}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 485
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_0
    :goto_0
    return-void

    .line 479
    :catch_0
    move-exception v2

    const-string v2, "k9"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error: action="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " account="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " folder="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " message uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p4}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public final messageDeleted(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)V
    .locals 1
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "message"    # Lcom/fsck/k9/mail/Message;

    .prologue
    .line 496
    const-string v0, "com.fsck.k9.intent.action.EMAIL_DELETED"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/fsck/k9/K9$1;->broadcastIntent(Ljava/lang/String;Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)V

    .line 497
    return-void
.end method

.method public final searchStats$4ed473c3()V
    .locals 4

    .prologue
    .line 509
    iget-object v0, p0, Lcom/fsck/k9/K9$1;->this$0:Lcom/fsck/k9/K9;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.fsck.k9.intent.action.REFRESH_OBSERVER"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcom/fsck/k9/K9;->sendBroadcast(Landroid/content/Intent;)V

    .line 510
    return-void
.end method

.method public final synchronizeMailboxNewMessage(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)V
    .locals 1
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "message"    # Lcom/fsck/k9/mail/Message;

    .prologue
    .line 502
    const-string v0, "com.fsck.k9.intent.action.EMAIL_RECEIVED"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/fsck/k9/K9$1;->broadcastIntent(Ljava/lang/String;Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)V

    .line 503
    return-void
.end method

.method public final synchronizeMailboxRemovedMessage(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)V
    .locals 1
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "message"    # Lcom/fsck/k9/mail/Message;

    .prologue
    .line 490
    const-string v0, "com.fsck.k9.intent.action.EMAIL_DELETED"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/fsck/k9/K9$1;->broadcastIntent(Ljava/lang/String;Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)V

    .line 491
    return-void
.end method
