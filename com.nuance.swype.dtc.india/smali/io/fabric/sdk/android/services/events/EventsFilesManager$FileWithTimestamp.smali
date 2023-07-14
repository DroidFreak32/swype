.class final Lio/fabric/sdk/android/services/events/EventsFilesManager$FileWithTimestamp;
.super Ljava/lang/Object;
.source "EventsFilesManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/fabric/sdk/android/services/events/EventsFilesManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FileWithTimestamp"
.end annotation


# instance fields
.field final file:Ljava/io/File;

.field final timestamp:J


# direct methods
.method public constructor <init>(Ljava/io/File;J)V
    .locals 0
    .param p1, "file"    # Ljava/io/File;
    .param p2, "timestamp"    # J

    .prologue
    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    iput-object p1, p0, Lio/fabric/sdk/android/services/events/EventsFilesManager$FileWithTimestamp;->file:Ljava/io/File;

    .line 225
    iput-wide p2, p0, Lio/fabric/sdk/android/services/events/EventsFilesManager$FileWithTimestamp;->timestamp:J

    .line 226
    return-void
.end method
