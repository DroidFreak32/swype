.class public Lcom/fsck/k9/mail/internet/BinaryTempFileBody;
.super Ljava/lang/Object;
.source "BinaryTempFileBody.java"

# interfaces
.implements Lcom/fsck/k9/mail/Body;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fsck/k9/mail/internet/BinaryTempFileBody$BinaryTempFileBodyInputStream;
    }
.end annotation


# static fields
.field private static mTempDirectory:Ljava/io/File;


# instance fields
.field private mFile:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    sget-object v0, Lcom/fsck/k9/mail/internet/BinaryTempFileBody;->mTempDirectory:Ljava/io/File;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setTempDirectory has not been called on BinaryTempFileBody!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/fsck/k9/mail/internet/BinaryTempFileBody;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/mail/internet/BinaryTempFileBody;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/fsck/k9/mail/internet/BinaryTempFileBody;->mFile:Ljava/io/File;

    return-object v0
.end method

.method public static setTempDirectory(Ljava/io/File;)V
    .locals 0
    .param p0, "tempDirectory"    # Ljava/io/File;

    .prologue
    .line 24
    sput-object p0, Lcom/fsck/k9/mail/internet/BinaryTempFileBody;->mTempDirectory:Ljava/io/File;

    .line 25
    return-void
.end method


# virtual methods
.method public getInputStream()Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 47
    :try_start_0
    new-instance v1, Lcom/fsck/k9/mail/internet/BinaryTempFileBody$BinaryTempFileBodyInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/fsck/k9/mail/internet/BinaryTempFileBody;->mFile:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, p0, v2}, Lcom/fsck/k9/mail/internet/BinaryTempFileBody$BinaryTempFileBodyInputStream;-><init>(Lcom/fsck/k9/mail/internet/BinaryTempFileBody;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 49
    :catch_0
    move-exception v0

    .line 51
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v1, Lcom/fsck/k9/mail/MessagingException;

    const-string v2, "Unable to open body"

    invoke-direct {v1, v2, v0}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38
    const-string v0, "body"

    const/4 v1, 0x0

    sget-object v2, Lcom/fsck/k9/mail/internet/BinaryTempFileBody;->mTempDirectory:Ljava/io/File;

    invoke-static {v0, v1, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/mail/internet/BinaryTempFileBody;->mFile:Ljava/io/File;

    .line 39
    iget-object v0, p0, Lcom/fsck/k9/mail/internet/BinaryTempFileBody;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->deleteOnExit()V

    .line 40
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/fsck/k9/mail/internet/BinaryTempFileBody;->mFile:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/fsck/k9/mail/internet/BinaryTempFileBody;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 58
    .local v1, "in":Ljava/io/InputStream;
    new-instance v0, Lcom/fsck/k9/mail/filter/Base64OutputStream;

    invoke-direct {v0, p1}, Lcom/fsck/k9/mail/filter/Base64OutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 59
    .local v0, "base64Out":Lcom/fsck/k9/mail/filter/Base64OutputStream;
    invoke-static {v1, v0}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 60
    invoke-virtual {v0}, Lcom/fsck/k9/mail/filter/Base64OutputStream;->close()V

    .line 61
    iget-object v2, p0, Lcom/fsck/k9/mail/internet/BinaryTempFileBody;->mFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 62
    return-void
.end method
