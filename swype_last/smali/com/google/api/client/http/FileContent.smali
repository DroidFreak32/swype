.class public final Lcom/google/api/client/http/FileContent;
.super Lcom/google/api/client/http/AbstractInputStreamContent;
.source "FileContent.java"


# instance fields
.field private final file:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/File;)V
    .registers 4
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/google/api/client/http/AbstractInputStreamContent;-><init>(Ljava/lang/String;)V

    .line 1127
    invoke-static {p2}, Lcom/google/api/client/repackaged/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 58
    check-cast v0, Ljava/io/File;

    iput-object v0, p0, Lcom/google/api/client/http/FileContent;->file:Ljava/io/File;

    .line 59
    return-void
.end method


# virtual methods
.method public final getFile()Ljava/io/File;
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/api/client/http/FileContent;->file:Ljava/io/File;

    return-object v0
.end method

.method public final getInputStream()Ljava/io/InputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 71
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/google/api/client/http/FileContent;->file:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public final getLength()J
    .registers 3

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/api/client/http/FileContent;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public final retrySupported()Z
    .registers 2

    .prologue
    .line 66
    const/4 v0, 0x1

    return v0
.end method

.method public final bridge synthetic setCloseInputStream(Z)Lcom/google/api/client/http/AbstractInputStreamContent;
    .registers 3
    .param p1, "x0"    # Z

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lcom/google/api/client/http/FileContent;->setCloseInputStream(Z)Lcom/google/api/client/http/FileContent;

    move-result-object v0

    return-object v0
.end method

.method public final setCloseInputStream(Z)Lcom/google/api/client/http/FileContent;
    .registers 3
    .param p1, "closeInputStream"    # Z

    .prologue
    .line 90
    invoke-super {p0, p1}, Lcom/google/api/client/http/AbstractInputStreamContent;->setCloseInputStream(Z)Lcom/google/api/client/http/AbstractInputStreamContent;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/http/FileContent;

    return-object v0
.end method

.method public final bridge synthetic setType(Ljava/lang/String;)Lcom/google/api/client/http/AbstractInputStreamContent;
    .registers 3
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lcom/google/api/client/http/FileContent;->setType(Ljava/lang/String;)Lcom/google/api/client/http/FileContent;

    move-result-object v0

    return-object v0
.end method

.method public final setType(Ljava/lang/String;)Lcom/google/api/client/http/FileContent;
    .registers 3
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 85
    invoke-super {p0, p1}, Lcom/google/api/client/http/AbstractInputStreamContent;->setType(Ljava/lang/String;)Lcom/google/api/client/http/AbstractInputStreamContent;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/http/FileContent;

    return-object v0
.end method
