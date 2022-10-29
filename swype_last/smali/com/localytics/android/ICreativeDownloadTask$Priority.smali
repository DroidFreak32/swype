.class public final enum Lcom/localytics/android/ICreativeDownloadTask$Priority;
.super Ljava/lang/Enum;
.source "ICreativeDownloadTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/localytics/android/ICreativeDownloadTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Priority"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/localytics/android/ICreativeDownloadTask$Priority;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/localytics/android/ICreativeDownloadTask$Priority;

.field public static final enum HIGH:Lcom/localytics/android/ICreativeDownloadTask$Priority;

.field public static final enum NORMAL:Lcom/localytics/android/ICreativeDownloadTask$Priority;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 10
    new-instance v0, Lcom/localytics/android/ICreativeDownloadTask$Priority;

    const-string/jumbo v1, "NORMAL"

    invoke-direct {v0, v1, v2}, Lcom/localytics/android/ICreativeDownloadTask$Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/localytics/android/ICreativeDownloadTask$Priority;->NORMAL:Lcom/localytics/android/ICreativeDownloadTask$Priority;

    new-instance v0, Lcom/localytics/android/ICreativeDownloadTask$Priority;

    const-string/jumbo v1, "HIGH"

    invoke-direct {v0, v1, v3}, Lcom/localytics/android/ICreativeDownloadTask$Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/localytics/android/ICreativeDownloadTask$Priority;->HIGH:Lcom/localytics/android/ICreativeDownloadTask$Priority;

    .line 9
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/localytics/android/ICreativeDownloadTask$Priority;

    sget-object v1, Lcom/localytics/android/ICreativeDownloadTask$Priority;->NORMAL:Lcom/localytics/android/ICreativeDownloadTask$Priority;

    aput-object v1, v0, v2

    sget-object v1, Lcom/localytics/android/ICreativeDownloadTask$Priority;->HIGH:Lcom/localytics/android/ICreativeDownloadTask$Priority;

    aput-object v1, v0, v3

    sput-object v0, Lcom/localytics/android/ICreativeDownloadTask$Priority;->$VALUES:[Lcom/localytics/android/ICreativeDownloadTask$Priority;

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
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/localytics/android/ICreativeDownloadTask$Priority;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 9
    const-class v0, Lcom/localytics/android/ICreativeDownloadTask$Priority;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/localytics/android/ICreativeDownloadTask$Priority;

    return-object v0
.end method

.method public static values()[Lcom/localytics/android/ICreativeDownloadTask$Priority;
    .registers 1

    .prologue
    .line 9
    sget-object v0, Lcom/localytics/android/ICreativeDownloadTask$Priority;->$VALUES:[Lcom/localytics/android/ICreativeDownloadTask$Priority;

    invoke-virtual {v0}, [Lcom/localytics/android/ICreativeDownloadTask$Priority;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/localytics/android/ICreativeDownloadTask$Priority;

    return-object v0
.end method
