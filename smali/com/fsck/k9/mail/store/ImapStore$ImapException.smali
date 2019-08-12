.class Lcom/fsck/k9/mail/store/ImapStore$ImapException;
.super Lcom/fsck/k9/mail/MessagingException;
.source "ImapStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/mail/store/ImapStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ImapException"
.end annotation


# instance fields
.field mAlertText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "alertText"    # Ljava/lang/String;

    .prologue
    .line 2844
    invoke-direct {p0, p1}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    .line 2845
    iput-object p2, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapException;->mAlertText:Ljava/lang/String;

    .line 2846
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "alertText"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 2838
    invoke-direct {p0, p1, p3}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2839
    iput-object p2, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapException;->mAlertText:Ljava/lang/String;

    .line 2840
    return-void
.end method


# virtual methods
.method public getAlertText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2850
    iget-object v0, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapException;->mAlertText:Ljava/lang/String;

    return-object v0
.end method

.method public setAlertText(Ljava/lang/String;)V
    .locals 0
    .param p1, "alertText"    # Ljava/lang/String;

    .prologue
    .line 2855
    iput-object p1, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapException;->mAlertText:Ljava/lang/String;

    .line 2856
    return-void
.end method
