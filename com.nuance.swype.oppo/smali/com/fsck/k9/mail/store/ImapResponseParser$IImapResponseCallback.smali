.class public interface abstract Lcom/fsck/k9/mail/store/ImapResponseParser$IImapResponseCallback;
.super Ljava/lang/Object;
.source "ImapResponseParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/mail/store/ImapResponseParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IImapResponseCallback"
.end annotation


# virtual methods
.method public abstract foundLiteral(Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;Lcom/fsck/k9/mail/filter/FixedLengthInputStream;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/Exception;
        }
    .end annotation
.end method
