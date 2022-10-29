.class public final Lcom/bumptech/glide/load/model/ImageVideoWrapperEncoder;
.super Ljava/lang/Object;
.source "ImageVideoWrapperEncoder.java"

# interfaces
.implements Lcom/bumptech/glide/load/Encoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/Encoder",
        "<",
        "Lcom/bumptech/glide/load/model/ImageVideoWrapper;",
        ">;"
    }
.end annotation


# instance fields
.field private final fileDescriptorEncoder:Lcom/bumptech/glide/load/Encoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/Encoder",
            "<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private id:Ljava/lang/String;

.field private final streamEncoder:Lcom/bumptech/glide/load/Encoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/Encoder",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/Encoder;Lcom/bumptech/glide/load/Encoder;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Encoder",
            "<",
            "Ljava/io/InputStream;",
            ">;",
            "Lcom/bumptech/glide/load/Encoder",
            "<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p1, "streamEncoder":Lcom/bumptech/glide/load/Encoder;, "Lcom/bumptech/glide/load/Encoder<Ljava/io/InputStream;>;"
    .local p2, "fileDescriptorEncoder":Lcom/bumptech/glide/load/Encoder;, "Lcom/bumptech/glide/load/Encoder<Landroid/os/ParcelFileDescriptor;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/bumptech/glide/load/model/ImageVideoWrapperEncoder;->streamEncoder:Lcom/bumptech/glide/load/Encoder;

    .line 23
    iput-object p2, p0, Lcom/bumptech/glide/load/model/ImageVideoWrapperEncoder;->fileDescriptorEncoder:Lcom/bumptech/glide/load/Encoder;

    .line 24
    return-void
.end method


# virtual methods
.method public final bridge synthetic encode(Ljava/lang/Object;Ljava/io/OutputStream;)Z
    .registers 5
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/io/OutputStream;

    .prologue
    .line 15
    check-cast p1, Lcom/bumptech/glide/load/model/ImageVideoWrapper;

    .line 2020
    .end local p1    # "x0":Ljava/lang/Object;
    iget-object v0, p1, Lcom/bumptech/glide/load/model/ImageVideoWrapper;->streamData:Ljava/io/InputStream;

    .line 1028
    if-eqz v0, :cond_f

    .line 1029
    iget-object v0, p0, Lcom/bumptech/glide/load/model/ImageVideoWrapperEncoder;->streamEncoder:Lcom/bumptech/glide/load/Encoder;

    .line 3020
    iget-object v1, p1, Lcom/bumptech/glide/load/model/ImageVideoWrapper;->streamData:Ljava/io/InputStream;

    .line 1029
    invoke-interface {v0, v1, p2}, Lcom/bumptech/glide/load/Encoder;->encode(Ljava/lang/Object;Ljava/io/OutputStream;)Z

    move-result v0

    :goto_e
    return v0

    .line 1031
    :cond_f
    iget-object v0, p0, Lcom/bumptech/glide/load/model/ImageVideoWrapperEncoder;->fileDescriptorEncoder:Lcom/bumptech/glide/load/Encoder;

    .line 3024
    iget-object v1, p1, Lcom/bumptech/glide/load/model/ImageVideoWrapper;->fileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 1031
    invoke-interface {v0, v1, p2}, Lcom/bumptech/glide/load/Encoder;->encode(Ljava/lang/Object;Ljava/io/OutputStream;)Z

    move-result v0

    goto :goto_e
.end method

.method public final getId()Ljava/lang/String;
    .registers 3

    .prologue
    .line 37
    iget-object v0, p0, Lcom/bumptech/glide/load/model/ImageVideoWrapperEncoder;->id:Ljava/lang/String;

    if-nez v0, :cond_23

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/bumptech/glide/load/model/ImageVideoWrapperEncoder;->streamEncoder:Lcom/bumptech/glide/load/Encoder;

    invoke-interface {v1}, Lcom/bumptech/glide/load/Encoder;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/load/model/ImageVideoWrapperEncoder;->fileDescriptorEncoder:Lcom/bumptech/glide/load/Encoder;

    invoke-interface {v1}, Lcom/bumptech/glide/load/Encoder;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/model/ImageVideoWrapperEncoder;->id:Ljava/lang/String;

    .line 40
    :cond_23
    iget-object v0, p0, Lcom/bumptech/glide/load/model/ImageVideoWrapperEncoder;->id:Ljava/lang/String;

    return-object v0
.end method
