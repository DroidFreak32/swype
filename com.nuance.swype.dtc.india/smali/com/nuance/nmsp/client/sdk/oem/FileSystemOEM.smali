.class public Lcom/nuance/nmsp/client/sdk/oem/FileSystemOEM;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/nmsp/client/sdk/common/oem/api/FileSystem;


# instance fields
.field private a:Lcom/nuance/nmsp/client/sdk/common/oem/api/FileSystem$FileMode;

.field private b:Ljava/io/File;

.field private c:Ljava/io/FileInputStream;

.field private d:Ljava/io/FileOutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory;->getLog(Ljava/lang/Class;)Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/FileSystemOEM;->b:Ljava/io/File;

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/FileSystemOEM;->c:Ljava/io/FileInputStream;

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/FileSystemOEM;->d:Ljava/io/FileOutputStream;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/FileSystemOEM;->c:Ljava/io/FileInputStream;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/FileSystemOEM;->c:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/FileSystemOEM;->d:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/FileSystemOEM;->d:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_1
    iput-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/FileSystemOEM;->c:Ljava/io/FileInputStream;

    iput-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/FileSystemOEM;->d:Ljava/io/FileOutputStream;

    iput-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/FileSystemOEM;->b:Ljava/io/File;

    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public exist()Z
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/FileSystemOEM;->b:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/FileSystemOEM;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public open(Ljava/lang/String;Lcom/nuance/nmsp/client/sdk/common/oem/api/FileSystem$FileMode;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iput-object p2, p0, Lcom/nuance/nmsp/client/sdk/oem/FileSystemOEM;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/FileSystem$FileMode;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/nuance/nmsp/client/sdk/oem/FileSystemOEM;->b:Ljava/io/File;

    sget-object v0, Lcom/nuance/nmsp/client/sdk/common/oem/api/FileSystem$FileMode;->READ:Lcom/nuance/nmsp/client/sdk/common/oem/api/FileSystem$FileMode;

    if-ne p2, v0, :cond_3

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/FileSystemOEM;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    if-eqz v0, :cond_0

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/nuance/nmsp/client/sdk/oem/FileSystemOEM;->b:Ljava/io/File;

    :cond_0
    if-nez v0, :cond_2

    :goto_1
    return v1

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method public read([BII)I
    .locals 4

    const/4 v3, 0x0

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/FileSystemOEM;->b:Ljava/io/File;

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/FileSystemOEM;->c:Ljava/io/FileInputStream;

    if-nez v1, :cond_1

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/oem/FileSystemOEM;->b:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/FileSystemOEM;->c:Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/FileSystemOEM;->c:Ljava/io/FileInputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/FileInputStream;->read([BII)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    iput-object v3, p0, Lcom/nuance/nmsp/client/sdk/oem/FileSystemOEM;->b:Ljava/io/File;

    goto :goto_0

    :catch_1
    move-exception v1

    :try_start_2
    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/FileSystemOEM;->c:Ljava/io/FileInputStream;

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_1
    iput-object v3, p0, Lcom/nuance/nmsp/client/sdk/oem/FileSystemOEM;->c:Ljava/io/FileInputStream;

    iput-object v3, p0, Lcom/nuance/nmsp/client/sdk/oem/FileSystemOEM;->b:Ljava/io/File;

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method public remove()Z
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/FileSystemOEM;->b:Ljava/io/File;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/FileSystemOEM;->c:Ljava/io/FileInputStream;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/FileSystemOEM;->c:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/FileSystemOEM;->d:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/FileSystemOEM;->d:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_1
    iput-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/FileSystemOEM;->c:Ljava/io/FileInputStream;

    iput-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/FileSystemOEM;->d:Ljava/io/FileOutputStream;

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/FileSystemOEM;->b:Ljava/io/File;

    iput-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/FileSystemOEM;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    :goto_2
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public rename(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/FileSystemOEM;->b:Ljava/io/File;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/FileSystemOEM;->b:Ljava/io/File;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    goto :goto_0
.end method

.method public size()J
    .locals 2

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/FileSystemOEM;->b:Ljava/io/File;

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/FileSystemOEM;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    goto :goto_0
.end method

.method public skip(J)J
    .locals 3

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/FileSystemOEM;->b:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/FileSystemOEM;->c:Ljava/io/FileInputStream;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/FileSystemOEM;->c:Ljava/io/FileInputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/FileInputStream;->skip(J)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public write([BII)I
    .locals 6

    const/4 v5, 0x0

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/FileSystemOEM;->b:Ljava/io/File;

    if-nez v1, :cond_0

    move p3, v0

    :goto_0
    return p3

    :cond_0
    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/FileSystemOEM;->d:Ljava/io/FileOutputStream;

    if-nez v1, :cond_1

    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/oem/FileSystemOEM;->b:Ljava/io/File;

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/FileSystemOEM;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/FileSystem$FileMode;

    sget-object v4, Lcom/nuance/nmsp/client/sdk/common/oem/api/FileSystem$FileMode;->APPEND:Lcom/nuance/nmsp/client/sdk/common/oem/api/FileSystem$FileMode;

    if-ne v1, v4, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-direct {v2, v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    iput-object v2, p0, Lcom/nuance/nmsp/client/sdk/oem/FileSystemOEM;->d:Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/FileSystemOEM;->d:Ljava/io/FileOutputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/FileSystemOEM;->d:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    iput-object v5, p0, Lcom/nuance/nmsp/client/sdk/oem/FileSystemOEM;->d:Ljava/io/FileOutputStream;

    iput-object v5, p0, Lcom/nuance/nmsp/client/sdk/oem/FileSystemOEM;->b:Ljava/io/File;

    move p3, v0

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :catch_1
    move-exception v1

    iput-object v5, p0, Lcom/nuance/nmsp/client/sdk/oem/FileSystemOEM;->b:Ljava/io/File;

    move p3, v0

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_2
.end method
