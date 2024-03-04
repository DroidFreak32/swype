.class public interface abstract Lorg/apache/james/mime4j/ContentHandler;
.super Ljava/lang/Object;
.source "ContentHandler.java"


# virtual methods
.method public abstract body(Lorg/apache/james/mime4j/BodyDescriptor;Ljava/io/InputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract endBodyPart()V
.end method

.method public abstract endHeader()V
.end method

.method public abstract endMessage()V
.end method

.method public abstract endMultipart()V
.end method

.method public abstract epilogue(Ljava/io/InputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract field(Ljava/lang/String;)V
.end method

.method public abstract preamble(Ljava/io/InputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract startBodyPart()V
.end method

.method public abstract startHeader()V
.end method

.method public abstract startMessage()V
.end method

.method public abstract startMultipart(Lorg/apache/james/mime4j/BodyDescriptor;)V
.end method
