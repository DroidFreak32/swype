.class public interface abstract Lio/fabric/sdk/android/services/events/EventsStorage;
.super Ljava/lang/Object;
.source "EventsStorage.java"


# virtual methods
.method public abstract add([B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract canWorkingFileStore(II)Z
.end method

.method public abstract deleteFilesInRollOverDirectory(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract deleteWorkingFile()V
.end method

.method public abstract getAllFilesInRollOverDirectory()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getBatchOfFilesToSend$22f3aa59()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getWorkingFileUsedSizeInBytes()I
.end method

.method public abstract isWorkingFileEmpty()Z
.end method

.method public abstract rollOver(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
