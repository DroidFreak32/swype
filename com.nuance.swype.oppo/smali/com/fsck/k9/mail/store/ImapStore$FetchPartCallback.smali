.class Lcom/fsck/k9/mail/store/ImapStore$FetchPartCallback;
.super Ljava/lang/Object;
.source "ImapStore.java"

# interfaces
.implements Lcom/fsck/k9/mail/store/ImapResponseParser$IImapResponseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/mail/store/ImapStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FetchPartCallback"
.end annotation


# instance fields
.field private mPart:Lcom/fsck/k9/mail/Part;


# direct methods
.method constructor <init>(Lcom/fsck/k9/mail/Part;)V
    .locals 0
    .param p1, "part"    # Lcom/fsck/k9/mail/Part;

    .prologue
    .line 3656
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3657
    iput-object p1, p0, Lcom/fsck/k9/mail/store/ImapStore$FetchPartCallback;->mPart:Lcom/fsck/k9/mail/Part;

    .line 3658
    return-void
.end method


# virtual methods
.method public foundLiteral(Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;Lcom/fsck/k9/mail/filter/FixedLengthInputStream;)Ljava/lang/Object;
    .locals 3
    .param p1, "response"    # Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;
    .param p2, "literal"    # Lcom/fsck/k9/mail/filter/FixedLengthInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 3664
    iget-object v1, p1, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->mTag:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "FETCH"

    invoke-static {v1, v2}, Lcom/fsck/k9/mail/store/ImapResponseParser;->equalsIgnoreCase(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3669
    iget-object v1, p0, Lcom/fsck/k9/mail/store/ImapStore$FetchPartCallback;->mPart:Lcom/fsck/k9/mail/Part;

    const-string v2, "Content-Transfer-Encoding"

    invoke-interface {v1, v2}, Lcom/fsck/k9/mail/Part;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v0, v1, v2

    .line 3672
    .local v0, "contentTransferEncoding":Ljava/lang/String;
    invoke-static {p2, v0}, Lcom/fsck/k9/mail/internet/MimeUtility;->decodeBody(Ljava/io/InputStream;Ljava/lang/String;)Lcom/fsck/k9/mail/Body;

    move-result-object v1

    .line 3674
    .end local v0    # "contentTransferEncoding":Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
