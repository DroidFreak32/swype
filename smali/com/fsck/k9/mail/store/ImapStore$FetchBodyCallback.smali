.class Lcom/fsck/k9/mail/store/ImapStore$FetchBodyCallback;
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
    name = "FetchBodyCallback"
.end annotation


# instance fields
.field private mMessageMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/fsck/k9/mail/Message;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/fsck/k9/mail/Message;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3627
    .local p1, "mesageMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/fsck/k9/mail/Message;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3628
    iput-object p1, p0, Lcom/fsck/k9/mail/store/ImapStore$FetchBodyCallback;->mMessageMap:Ljava/util/HashMap;

    .line 3629
    return-void
.end method


# virtual methods
.method public foundLiteral(Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;Lcom/fsck/k9/mail/filter/FixedLengthInputStream;)Ljava/lang/Object;
    .locals 4
    .param p1, "response"    # Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;
    .param p2, "literal"    # Lcom/fsck/k9/mail/filter/FixedLengthInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 3635
    iget-object v1, p1, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->mTag:Ljava/lang/String;

    if-nez v1, :cond_0

    invoke-virtual {p1, v3}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "FETCH"

    invoke-static {v1, v2}, Lcom/fsck/k9/mail/store/ImapResponseParser;->equalsIgnoreCase(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3638
    const-string v1, "FETCH"

    invoke-virtual {p1, v1}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->getKeyedValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;

    .line 3639
    const-string v2, "UID"

    invoke-virtual {v1, v2}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->getKeyedString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 3641
    .local v0, "uid":Ljava/lang/String;
    iget-object v1, p0, Lcom/fsck/k9/mail/store/ImapStore$FetchBodyCallback;->mMessageMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/mail/store/ImapStore$ImapMessage;

    .line 3642
    invoke-virtual {v1, p2}, Lcom/fsck/k9/mail/store/ImapStore$ImapMessage;->parse(Ljava/io/InputStream;)V

    .line 3645
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v3}, Ljava/lang/Integer;-><init>(I)V

    .line 3647
    .end local v0    # "uid":Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
