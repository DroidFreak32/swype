.class final Lio/fabric/sdk/android/services/common/QueueFile$1;
.super Ljava/lang/Object;
.source "QueueFile.java"

# interfaces
.implements Lio/fabric/sdk/android/services/common/QueueFile$ElementReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/fabric/sdk/android/services/common/QueueFile;->toString()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field first:Z

.field final synthetic this$0:Lio/fabric/sdk/android/services/common/QueueFile;

.field final synthetic val$builder:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>(Lio/fabric/sdk/android/services/common/QueueFile;Ljava/lang/StringBuilder;)V
    .registers 4

    .prologue
    .line 546
    iput-object p1, p0, Lio/fabric/sdk/android/services/common/QueueFile$1;->this$0:Lio/fabric/sdk/android/services/common/QueueFile;

    iput-object p2, p0, Lio/fabric/sdk/android/services/common/QueueFile$1;->val$builder:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 547
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/fabric/sdk/android/services/common/QueueFile$1;->first:Z

    return-void
.end method


# virtual methods
.method public final read(Ljava/io/InputStream;I)V
    .registers 5
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 551
    iget-boolean v0, p0, Lio/fabric/sdk/android/services/common/QueueFile$1;->first:Z

    if-eqz v0, :cond_d

    .line 552
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/fabric/sdk/android/services/common/QueueFile$1;->first:Z

    .line 556
    :goto_7
    iget-object v0, p0, Lio/fabric/sdk/android/services/common/QueueFile$1;->val$builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 557
    return-void

    .line 554
    :cond_d
    iget-object v0, p0, Lio/fabric/sdk/android/services/common/QueueFile$1;->val$builder:Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7
.end method
