.class public final Lcom/flurry/sdk/lq;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    const-class v0, Lcom/flurry/sdk/lq;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/lq;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/io/File;Ljava/lang/String;)V
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v3, 0x4

    .line 155
    if-nez p0, :cond_c

    .line 156
    sget-object v0, Lcom/flurry/sdk/lq;->a:Ljava/lang/String;

    const-string/jumbo v1, "No persistent file specified."

    invoke-static {v3, v0, v1}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 176
    :goto_b
    return-void

    .line 160
    :cond_c
    if-nez p1, :cond_2b

    .line 161
    sget-object v0, Lcom/flurry/sdk/lq;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "No data specified; deleting persistent file: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_b

    .line 166
    :cond_2b
    sget-object v0, Lcom/flurry/sdk/lq;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Writing persistent data: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 168
    const/4 v2, 0x0

    .line 170
    :try_start_45
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_4a} :catch_55
    .catchall {:try_start_45 .. :try_end_4a} :catchall_64

    .line 171
    :try_start_4a
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_51} :catch_6c
    .catchall {:try_start_4a .. :try_end_51} :catchall_6a

    .line 175
    invoke-static {v1}, Lcom/flurry/sdk/lr;->a(Ljava/io/Closeable;)V

    goto :goto_b

    .line 172
    :catch_55
    move-exception v0

    move-object v1, v2

    .line 173
    :goto_57
    const/4 v2, 0x6

    :try_start_58
    sget-object v3, Lcom/flurry/sdk/lq;->a:Ljava/lang/String;

    const-string/jumbo v4, "Error writing persistent file"

    invoke-static {v2, v3, v4, v0}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_60
    .catchall {:try_start_58 .. :try_end_60} :catchall_6a

    .line 175
    invoke-static {v1}, Lcom/flurry/sdk/lr;->a(Ljava/io/Closeable;)V

    goto :goto_b

    :catchall_64
    move-exception v0

    move-object v1, v2

    :goto_66
    invoke-static {v1}, Lcom/flurry/sdk/lr;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_6a
    move-exception v0

    goto :goto_66

    .line 172
    :catch_6c
    move-exception v0

    goto :goto_57
.end method

.method public static a(Ljava/io/File;)Z
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 76
    if-nez p0, :cond_5

    .line 97
    :cond_4
    :goto_4
    return v0

    .line 80
    :cond_5
    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v2

    .line 81
    if-eqz v2, :cond_4

    .line 85
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    .line 86
    if-nez v2, :cond_13

    move v0, v1

    .line 88
    goto :goto_4

    .line 91
    :cond_13
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v3

    .line 92
    if-nez v3, :cond_36

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_36

    .line 93
    const/4 v1, 0x6

    sget-object v3, Lcom/flurry/sdk/lq;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Unable to create persistent dir: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v3, v2}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_36
    move v0, v1

    .line 97
    goto :goto_4
.end method

.method public static c(Ljava/io/File;)Ljava/lang/String;
    .registers 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v4, 0x4

    const/4 v0, 0x0

    .line 119
    if-eqz p0, :cond_a

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_13

    .line 120
    :cond_a
    sget-object v1, Lcom/flurry/sdk/lq;->a:Ljava/lang/String;

    const-string/jumbo v2, "Persistent file doesn\'t exist."

    invoke-static {v4, v1, v2}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 148
    :cond_12
    :goto_12
    return-object v0

    .line 124
    :cond_13
    sget-object v1, Lcom/flurry/sdk/lq;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Loading persistent data: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v1, v2}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 130
    :try_start_2c
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_31} :catch_6c
    .catchall {:try_start_2c .. :try_end_31} :catchall_63

    .line 132
    :try_start_31
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 133
    const/16 v3, 0x400

    new-array v3, v3, [B

    .line 135
    :goto_3a
    invoke-virtual {v2, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_5f

    .line 136
    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v5, v3, v6, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_49} :catch_4a
    .catchall {:try_start_31 .. :try_end_49} :catchall_6a

    goto :goto_3a

    .line 138
    :catch_4a
    move-exception v1

    .line 139
    :goto_4b
    const/4 v3, 0x6

    :try_start_4c
    sget-object v4, Lcom/flurry/sdk/lq;->a:Ljava/lang/String;

    const-string/jumbo v5, "Error when loading persistent file"

    invoke-static {v3, v4, v5, v1}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_54
    .catchall {:try_start_4c .. :try_end_54} :catchall_6a

    .line 142
    invoke-static {v2}, Lcom/flurry/sdk/lr;->a(Ljava/io/Closeable;)V

    move-object v1, v0

    .line 145
    :goto_58
    if-eqz v1, :cond_12

    .line 146
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    .line 142
    :cond_5f
    invoke-static {v2}, Lcom/flurry/sdk/lr;->a(Ljava/io/Closeable;)V

    goto :goto_58

    :catchall_63
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_66
    invoke-static {v2}, Lcom/flurry/sdk/lr;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_6a
    move-exception v0

    goto :goto_66

    .line 138
    :catch_6c
    move-exception v1

    move-object v2, v0

    goto :goto_4b
.end method
