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
    .registers 1

    const-class v0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory;->getLog(Ljava/lang/Class;)Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/FileSystemOEM;->b:Ljava/io/File;

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/FileSystemOEM;->c:Ljava/io/FileInputStream;

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/FileSystemOEM;->d:Ljava/io/FileOutputStream;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/FileSystemOEM;->c:Ljava/io/FileInputStream;

    if-eqz v0, :cond_a

    :try_start_5
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/FileSystemOEM;->c:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_a} :catch_1c

    :cond_a
    :goto_a
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/FileSystemOEM;->d:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_13

    :try_start_e
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/FileSystemOEM;->d:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_13} :catch_1a

    :cond_13
    :goto_13
    iput-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/FileSystemOEM;->c:Ljava/io/FileInputStream;

    iput-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/FileSystemOEM;->d:Ljava/io/FileOutputStream;

    iput-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/FileSystemOEM;->b:Ljava/io/File;

    return-void

    :catch_1a
    move-exception v0

    goto :goto_13

    :catch_1c
    move-exception v0

    goto :goto_a
.end method

.method public exist()Z
    .registers 2

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/FileSystemOEM;->b:Ljava/io/File;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/FileSystemOEM;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public open(Ljava/lang/String;Lcom/nuance/nmsp/client/sdk/common/oem/api/FileSystem$FileMode;)Z
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    iput-object p2, p0, Lcom/nuance/nmsp/client/sdk/oem/FileSystemOEM;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/FileSystem$FileMode;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/nuance/nmsp/client/sdk/oem/FileSystemOEM;->b:Ljava/io/File;

    sget-object v0, Lcom/nuance/nmsp/client/sdk/common/oem/api/FileSystem$FileMode;->READ:Lcom/nuance/nmsp/client/sdk/common/oem/api/FileSystem$FileMode;

    if-ne p2, v0, :cond_28

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/FileSystemOEM;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_24

    move v0, v1

    :goto_1c
    if-eqz v0, :cond_21

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/nuance/nmsp/client/sdk/oem/FileSystemOEM;->b:Ljava/io/File;

    :cond_21
    if-nez v0, :cond_26

    :goto_23
    return v1

    :cond_24
    move v0, v2

    goto :goto_1c

    :cond_26
    move v1, v2

    goto :goto_23

    :cond_28
    move v0, v2

    goto :goto_1c
.end method

.method public read([BII)I
    .registers 8

    const/4 v3, 0x0

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/FileSystemOEM;->b:Ljava/io/File;

    if-nez v1, :cond_7

    :goto_6
    return v0

    :cond_7
    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/FileSystemOEM;->c:Ljava/io/FileInputStream;

    if-nez v1, :cond_14

    :try_start_b
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/oem/FileSystemOEM;->b:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/FileSystemOEM;->c:Ljava/io/FileInputStream;
    :try_end_14
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_14} :catch_1b

    :cond_14
    :try_start_14
    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/FileSystemOEM;->c:Ljava/io/FileInputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/FileInputStream;->read([BII)I
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_19} :catch_1f

    move-result v0

    goto :goto_6

    :catch_1b
    move-exception v1

    iput-object v3, p0, Lcom/nuance/nmsp/client/sdk/oem/FileSystemOEM;->b:Ljava/io/File;

    goto :goto_6

    :catch_1f
    move-exception v1

    :try_start_20
    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/FileSystemOEM;->c:Ljava/io/FileInputStream;

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_25} :catch_2a

    :goto_25
    iput-object v3, p0, Lcom/nuance/nmsp/client/sdk/oem/FileSystemOEM;->c:Ljava/io/FileInputStream;

    iput-object v3, p0, Lcom/nuance/nmsp/client/sdk/oem/FileSystemOEM;->b:Ljava/io/File;

    goto :goto_6

    :catch_2a
    move-exception v1

    goto :goto_25
.end method

.method public remove()Z
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/FileSystemOEM;->b:Ljava/io/File;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/FileSystemOEM;->c:Ljava/io/FileInputStream;

    if-eqz v0, :cond_e

    :try_start_9
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/FileSystemOEM;->c:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_e} :catch_28

    :cond_e
    :goto_e
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/FileSystemOEM;->d:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_17

    :try_start_12
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/FileSystemOEM;->d:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_17} :catch_26

    :cond_17
    :goto_17
    iput-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/FileSystemOEM;->c:Ljava/io/FileInputStream;

    iput-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/FileSystemOEM;->d:Ljava/io/FileOutputStream;

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/FileSystemOEM;->b:Ljava/io/File;

    iput-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/FileSystemOEM;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    :goto_23
    return v0

    :cond_24
    const/4 v0, 0x0

    goto :goto_23

    :catch_26
    move-exception v0

    goto :goto_17

    :catch_28
    move-exception v0

    goto :goto_e
.end method

.method public rename(Ljava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/FileSystemOEM;->b:Ljava/io/File;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/FileSystemOEM;->b:Ljava/io/File;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    goto :goto_5
.end method

.method public size()J
    .registers 3

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/FileSystemOEM;->b:Ljava/io/File;

    if-nez v0, :cond_7

    const-wide/16 v0, -0x1

    :goto_6
    return-wide v0

    :cond_7
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/FileSystemOEM;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    goto :goto_6
.end method

.method public skip(J)J
    .registers 6

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/FileSystemOEM;->b:Ljava/io/File;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/FileSystemOEM;->c:Ljava/io/FileInputStream;

    if-eqz v0, :cond_10

    :try_start_8
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/FileSystemOEM;->c:Ljava/io/FileInputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/FileInputStream;->skip(J)J
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_d} :catch_f

    move-result-wide v0

    :goto_e
    return-wide v0

    :catch_f
    move-exception v0

    :cond_10
    const-wide/16 v0, 0x0

    goto :goto_e
.end method

.method public write([BII)I
    .registers 10

    const/4 v5, 0x0

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/FileSystemOEM;->b:Ljava/io/File;

    if-nez v1, :cond_8

    move p3, v0

    :goto_7
    return p3

    :cond_8
    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/FileSystemOEM;->d:Ljava/io/FileOutputStream;

    if-nez v1, :cond_1c

    :try_start_c
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/oem/FileSystemOEM;->b:Ljava/io/File;

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/FileSystemOEM;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/FileSystem$FileMode;

    sget-object v4, Lcom/nuance/nmsp/client/sdk/common/oem/api/FileSystem$FileMode;->APPEND:Lcom/nuance/nmsp/client/sdk/common/oem/api/FileSystem$FileMode;

    if-ne v1, v4, :cond_2e

    const/4 v1, 0x1

    :goto_17
    invoke-direct {v2, v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    iput-object v2, p0, Lcom/nuance/nmsp/client/sdk/oem/FileSystemOEM;->d:Ljava/io/FileOutputStream;
    :try_end_1c
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_1c} :catch_30

    :cond_1c
    :try_start_1c
    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/FileSystemOEM;->d:Ljava/io/FileOutputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_21} :catch_22

    goto :goto_7

    :catch_22
    move-exception v1

    :try_start_23
    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/FileSystemOEM;->d:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_28} :catch_35

    :goto_28
    iput-object v5, p0, Lcom/nuance/nmsp/client/sdk/oem/FileSystemOEM;->d:Ljava/io/FileOutputStream;

    iput-object v5, p0, Lcom/nuance/nmsp/client/sdk/oem/FileSystemOEM;->b:Ljava/io/File;

    move p3, v0

    goto :goto_7

    :cond_2e
    const/4 v1, 0x0

    goto :goto_17

    :catch_30
    move-exception v1

    iput-object v5, p0, Lcom/nuance/nmsp/client/sdk/oem/FileSystemOEM;->b:Ljava/io/File;

    move p3, v0

    goto :goto_7

    :catch_35
    move-exception v1

    goto :goto_28
.end method
