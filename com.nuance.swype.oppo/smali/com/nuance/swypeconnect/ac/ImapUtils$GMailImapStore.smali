.class public Lcom/nuance/swypeconnect/ac/ImapUtils$GMailImapStore;
.super Lcom/nuance/swypeconnect/ac/ImapUtils$MailImapStore;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swypeconnect/ac/ImapUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GMailImapStore"
.end annotation


# static fields
.field public static final INBOX:Ljava/lang/String; = "Inbox"

.field public static final SENT:Ljava/lang/String; = "[Gmail]/Sent Mail"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/nuance/swypeconnect/ac/ImapUtils$MailImapStore;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
