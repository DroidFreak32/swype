.class public final enum Lcom/google/api/client/googleapis/media/MediaHttpDownloader$DownloadState;
.super Ljava/lang/Enum;
.source "MediaHttpDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/googleapis/media/MediaHttpDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DownloadState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/api/client/googleapis/media/MediaHttpDownloader$DownloadState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/api/client/googleapis/media/MediaHttpDownloader$DownloadState;

.field public static final enum MEDIA_COMPLETE:Lcom/google/api/client/googleapis/media/MediaHttpDownloader$DownloadState;

.field public static final enum MEDIA_IN_PROGRESS:Lcom/google/api/client/googleapis/media/MediaHttpDownloader$DownloadState;

.field public static final enum NOT_STARTED:Lcom/google/api/client/googleapis/media/MediaHttpDownloader$DownloadState;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 65
    new-instance v0, Lcom/google/api/client/googleapis/media/MediaHttpDownloader$DownloadState;

    const-string/jumbo v1, "NOT_STARTED"

    invoke-direct {v0, v1, v2}, Lcom/google/api/client/googleapis/media/MediaHttpDownloader$DownloadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/api/client/googleapis/media/MediaHttpDownloader$DownloadState;->NOT_STARTED:Lcom/google/api/client/googleapis/media/MediaHttpDownloader$DownloadState;

    .line 68
    new-instance v0, Lcom/google/api/client/googleapis/media/MediaHttpDownloader$DownloadState;

    const-string/jumbo v1, "MEDIA_IN_PROGRESS"

    invoke-direct {v0, v1, v3}, Lcom/google/api/client/googleapis/media/MediaHttpDownloader$DownloadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/api/client/googleapis/media/MediaHttpDownloader$DownloadState;->MEDIA_IN_PROGRESS:Lcom/google/api/client/googleapis/media/MediaHttpDownloader$DownloadState;

    .line 71
    new-instance v0, Lcom/google/api/client/googleapis/media/MediaHttpDownloader$DownloadState;

    const-string/jumbo v1, "MEDIA_COMPLETE"

    invoke-direct {v0, v1, v4}, Lcom/google/api/client/googleapis/media/MediaHttpDownloader$DownloadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/api/client/googleapis/media/MediaHttpDownloader$DownloadState;->MEDIA_COMPLETE:Lcom/google/api/client/googleapis/media/MediaHttpDownloader$DownloadState;

    .line 63
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/api/client/googleapis/media/MediaHttpDownloader$DownloadState;

    sget-object v1, Lcom/google/api/client/googleapis/media/MediaHttpDownloader$DownloadState;->NOT_STARTED:Lcom/google/api/client/googleapis/media/MediaHttpDownloader$DownloadState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/api/client/googleapis/media/MediaHttpDownloader$DownloadState;->MEDIA_IN_PROGRESS:Lcom/google/api/client/googleapis/media/MediaHttpDownloader$DownloadState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/api/client/googleapis/media/MediaHttpDownloader$DownloadState;->MEDIA_COMPLETE:Lcom/google/api/client/googleapis/media/MediaHttpDownloader$DownloadState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/api/client/googleapis/media/MediaHttpDownloader$DownloadState;->$VALUES:[Lcom/google/api/client/googleapis/media/MediaHttpDownloader$DownloadState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/api/client/googleapis/media/MediaHttpDownloader$DownloadState;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 63
    const-class v0, Lcom/google/api/client/googleapis/media/MediaHttpDownloader$DownloadState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/googleapis/media/MediaHttpDownloader$DownloadState;

    return-object v0
.end method

.method public static values()[Lcom/google/api/client/googleapis/media/MediaHttpDownloader$DownloadState;
    .registers 1

    .prologue
    .line 63
    sget-object v0, Lcom/google/api/client/googleapis/media/MediaHttpDownloader$DownloadState;->$VALUES:[Lcom/google/api/client/googleapis/media/MediaHttpDownloader$DownloadState;

    invoke-virtual {v0}, [Lcom/google/api/client/googleapis/media/MediaHttpDownloader$DownloadState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/api/client/googleapis/media/MediaHttpDownloader$DownloadState;

    return-object v0
.end method
