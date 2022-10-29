.class final Lcom/bumptech/glide/load/engine/DecodeJob$SourceWriter;
.super Ljava/lang/Object;
.source "DecodeJob.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/cache/DiskCache$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/DecodeJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SourceWriter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DataType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/engine/cache/DiskCache$Writer;"
    }
.end annotation


# instance fields
.field private final data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TDataType;"
        }
    .end annotation
.end field

.field private final encoder:Lcom/bumptech/glide/load/Encoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/Encoder",
            "<TDataType;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/bumptech/glide/load/engine/DecodeJob;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/DecodeJob;Lcom/bumptech/glide/load/Encoder;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Encoder",
            "<TDataType;>;TDataType;)V"
        }
    .end annotation

    .prologue
    .line 259
    .local p0, "this":Lcom/bumptech/glide/load/engine/DecodeJob$SourceWriter;, "Lcom/bumptech/glide/load/engine/DecodeJob<TA;TT;TZ;>.SourceWriter<TDataType;>;"
    .local p2, "encoder":Lcom/bumptech/glide/load/Encoder;, "Lcom/bumptech/glide/load/Encoder<TDataType;>;"
    .local p3, "data":Ljava/lang/Object;, "TDataType;"
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/DecodeJob$SourceWriter;->this$0:Lcom/bumptech/glide/load/engine/DecodeJob;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/DecodeJob$SourceWriter;->encoder:Lcom/bumptech/glide/load/Encoder;

    .line 261
    iput-object p3, p0, Lcom/bumptech/glide/load/engine/DecodeJob$SourceWriter;->data:Ljava/lang/Object;

    .line 262
    return-void
.end method


# virtual methods
.method public final write(Ljava/io/File;)Z
    .registers 7
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 266
    .local p0, "this":Lcom/bumptech/glide/load/engine/DecodeJob$SourceWriter;, "Lcom/bumptech/glide/load/engine/DecodeJob<TA;TT;TZ;>.SourceWriter<TDataType;>;"
    const/4 v2, 0x0

    .line 267
    .local v2, "success":Z
    const/4 v0, 0x0

    .line 269
    .local v0, "os":Ljava/io/OutputStream;
    :try_start_2
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/DecodeJob$SourceWriter;->this$0:Lcom/bumptech/glide/load/engine/DecodeJob;

    # getter for: Lcom/bumptech/glide/load/engine/DecodeJob;->fileOpener:Lcom/bumptech/glide/load/engine/DecodeJob$FileOpener;
    invoke-static {v3}, Lcom/bumptech/glide/load/engine/DecodeJob;->access$000(Lcom/bumptech/glide/load/engine/DecodeJob;)Lcom/bumptech/glide/load/engine/DecodeJob$FileOpener;

    .line 1294
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_11
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_11} :catch_21
    .catchall {:try_start_2 .. :try_end_11} :catchall_31

    .line 270
    .end local v0    # "os":Ljava/io/OutputStream;
    .local v1, "os":Ljava/io/OutputStream;
    :try_start_11
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/DecodeJob$SourceWriter;->encoder:Lcom/bumptech/glide/load/Encoder;

    iget-object v4, p0, Lcom/bumptech/glide/load/engine/DecodeJob$SourceWriter;->data:Ljava/lang/Object;

    invoke-interface {v3, v4, v1}, Lcom/bumptech/glide/load/Encoder;->encode(Ljava/lang/Object;Ljava/io/OutputStream;)Z
    :try_end_18
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_18} :catch_3d
    .catchall {:try_start_11 .. :try_end_18} :catchall_3a

    move-result v2

    .line 278
    :try_start_19
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1c} :catch_1e

    move-object v0, v1

    .line 284
    .end local v1    # "os":Ljava/io/OutputStream;
    .restart local v0    # "os":Ljava/io/OutputStream;
    :cond_1d
    :goto_1d
    return v2

    .line 281
    .end local v0    # "os":Ljava/io/OutputStream;
    .restart local v1    # "os":Ljava/io/OutputStream;
    :catch_1e
    move-exception v3

    move-object v0, v1

    .end local v1    # "os":Ljava/io/OutputStream;
    .restart local v0    # "os":Ljava/io/OutputStream;
    goto :goto_1d

    .line 272
    :catch_21
    move-exception v3

    :goto_22
    :try_start_22
    const-string/jumbo v3, "DecodeJob"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z
    :try_end_29
    .catchall {:try_start_22 .. :try_end_29} :catchall_31

    .line 276
    if-eqz v0, :cond_1d

    .line 278
    :try_start_2b
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2e} :catch_2f

    goto :goto_1d

    .line 281
    :catch_2f
    move-exception v3

    goto :goto_1d

    .line 276
    :catchall_31
    move-exception v3

    :goto_32
    if-eqz v0, :cond_37

    .line 278
    :try_start_34
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_38

    .line 281
    :cond_37
    :goto_37
    throw v3

    :catch_38
    move-exception v4

    goto :goto_37

    .line 276
    .end local v0    # "os":Ljava/io/OutputStream;
    .restart local v1    # "os":Ljava/io/OutputStream;
    :catchall_3a
    move-exception v3

    move-object v0, v1

    .end local v1    # "os":Ljava/io/OutputStream;
    .restart local v0    # "os":Ljava/io/OutputStream;
    goto :goto_32

    .line 272
    .end local v0    # "os":Ljava/io/OutputStream;
    .restart local v1    # "os":Ljava/io/OutputStream;
    :catch_3d
    move-exception v3

    move-object v0, v1

    .end local v1    # "os":Ljava/io/OutputStream;
    .restart local v0    # "os":Ljava/io/OutputStream;
    goto :goto_22
.end method
