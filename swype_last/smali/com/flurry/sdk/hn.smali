.class public final Lcom/flurry/sdk/hn;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 13
    const-class v0, Lcom/flurry/sdk/hn;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/hn;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/io/File;)Lcom/flurry/sdk/jb;
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 19
    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_a

    .line 53
    :cond_9
    :goto_9
    return-object v1

    .line 24
    :cond_a
    new-instance v0, Lcom/flurry/sdk/jb$a;

    invoke-direct {v0}, Lcom/flurry/sdk/jb$a;-><init>()V

    .line 30
    :try_start_f
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_14} :catch_64
    .catchall {:try_start_f .. :try_end_14} :catchall_78

    .line 31
    :try_start_14
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_19} :catch_87
    .catchall {:try_start_14 .. :try_end_19} :catchall_82

    .line 33
    :try_start_19
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v4

    .line 34
    const v5, 0xb5fa

    if-eq v4, v5, :cond_32

    .line 35
    const/4 v0, 0x3

    sget-object v4, Lcom/flurry/sdk/hn;->a:Ljava/lang/String;

    const-string/jumbo v5, "Unexpected file type"

    invoke-static {v0, v4, v5}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_2b} :catch_8a
    .catchall {:try_start_19 .. :try_end_2b} :catchall_85

    .line 49
    invoke-static {v2}, Lcom/flurry/sdk/lr;->a(Ljava/io/Closeable;)V

    .line 50
    invoke-static {v3}, Lcom/flurry/sdk/lr;->a(Ljava/io/Closeable;)V

    goto :goto_9

    .line 39
    :cond_32
    :try_start_32
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v4

    .line 40
    const/4 v5, 0x2

    if-eq v4, v5, :cond_56

    .line 41
    const/4 v0, 0x6

    sget-object v5, Lcom/flurry/sdk/hn;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Unknown agent file version: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v5, v4}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_4f} :catch_8a
    .catchall {:try_start_32 .. :try_end_4f} :catchall_85

    .line 49
    invoke-static {v2}, Lcom/flurry/sdk/lr;->a(Ljava/io/Closeable;)V

    .line 50
    invoke-static {v3}, Lcom/flurry/sdk/lr;->a(Ljava/io/Closeable;)V

    goto :goto_9

    .line 45
    :cond_56
    :try_start_56
    invoke-interface {v0, v2}, Lcom/flurry/sdk/kz;->a(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/jb;
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_5c} :catch_8a
    .catchall {:try_start_56 .. :try_end_5c} :catchall_85

    .line 49
    invoke-static {v2}, Lcom/flurry/sdk/lr;->a(Ljava/io/Closeable;)V

    .line 50
    invoke-static {v3}, Lcom/flurry/sdk/lr;->a(Ljava/io/Closeable;)V

    :goto_62
    move-object v1, v0

    .line 53
    goto :goto_9

    .line 46
    :catch_64
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    .line 47
    :goto_67
    const/4 v4, 0x3

    :try_start_68
    sget-object v5, Lcom/flurry/sdk/hn;->a:Ljava/lang/String;

    const-string/jumbo v6, "Error loading legacy agent data."

    invoke-static {v4, v5, v6, v0}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_70
    .catchall {:try_start_68 .. :try_end_70} :catchall_85

    .line 49
    invoke-static {v2}, Lcom/flurry/sdk/lr;->a(Ljava/io/Closeable;)V

    .line 50
    invoke-static {v3}, Lcom/flurry/sdk/lr;->a(Ljava/io/Closeable;)V

    move-object v0, v1

    .line 51
    goto :goto_62

    .line 49
    :catchall_78
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    :goto_7b
    invoke-static {v2}, Lcom/flurry/sdk/lr;->a(Ljava/io/Closeable;)V

    .line 50
    invoke-static {v3}, Lcom/flurry/sdk/lr;->a(Ljava/io/Closeable;)V

    throw v0

    .line 49
    :catchall_82
    move-exception v0

    move-object v2, v1

    goto :goto_7b

    :catchall_85
    move-exception v0

    goto :goto_7b

    .line 46
    :catch_87
    move-exception v0

    move-object v2, v1

    goto :goto_67

    :catch_8a
    move-exception v0

    goto :goto_67
.end method
